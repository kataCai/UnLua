---@type UMG_Main_C
local M = UnLua.Class()

function M:Construct()
	self.FirstSceneButton.OnClicked:Add(self, M.OnClicked_FirstSceneButton)
	self.SecondSceneButton.OnClicked:Add(self, M.OnClicked_SecondSceneButton)
end

function M:OnClicked_FirstSceneButton()
	self:ChangeToFirstScene()
end

function M:OnClicked_SecondSceneButton()
	self:ChangeToSecondScene()
end

return M
