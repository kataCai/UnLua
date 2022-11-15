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
     print("BP_Animation_C BlueprintUpdateAnimation")
 end


return M
