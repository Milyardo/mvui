local U = unpack(select(2,...))
local s = U.s
local c = U.c

local function LoadSkin()
	LoadAddOn("TellMeWhen_Options")
	if (not U.CheckOption("TellMeWhenSkin")) then return end
	TellMeWhen_IconEditorMain:StripTextures()
	TellMeWhen_IconEditorConditions:StripTextures()
		
	U.SkinFrameD(TellMeWhen_IconEditor)
	U.SkinFrame(TellMeWhen_IconEditorMainOptions)
	
	U.SkinButton(TellMeWhen_IconEditorReset, true)
	U.SkinButton(TellMeWhen_IconEditorUndo, true)
	U.SkinButton(TellMeWhen_IconEditorRedo, true)

	U.SkinTab(TellMeWhen_IconEditorTab1)
	U.SkinTab(TellMeWhen_IconEditorTab2)
	U.SkinTab(TellMeWhen_IconEditorTab3)
	U.SkinTab(TellMeWhen_IconEditorTab4)
	U.SkinTab(TellMeWhen_IconEditorTab5)

	U.SkinButton(TellMeWhen_IconEditorOkay, true)
	U.SkinCloseButton(TellMeWhen_IconEditorClose, true)
	
	U.SkinFrame(TellMeWhen_ConfigWarning)
	U.SkinButton(TellMeWhen_ConfigWarningExit, true)
	U.SkinButton(TellMeWhen_ConfigWarningNeverAgain, true)
	U.SkinFrameD(TellMeWhen_IconEditorSuggest)
	
	TellMeWhen_IconEditorTab1:ClearAllPoints()
	TellMeWhen_IconEditorTab2:ClearAllPoints()
	TellMeWhen_IconEditorTab3:ClearAllPoints()
	TellMeWhen_IconEditorTab4:ClearAllPoints()
	TellMeWhen_IconEditorTab5:ClearAllPoints()
	
	TellMeWhen_IconEditorTab1:Point("TOPLEFT", TellMeWhen_IconEditorMain, "BOTTOMLEFT", 0, -24)
	TellMeWhen_IconEditorTab2:Point("LEFT", TellMeWhen_IconEditorTab1, "RIGHT", -19, 0)
	TellMeWhen_IconEditorTab3:Point("LEFT", TellMeWhen_IconEditorTab2, "RIGHT", -19, 0)
	TellMeWhen_IconEditorTab4:Point("LEFT", TellMeWhen_IconEditorTab3, "RIGHT", -19, 0)
	TellMeWhen_IconEditorTab5:Point("LEFT", TellMeWhen_IconEditorTab4, "RIGHT", -19, 0)
	
	U.SkinCheckBox(TellMeWhen_IconEditorEventsEventSettingsPassThrough)
	U.SkinCheckBox(TellMeWhen_IconEditorEventsEventSettingsOnlyShown)
end

s.SkinFuncs["TellMeWhen_Options"] = LoadSkin