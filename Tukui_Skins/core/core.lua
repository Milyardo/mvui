-- Camealion's Functions File
-- Added ccolor for class coloring. - Azilroka
-- Restructured Functions file. - Azilroka
-- Added Skinning features for ease of skinning and smaller size skins. - Azilroka

local U = unpack(select(2,...))
local s = U.s
local c = U.c

function cColorSwitch()
	for k, v in pairs(U.ColorBackdrop) do cUpdateColor(v) end
	for k, v in pairs(U.ColorFrame) do cUpdateColor(v) end
	for k, v in pairs(U.ColorScroll) do cColorScrollBar(v) end
	for k, v in pairs(U.ColorSlider) do cColorSlideBar(v) end
	ColorTukui()
	GameTooltip:HookScript("OnUpdate", function(self) cUpdateColor(self) end)
	if IsAddOnLoaded("SpecSwitcher") then
		cUpdateColor(SpecTalent)
		cUpdateColor(SpecTalentBackdrop)
	end
	if IsAddOnLoaded("Tukui_BuffsNotice") then
		if TukuiBuffsWarningFrame then cUpdateColor(TukuiBuffsWarningFrame) end
		if TukuiBuffsWarningFrame2 then cUpdateColor(TukuiBuffsWarningFrame2) end
		if TukuiEnchantsWarningFrame then cUpdateColor(TukuiEnchantsWarningFrame) end
	end
end

function cUpdateColor(self)
	if UISkinOptions.ColorTemplate == "ClassColor" then
		local color = RAID_CLASS_COLORS[U.ccolor]
		self:SetBackdropBorderColor(color.r, color.g, color.b)
	else
		self:SetBackdropBorderColor(unpack(c["media"].bordercolor))
	end
end

function cColorScrollBar(self)
	if _G[self:GetName().."ScrollUpButton"] and _G[self:GetName().."ScrollDownButton"] then
		cUpdateColor(_G[self:GetName().."ScrollUpButton"])
		cUpdateColor(_G[self:GetName().."ScrollDownButton"])
		if UISkinOptions.ColorTemplate == "ClassColor" then
			local color = RAID_CLASS_COLORS[U.ccolor]
			_G[self:GetName().."ScrollUpButton"].texture:SetVertexColor(color.r, color.g, color.b)
			_G[self:GetName().."ScrollDownButton"].texture:SetVertexColor(color.r, color.g, color.b)
		else
			_G[self:GetName().."ScrollUpButton"].texture:SetVertexColor(unpack(c["media"].bordercolor))
			_G[self:GetName().."ScrollDownButton"].texture:SetVertexColor(unpack(c["media"].bordercolor))
		end
	end
	if self.trackbg then cUpdateColor(self.trackbg) end
	if self.thumbbg then cUpdateColor(self.thumbbg) end
end

function cColorSlideBar(self)
	cUpdateColor(self)
	if UISkinOptions.ColorTemplate == "ClassColor" then
		local color = RAID_CLASS_COLORS[U.ccolor]
		self:GetThumbTexture():SetVertexColor(color.r, color.g, color.b)
	else
		self:GetThumbTexture():SetVertexColor(unpack(c["media"].bordercolor))
	end
end

local function cSkinButton(self,strip)
	self:SkinButton(strip)
	tinsert(U.ColorFrame, self)
	cUpdateColor(self)
	self:HookScript("OnEnter", TSSetModifiedBackdrop)
	self:HookScript("OnLeave", TSSetOriginalBackdrop)
end

U.SkinButton = cSkinButton

local function cSkinScrollBar(self)
	self:SkinScrollBar()
	tinsert(U.ColorScroll, self)
	cColorScrollBar(self)
end

U.SkinScrollBar = cSkinScrollBar

local function cSkinTab(self, strip, hook)
	if strip then self:StripTextures(True) end
	self:SkinTab()
	tinsert(U.ColorBackdrop, self.backdrop)
	cUpdateColor(self.backdrop)
	self:HookScript("OnEnter", TSSetModifiedBackdrop)
	self:HookScript("OnLeave", TSSetOriginalBackdrop)
end

U.SkinTab = cSkinTab

