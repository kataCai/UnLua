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
     self.Overridden.BlueprintBeginPlay(self)
     print("BP_Animation_C BlueprintBeginPlay")
 end

 function M:BlueprintUpdateAnimation(DeltaTimeX)
     local editableCharacterObject = self:GetOwningActor()
     local actorClass = UE.UObject.GetClass(editableCharacterObject)
     local editableCharacterClass = UE.UClass.Load('/Game/Core/Blueprints/BP_SomeBody.BP_SomeBody')
     if actorClass:IsChildOf(editableCharacterClass) then
         -- 增加右手碰撞体
         self.LeftArmCapsules:Add("right_elbow", editableCharacterObject.RightLowArmCapsule)
     else
         print("Cast To BP_EditableCharacter Failed")
     end

 end


return M
