local U = unpack(select(2,...))
local s = U.s
local c = U.c
local name = "MinimalArchaeologySkin"
local function SkinMinimalArchaeology(self)
	UIFont = c["media"].pixelfont
	UIFontSize = 12
	U.SkinFrame(MinArchMain)
	U.SkinStatusBar(MinArchMainSkillBar)
	MinArchMainSkillBar:Point("TOP", MinArchMain, "TOP", 2, -24)
	MinArchMainSkillBar:Width(253)

	U.Desaturate(MinArchMainButtonOpenADI)
	U.Desaturate(MinArchMainButtonOpenHist)
	U.Desaturate(MinArchMainButtonOpenArch)
	U.SkinCloseButton(MinArchMainButtonClose)
	MinArchMainButtonOpenADI:Point("TOPRIGHT", MinArchMain, "TOPRIGHT", -66, -1)
	MinArchMainButtonOpenHist:Point("TOPRIGHT", MinArchMain, "TOPRIGHT", -46, -1)
	MinArchMainButtonOpenArch:Point("TOPRIGHT", MinArchMain, "TOPRIGHT", -26, -1)
	MinArchMainButtonClose:Point("TOPRIGHT", MinArchMain, "TOPRIGHT", 2, 2)

	U.SkinFrame(MinArchDigsites)
	U.SkinCloseButton(MinArchDigsitesButtonClose)

	U.SkinFrame(MinArchHist)
	U.SkinCloseButton(MinArchHistButtonClose)

	for i = 1, 11 do
		U.SkinStatusBar(_G["MinArchMainArtifactBar"..i])
		_G["MinArchMainArtifactBar"..i]:SetStatusBarColor(1.0, 0.4, 0)
		U.SkinButton(_G["MinArchMainArtifactBar"..i.."ButtonSolve"])
		_G["MinArchMainArtifactBar"..i.."ButtonSolve"]:SetHeight(17)
		_G["MinArchMainArtifactBar"..i.."ButtonSolve"]:SetPoint("TOPLEFT", _G["MinArchMainArtifactBar"..i], "TOPRIGHT", 5, 2)
		--Min Arch Options
		U.SkinCheckBox(_G["MinArchOptionPanelHideArtifact"..i])
		U.SkinCheckBox(_G["MinArchOptionPanelFragmentCap"..i])
		if _G["MinArchOptionPanelUseKeystones"..i] then U.SkinCheckBox(_G["MinArchOptionPanelUseKeystones"..i]) end
	end

	local checkbox = {
		MinArchOptionPanelMiscOptionsHideMinimap,
		MinArchOptionPanelMiscOptionsDisableSound,
		MinArchOptionPanelMiscOptionsStartHidden,
		MinArchOptionPanelMiscOptionsHideAfter,
		MinArchOptionPanelMiscOptionsWaitForSolve,
	}

	for _,boxes in pairs(checkbox) do
		U.SkinCheckBox(boxes)
	end

	U.SkinSlideBar(MinArchOptionPanelFrameScaleSlider)
	MinArchOptionPanelFrameScaleSliderLow:ClearAllPoints()
	MinArchOptionPanelFrameScaleSliderLow:SetPoint("BOTTOMLEFT", MinArchOptionPanelFrameScale, "BOTTOMLEFT", 3, 3)
	MinArchOptionPanelFrameScaleSliderHigh:ClearAllPoints()
	MinArchOptionPanelFrameScaleSliderHigh:SetPoint("BOTTOMRIGHT", MinArchOptionPanelFrameScale, "BOTTOMRIGHT", -3, 3)

	U.SkinFrameD(MinArchMainButtonOpenADI)
	MinArchMainButtonOpenADI:SetNormalTexture("")
	MinArchMainButtonOpenADI:SetPushedTexture("")
	MinArchMainButtonOpenADI:SetHighlightTexture("")
	MinArchMainButtonOpenADI:SetSize(14, 14)
	MinArchMainButtonOpenADI:ClearAllPoints()

	U.SkinFrameD(MinArchMainButtonOpenHist)
	MinArchMainButtonOpenHist:SetNormalTexture("")
	MinArchMainButtonOpenHist:SetPushedTexture("")
	MinArchMainButtonOpenHist:SetHighlightTexture("")
	MinArchMainButtonOpenHist:SetSize(14, 14)
	MinArchMainButtonOpenHist:ClearAllPoints()

	U.SkinFrameD(MinArchMainButtonOpenArch)
	MinArchMainButtonOpenArch:SetNormalTexture("")
	MinArchMainButtonOpenArch:SetPushedTexture("")
	MinArchMainButtonOpenArch:SetHighlightTexture("")
	MinArchMainButtonOpenArch:SetSize(14, 14)
	MinArchMainButtonOpenArch:ClearAllPoints()

	MinArchMainButtonOpenArch.text = MinArchMainButtonOpenArch:CreateFontString(nil, "OVERLAY")
	MinArchMainButtonOpenArch.text:SetFont(UIFont, UIFontSize, "OUTLINE")
	MinArchMainButtonOpenArch.text:SetPoint("CENTER", 2, 1)
	MinArchMainButtonOpenArch.text:SetText("A")
	MinArchMainButtonOpenHist.text = MinArchMainButtonOpenHist:CreateFontString(nil, "OVERLAY")
	MinArchMainButtonOpenHist.text:SetFont(UIFont, UIFontSize, "OUTLINE")
	MinArchMainButtonOpenHist.text:SetPoint("CENTER", 2, 1)
	MinArchMainButtonOpenHist.text:SetText("H")
	MinArchMainButtonOpenADI.text = MinArchMainButtonOpenADI:CreateFontString(nil, "OVERLAY")
	MinArchMainButtonOpenADI.text:SetFont(UIFont, UIFontSize, "OUTLINE")
	MinArchMainButtonOpenADI.text:SetPoint("CENTER", 2, 1)
	MinArchMainButtonOpenADI.text:SetText("D")

	MinArchMainButtonOpenADI:Point("RIGHT", MinArchMainButtonOpenHist, "LEFT", -3, 0)
	MinArchMainButtonOpenHist:Point("RIGHT", MinArchMainButtonOpenArch, "LEFT", -3, 0)
	MinArchMainButtonOpenArch:Point("BOTTOMRIGHT", MinArchMain, "BOTTOMRIGHT", -6, 3)

end

U.RegisterSkin(name,SkinMinimalArchaeology)