local function cSkinNextPrevButton(self, horizonal)
	self:SkinNextPrevButton(horizonal)
	tinsert(U.ColorFrame, self)
	cUpdateColor(self)
end

U.SkinNextPrevButton = cSkinNextPrevButton

local function cSkinRotateButton(self)
	self:SkinRotateButton()
	tinsert(U.ColorFrame, self)
	cUpdateColor(self)
end

U.SkinRotateButton = cSkinRotateButton

local function cSkinEditBox(self, width, height)
	self:SkinEditBox()
	if width then self:SetWidth(width) end
	if height then self:SetHeight(height) end
	tinsert(U.ColorBackdrop, self.backdrop)
	cUpdateColor(self.backdrop)
end

U.SkinEditBox = cSkinEditBox

local function cSkinDropDownBox(self, width)
	self:SkinDropDownBox(width)
	tinsert(U.ColorBackdrop, self.backdrop)
	cUpdateColor(self.backdrop)
	local button = _G[self:GetName().."Button"]
	cUpdateColor(button)
	tinsert(U.ColorFrame, button)
end

U.SkinDropDownBox = cSkinDropDownBox

local function cSkinCheckBox(self)
	self:SkinCheckBox()
	tinsert(U.ColorBackdrop, self.backdrop)
	cUpdateColor(self.backdrop)
end

U.SkinCheckBox = cSkinCheckBox

local function cSkinCloseButton(self)
	self:SkinCloseButton()
end

U.SkinCloseButton = cSkinCloseButton

local function cSkinSlideBar(self, height, movetext)
	self:SkinSlideBar(height, movetext)
	tinsert(U.ColorSlider, self)
	cColorSlideBar(self)
end

U.SkinSlideBar = cSkinSlideBar

function cRegisterForPetBattleHide(frame)
	if frame.IsVisible and frame:GetName() then
		U.FrameLocks[frame:GetName()] = { shown = false }
	end
end

local function cSkinFrame(self, overridestrip)
	if not overridestrip then self:StripTextures(True) end
	self:SetTemplate("Transparent")
	tinsert(U.ColorFrame, self)
	cUpdateColor(self)
end

U.SkinFrame = cSkinFrame

local function cSkinFrameD(self, overridestrip)
	if not overridestrip then self:StripTextures(True) end
	self:SetTemplate()
	tinsert(U.ColorFrame, self)
	cUpdateColor(self)
end

U.SkinFrameD = cSkinFrameD

local function cSkinBackdropFrame(self, strip, icon)
	if strip then self:StripTextures(True) end
	if not icon then
		self:CreateBackdrop()
		cUpdateColor(self.backdrop)
		tinsert(U.ColorBackdrop, self.backdrop)
	else
		if self.icon then self.icon:SetTexCoord(0.12, 0.88, 0.12, 0.88) end
		if _G[self:GetName().."_Background"] then _G[self:GetName().."_Background"]:SetTexCoord(0.12, 0.88, 0.12, 0.88) end
	end
end

U.SkinBackdropFrame = cSkinBackdropFrame

local function cSkinStatusBar(self, ClassColor)
	local s = U.s
	local c = U.c
	cSkinBackdropFrame(self, true)
	cUpdateColor(self.backdrop)
	self:SetStatusBarTexture(c["media"].normTex)
	if ClassColor then
		local color = RAID_CLASS_COLORS[U.ccolor]
		self:SetStatusBarColor(color.r, color.g, color.b)
	end
end

U.SkinStatusBar = cSkinStatusBar

local function cSkinIconButton(self, strip, style, shrinkIcon)
	if self.isSkinned then return end

	if strip then self:StripTextures() end
	self:CreateBackdrop("Default", true)
	if style then self:StyleButton() end

	cUpdateColor(self.backdrop)
	tinsert(U.ColorBackdrop, self.backdrop)

	local icon = self.icon
	if self:GetName() and _G[self:GetName().."IconTexture"] then
		icon = _G[self:GetName().."IconTexture"]
	elseif self:GetName() and _G[self:GetName().."Icon"] then
		icon = _G[self:GetName().."Icon"]
	end

	if icon then
		icon:SetTexCoord(.08,.88,.08,.88)

		if shrinkIcon then
			self.backdrop:SetAllPoints()
			icon:SetInside(self)
		else
			self.backdrop:SetOutside(icon)
		end
		icon:SetParent(self.backdrop)
	end
	self.isSkinned = true
