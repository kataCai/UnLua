--
-- DESCRIPTION
--
-- @COMPANY **
-- @AUTHOR **
-- @DATE ${date} ${time}
--

---@type BP_SomeBody_C
local M = UnLua.Class()


 function M:ReceiveBeginPlay()
     print("BP_SomeBody begin play")
     self.SkeletalMesh:Play(true)
 end

return M
