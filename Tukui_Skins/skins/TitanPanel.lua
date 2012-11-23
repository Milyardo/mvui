local U = unpack(select(2,...))
local function SetEnabled(self, event, ...) 
		if TPBar2and3Position == nil then
			x = WorldFrame:GetWidth()/5 
		else
			x = TPBar2and3Position
		end

		local y = Titan_Bar__Display_Bar:GetHeight() + Titan_Bar__Display_Bar2:GetHeight()/2 + 1

				Titan_Bar__Display_Bar2:ClearAllPoints()
				Titan_Bar__Display_Bar2:SetPoint("TOPRIGHT", WorldFrame, "TOP", -x, -y)
				Titan_Bar__Display_AuxBar2:ClearAllPoints()
				Titan_Bar__Display_AuxBar2:SetPoint("TOPLEFT", WorldFrame, "TOP", x, -y)		
end

local name = "TitanPanelSkin"
local function SkinTitanPanel(self)
local T = unpack(Tukui)
		if TPBar2and3Width == nil then TPBar2and3Width = 125 end 
		if TPBar2and3Position == nil then TPBar2and3Position = WorldFrame:GetWidth()/5 end

		U.SkinFrameD(Titan_Bar__Display_Bar)
		U.SkinFrameD(Titan_Bar__Display_Bar2)
		U.SkinFrameD(Titan_Bar__Display_AuxBar)
		U.SkinFrameD(Titan_Bar__Display_AuxBar2)

		local TP_Skin_OptionsFrame = CreateFrame("FRAME", "TP_Skin_OptionsFrame", UIParent)
		TP_Skin_OptionsFrame:SetMovable(true)
		TP_Skin_OptionsFrame:EnableMouse(true)
		TP_Skin_OptionsFrame:RegisterForDrag("LeftButton")
		TP_Skin_OptionsFrame:SetScript("OnDragStart", TP_Skin_OptionsFrame.StartMoving)
		TP_Skin_OptionsFrame:SetScript("OnDragStop", TP_Skin_OptionsFrame.StopMovingOrSizing)
		TP_Skin_OptionsFrame:SetSize(250,250)
		TP_Skin_OptionsFrame:SetPoint("CENTER", UIParent, "CENTER")
		U.SkinFrame(TP_Skin_OptionsFrame)
		TP_Skin_OptionsFrame:Hide()

		TP_Skin_OptionsFrame.Title = TP_Skin_OptionsFrame:CreateFontString(nil, 'OVERLAY')
		TP_Skin_OptionsFrame.Title:SetFont([[Interface\AddOns\Tukui\medias\fonts\normal_font.ttf]], 17, nil)
		TP_Skin_OptionsFrame.Title:SetPoint("TOP", 0, -5)
		TP_Skin_OptionsFrame.Title:SetText("Titan Panel Skin Options")
		TP_Skin_OptionsFrame.Title:SetTextColor(23/255, 132/255, 209/255)

		TP_Skin_OptionsFrame.btn2 = CreateFrame("BUTTON", "TP_Skin_CancelButton", TP_Skin_OptionsFrame, "UIPanelButtonTemplate")
		TP_Skin_OptionsFrame.btn2:SetWidth(80)
		TP_Skin_OptionsFrame.btn2:SetHeight(22)
		TP_Skin_OptionsFrame.btn2:SetText("Close")
		TP_Skin_OptionsFrame.btn2:SetPoint("BOTTOMRIGHT", TP_Skin_OptionsFrame, "BOTTOMRIGHT", -10, 10)
		TP_Skin_OptionsFrame.btn2:SetScript("OnClick", function() TP_Skin_OptionsFrame:Hide() end)
		TP_Skin_OptionsFrame.btn2:SetAlpha(1)
		TP_Skin_OptionsFrame.btn2:Show()

		TP_Skin_OptionsFrame.btn = CreateFrame("BUTTON", "TP_Skin_ReloadUIButton", TP_Skin_OptionsFrame, "UIPanelButtonTemplate")
		TP_Skin_OptionsFrame.btn:SetWidth(80)
		TP_Skin_OptionsFrame.btn:SetHeight(22)
		TP_Skin_OptionsFrame.btn:SetText("Reload")
		TP_Skin_OptionsFrame.btn:SetPoint("RIGHT", TP_Skin_CancelButton, "LEFT", -10, 0)
		TP_Skin_OptionsFrame.btn:SetScript("OnClick", function() ReloadUI() end)
		TP_Skin_OptionsFrame.btn:SetAlpha(1)
		TP_Skin_OptionsFrame.btn:Show()

		U.SkinButton(TP_Skin_OptionsFrame.btn)
		U.SkinButton(TP_Skin_OptionsFrame.btn2)

	local EnableBars = CreateFrame("CheckButton", "tpskin_checkbox", TP_Skin_OptionsFrame, "OptionsBaseCheckButtonTemplate")
		EnableBars:SetPoint("TOPLEFT", TP_Skin_OptionsFrame, "TOPLEFT", 16, -35)
		EnableBars.Title = EnableBars:CreateFontString(nil, 'OVERLAY')
		EnableBars.Title:SetFont([[Interface\AddOns\Tukui\medias\fonts\normal_font.ttf]], 12, nil)
		EnableBars.Title:SetPoint("LEFT", EnableBars, "RIGHT", 5, 0)
		EnableBars.Title:SetText("Enable Top Bar 2 and Bottom Bar 2 at top")
		U.SkinCheckBox(EnableBars)
		EnableBars:SetScript("OnClick" or "OnUpdate", function(frame)
				if frame:GetChecked() then
					if Titan_Bar__Display_Bar2 and Titan_Bar__Display_AuxBar2 then
							TPEnableSpecialBars = true
					else
						DEFAULT_CHAT_FRAME:AddMessage("|cff1784d1ElvUI|r Titan Panel Skin: You need to make sure you have enabled Top 2 and Bottom 2.")
						RaidNotice_AddMessage(RaidWarningFrame, "You need to make sure you have enabled Top 2 and Bottom 2..", ChatTypeInfo["RAID_WARNING"])
					end
				else
					TPEnableSpecialBars = nil
				end
			end)


	TPBar2and3WidthSlider = CreateFrame("Slider", "TPBar2and3WidthSlider", TP_Skin_OptionsFrame, "OptionsSliderTemplate")
	TPBar2and3WidthSlider:SetSize(200, 15)
	TPBar2and3WidthSlider:SetPoint("TOP", TP_Skin_OptionsFrame, "TOP", 0, -100)
	TPBar2and3WidthSlider:SetOrientation("HORIZONTAL")
	TPBar2and3WidthSlider:SetMinMaxValues(100, 300)
	TPBar2and3WidthSlider:SetValueStep(1)
	TPBar2and3WidthSlider:SetValue(TPBar2and3Width)
	TPBar2and3WidthSliderLow:SetText("100")
	TPBar2and3WidthSliderHigh:SetText("300")
	TPBar2and3WidthSliderText:SetText("Set Width of Bar 2 and 3.")
	TPBar2and3WidthSlider:SetScript("OnValueChanged", function(self, value)
		TPBar2and3Width = value
		if TPEnableSpecialBars then
			Titan_Bar__Display_Bar2:SetWidth(TPBar2and3Width)
			Titan_Bar__Display_AuxBar2:SetWidth(TPBar2and3Width)
		end
	end)
	U.SkinSlideBar(TPBar2and3WidthSlider, 10, true)

	TPBar2and3PositionSlider = CreateFrame("Slider", "TPBar2and3PositionSlider", TP_Skin_OptionsFrame, "OptionsSliderTemplate")
	TPBar2and3PositionSlider:SetSize(200, 15)
	TPBar2and3PositionSlider:SetPoint("TOP", TP_Skin_OptionsFrame, "TOP", 0, -150)
	TPBar2and3PositionSlider:SetOrientation("HORIZONTAL")
	TPBar2and3PositionSlider:SetMinMaxValues(10, 800)
	TPBar2and3PositionSlider:SetValueStep(1)
	TPBar2and3PositionSlider:SetValue(TPBar2and3Position)
	TPBar2and3PositionSliderLow:SetText("10")
	TPBar2and3PositionSliderHigh:SetText("800")
	TPBar2and3PositionSliderText:SetText("Set Position from the center of Bar 2 and 3")
	TPBar2and3PositionSlider:SetScript("OnValueChanged", function(self, value)
		TPBar2and3Position = value
		if TPEnableSpecialBars then
			local x = TPBar2and3Position
			local y = Titan_Bar__Display_Bar2:GetHeight() + Titan_Bar__Display_Bar2:GetHeight()/2 + 1
			Titan_Bar__Display_Bar2:SetPoint("TOPRIGHT", WorldFrame, "TOP", -x, -y)
			Titan_Bar__Display_AuxBar2:SetPoint("TOPLEFT", WorldFrame, "TOP", x, -y)
		end
	end)
	U.SkinSlideBar(TPBar2and3PositionSlider, 10, true)

	local tpskin = CreateFrame("Frame", "tpskin", TP_Skin_OptionsFrame)
		tpskin:SetScript("OnUpdate", function()
			if Titan_Bar__Display_Bar2 and Titan_Bar__Display_AuxBar2 then -- Do they really exist!
				tpskin_checkbox:SetChecked(TPEnableSpecialBars)
			else
				tpskin_checkbox:SetChecked(nil)
			end
			if TPBar2and3Width == nil then
				TPBar2and3WidthSlider:SetValue(125)
			else
				TPBar2and3WidthSlider:SetValue(TPBar2and3Width)
			end
			if TPBar2and3Position == nil then
				local x = WorldFrame:GetWidth()/5
				TPBar2and3PositionSlider:SetValue(x)
			else
				TPBar2and3PositionSlider:SetValue(TPBar2and3Position)
			end
	end)

	if TPEnableSpecialBars == true then
		if Titan_Bar__Display_Bar2 and Titan_Bar__Display_AuxBar2 then -- Do they really exist!
		
		if TPBar2and3Position == nil then
			x = WorldFrame:GetWidth()/5 
		else
			x = TPBar2and3Position
		end

		local y = Titan_Bar__Display_Bar:GetHeight() + Titan_Bar__Display_Bar2:GetHeight()/2 + 1

				Titan_Bar__Display_Bar2:SetFrameStrata("FULLSCREEN")-- Sets them above cbBar 1.
				if TPBar2and3Width == nil then 
					Titan_Bar__Display_Bar2:SetWidth(125)
				else
					Titan_Bar__Display_Bar2:SetWidth(TPBar2and3Width)
				end
				Titan_Bar__Display_Bar2:SetHeight(23)
				Titan_Bar__Display_Bar2:ClearAllPoints()
				Titan_Bar__Display_Bar2:SetPoint("TOPRIGHT", WorldFrame, "TOP", -x, -y)
				Titan_Bar__Display_Bar2:CreateShadow("Default")			
				Titan_Bar__Display_AuxBar2:SetFrameStrata("FULLSCREEN")	
				if TPBar2and3Width == nil then 
					Titan_Bar__Display_AuxBar2:SetWidth(125)
				else
					Titan_Bar__Display_AuxBar2:SetWidth(TPBar2and3Width)
				end
				Titan_Bar__Display_AuxBar2:SetHeight(23)
				Titan_Bar__Display_AuxBar2:ClearAllPoints()
				Titan_Bar__Display_AuxBar2:SetPoint("TOPLEFT", WorldFrame, "TOP", x, -y)
				Titan_Bar__Display_AuxBar2:CreateShadow("Default")			

	local x = Titan_Bar__Display_Bar2:GetWidth()/4
		
		cbBar2Left = CreateFrame('Frame', nil, Titan_Bar__Display_Bar2)
		cbBar2Left:Point('BOTTOM', Titan_Bar__Display_Bar2, 'TOP',-x,0)
		cbBar2Left:Width(2)
		cbBar2Left:Height(Titan_Bar__Display_Bar2:GetHeight()/2)
		U.SkinFrameD(cbBar2Left)
		cbBar2Left:SetFrameLevel(Titan_Bar__Display_Bar2:GetFrameLevel())

		cbBar2Right = CreateFrame('Frame', nil, Titan_Bar__Display_Bar2)
		cbBar2Right:Point('BOTTOM', Titan_Bar__Display_Bar2, 'TOP', x,0)
		cbBar2Right:Width(2)
		cbBar2Right:Height(Titan_Bar__Display_Bar2:GetHeight()/2)
		U.SkinFrameD(cbBar2Right)
		cbBar2Right:SetFrameLevel(Titan_Bar__Display_Bar2:GetFrameLevel())

		cbBar3Left = CreateFrame('Frame', nil, Titan_Bar__Display_AuxBar2)
		cbBar3Left:Point('BOTTOM', Titan_Bar__Display_AuxBar2, 'TOP',-x,0)
		cbBar3Left:Width(2)
		cbBar3Left:Height(Titan_Bar__Display_AuxBar2:GetHeight()/2)
		U.SkinFrameD(cbBar3Left)
		cbBar3Left:SetFrameLevel(Titan_Bar__Display_AuxBar2:GetFrameLevel())
		
		cbBar3Right = CreateFrame('Frame', nil, Titan_Bar__Display_AuxBar2)
		cbBar3Right:Point('BOTTOM', Titan_Bar__Display_AuxBar2, 'TOP', x,0)
		cbBar3Right:Width(2)
		cbBar3Right:Height(Titan_Bar__Display_AuxBar2:GetHeight()/2)
		U.SkinFrameD(cbBar3Right)
		cbBar3Right:SetFrameLevel(Titan_Bar__Display_AuxBar2:GetFrameLevel())
	end
		local Enabled = _G["Titan_Bar__Display_AuxBar2"]
		Enabled:SetScript("OnUpdate", SetEnabled)
	end

	SLASH_TPSKIN1, SLASH_TPSKIN2 = '/tpskin', '/tpskin show'
	function SlashCmdList.TPSKIN(msg, editbox)
		TP_Skin_OptionsFrame:Show()
	end
end

U.RegisterSkin(name,SkinTitanPanel)