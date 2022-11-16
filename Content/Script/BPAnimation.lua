--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

---@type BP_Animation_C
local M = UnLua.Class()


 function M:BlueprintBeginPlay()
     print("BP_Animation_C BlueprintBeginPlay")
     local editableCharacterObject = self:GetOwningActor()
     local actorClass = UE.UObject.GetClass(editableCharacterObject)
     local editableCharacterClass = UE.UClass.Load('/Game/Core/Blueprints/BP_SomeBody.BP_SomeBody')
     if actorClass:IsChildOf(editableCharacterClass) then
         -- 增加右手碰撞体
         self.CharacterBP = editableCharacterObject
         self.LeftArmCapsules:Add("right_elbow", editableCharacterObject.RightLowArmCapsule)
     else
         print("Cast To BP_EditableCharacter Failed")
     end
 end

 function M:BlueprintUpdateAnimation(DeltaTimeX)
     print("BlueprintUpdateAnimation execute")
     local world = UE.UObject.GetWorld(self);
     if not UE.ULuaInvoker.IsObjectValid(self.CharacterBP) then
         print("CharacterBP invalid")
         return
     end
     if self.CharacterBP.EnableCollision then
         self.CollisionAlpha = 1.0
     else
         self.CollisionAlpha = 0.0
     end

     local skeletalRelativeTransform = self.CharacterBP.SkeletalMesh:GetRelativeTransform()
     local characterTransform = UE.ULuaInvoker.GetActorTransform(self.CharacterBP)
     local resultTransform = UE.UKismetMathLibrary.ComposeTransforms(skeletalRelativeTransform, characterTransform);
     self.ActorTrans = resultTransform
 end


return M
