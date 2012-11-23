local U = unpack(select(2,...))
local name = "PoMTrackerSkin"
local function SkinPoMTracker(self)
	local c = U.c

	U.SkinFrame(PoMOptionFrame)
	U.SkinCloseButton(PoMOptionFrame_CloseButton)

	U.SkinBackdropFrame(pomtracker1)
	pomtracker1:Size(85,15)

	pomtracker2:ClearAllPoints()
	pomtracker2:Point("TOP", pomtracker1, "BOTTOM", 0, -5)
	U.SkinBackdropFrame(pomtracker2)

	U.SkinBackdropFrame(pomtracker3)
	pomtracker3:ClearAllPoints()
	pomtracker3:Point("TOP", pomtrackerstatusBar, "BOTTOM", 0, -5)
	pomtracker3:Height(15)

	U.SkinButton(pomtracker3_Button1)

	pomtrackerstatusBar:ClearAllPoints()
	pomtrackerstatusBar:Point("TOP", pomtracker2, "BOTTOM", 0, -5)
	U.SkinStatusBar(pomtrackerstatusBar)

	for i = 1,6 do
		U.SkinCheckBox(_G["PoMOptionFrame_CheckButton"..i])
	end
	pomtracker2:HookScript("OnUpdate", function() pomtrackerstatusBar:Width(pomtracker2:GetWidth()) pomtracker3:Width(pomtracker2:GetWidth()) end)
end

U.RegisterSkin(name,SkinPoMTracker)