end

U.SkinIconButton = cSkinIconButton

local function cDesaturate(f, point)
	for i=1, f:GetNumRegions() do
		local region = select(i, f:GetRegions())
		if region:GetObjectType() == "Texture" then
			region:SetDesaturated(1)
			if region:GetTexture() == "Interface\\DialogFrame\\UI-DialogBox-Corner" then
				region:Kill()
			end
		end
	end	

	if point then
		f:Point("TOPRIGHT", point, "TOPRIGHT", 2, 2)
	end
end

U.Desaturate = cDesaturate

local function cCheckOption(optionName,...)
	for i = 1,select('#',...) do
		local addon = select(i,...)
		if not addon then break end
		if not IsAddOnLoaded(addon) then return false end
	end
	return UISkinOptions[optionName] == "Enabled"
end

U.CheckOption = cCheckOption

local function cDisableOption(optionName)
	UISkinOptions[optionName] = "Disabled"
end

U.DisableOption = cDisableOption

local function cEnableOption(optionName)
	UISkinOptions[optionName] = "Enabled"
end

U.EnableOption = cEnableOption

local function cToggleOption(optionName)
	if cCheckOption(optionName) then
		cDisableOption(optionName)
	else
		cEnableOption(optionName)
	end
end

U.ToggleOption = cToggleOption

local function cRegisterSkin(skinName,skinFunc,...)
	local XS = U.x
	local events = {}
	for i = 1,select('#',...) do
		local event = select(i,...)
		if not event then break end
		events[event] = true
	end
	local registerMe = { func = skinFunc, events = events }
	if not XS.register[skinName] then XS.register[skinName] = {} end
	XS.register[skinName][skinFunc] = registerMe
end

U.RegisterSkin = cRegisterSkin

local function cUnregisterEvent(skinName,frame,event)
	local XS = U.x
	XS:UnregisterEvent(skinName,event)
end

U.UnregisterEvent = cUnregisterEvent

function cAddNonPetBattleFrames()
	for frame,data in pairs(U.FrameLocks) do
		if data.shown then
			_G[frame]:Show()
		end
	end
end

U.AddNonPetBattleFrames = cAddNonPetBattleFrames

function cRemoveNonPetBattleFrames()
	for frame,data in pairs(U.FrameLocks) do
		if(_G[frame]:IsVisible()) then
			data.shown = true
			_G[frame]:Hide()
		else
			data.shown = false
		end
	end
end

U.RemoveNonPetBattleFrames = cRemoveNonPetBattleFrames

--Add time before calling a function
local waitTable = {}
local waitFrame
function cDelay(delay, func, ...)
	if(type(delay)~="number" or type(func)~="function") then
		return false
	end
	if(waitFrame == nil) then
		waitFrame = CreateFrame("Frame","WaitFrame", UIParent)
		waitFrame:SetScript("onUpdate",function (self,elapse)
			local count = #waitTable
			local i = 1
			while(i<=count) do
				local waitRecord = tremove(waitTable,i)
				local d = tremove(waitRecord,1)
				local f = tremove(waitRecord,1)
				local p = tremove(waitRecord,1)
				if(d>elapse) then
				  tinsert(waitTable,i,{d-elapse,f,p})
				  i = i + 1
				else
				  count = count - 1
				  f(unpack(p))
				end
			end
		end)
	end
	tinsert(waitTable,{delay,func,{...}})
	return true
end

function TSSetModifiedBackdrop(self)
	local color = RAID_CLASS_COLORS[U.ccolor]
	self:SetBackdropBorderColor(color.r, color.g, color.b)
end

function TSSetOriginalBackdrop(self)
	local color = RAID_CLASS_COLORS[U.ccolor]
	if UISkinOptions.ColorTemplate == "ClassColor" then
		self:SetBackdropBorderColor(color.r, color.g, color.b)
	else
		self:SetBackdropBorderColor(unpack(c["media"].bordercolor))
	end
end