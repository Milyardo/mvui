local U = unpack(select(2,...))
local s = U.s
local c = U.c

local function UpdateButtonLayout(self, button, opt)
	button:Size(opt.size)
	button:ClearAllPoints()
	button:SetPoint(opt.point, clcprotFrame, opt.pointParent, opt.x, opt.y)
	button:SetAlpha(opt.alpha)

	button.stack:ClearAllPoints()
	button.stack:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 4, 0)	
end

local function CreateButton(self, name, size, point, parent, pointParent, offsetx, offsety, bfGroup, isChecked)
	local db = self.db.profile
	clcprotFrame:SetScale(1)
	clcprotFrame.SetScale = function() end
	
	name = "clcprot" .. name
	local button
	if isChecked then
		button = CreateFrame("CheckButton", name , parent)
		button:CreateBackdrop("Default")
		button:StyleButton(true)
	else
		button = CreateFrame("Button", name , parent)
		button:CreateBackdrop("Default")
	end
	
	button.backdrop:SetAllPoints()
	button:EnableMouse(false)
	
	button:Size(size)
	
	button.texture = button:CreateTexture("$parentIcon", "OVERLAY")
	button.texture:Point("TOPLEFT", 2, -2)
	button.texture:Point("BOTTOMRIGHT", -2, 2)
	button.texture:SetTexture(BGTEX)
	button.texture:SetTexCoord(0.08, 0.92, 0.08, 0.92)
	button.texture.SetTexCoord = function() end
	
	button.texture.OldSetTexture = button.texture.SetTexture
	button.texture.SetTexture = function(self, tex, ...)
		button.texture.OldSetTexture(self, tex, ...)
		
		if tex ~= nil then
			button.backdrop:Show();
		else
			button.backdrop:Hide()
		end
	end	
	
	button.border = button:CreateTexture(nil, "BORDER")
	button.border:Kill()
	
	button.cooldown = CreateFrame("Cooldown", "$parentCooldown", button)
	button.cooldown:Point("TOPLEFT", 2, -2)
	button.cooldown:Point("BOTTOMRIGHT", -2, 2)
	
	button.stack = button:CreateFontString("$parentCount", "OVERLAY", "TextStatusBarText")
	
	local fontFace, _, fontFlags = button.stack:GetFont()
	button.stack:SetFont(fontFace, 30, fontFlags)
	button.stack:SetJustifyH("RIGHT")
	button.stack:ClearAllPoints()
	button.stack:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 4, 0)
	
	button.defaultSize = button:GetWidth()
	
	button.SetScale = function() end
	button:ClearAllPoints()
	button:SetPoint(point, parent, pointParent, offsetx, offsety)
	
	if self.LBF then
		self.LBF:Group("clcprot", bfGroup):AddButton(button)
	end
		
	button:Hide()
	return button
end

if (select(2, UnitClass("player")) ~= "PALADIN") then
	return
end
	local name = "CLCProtSkin"
	local function SkinCLCProt(self)
		local clcprot = LibStub("AceAddon-3.0"):GetAddon("clcprot")
		clcprot.CreateButton = CreateButton
		clcprot.UpdateButtonLayout = UpdateButtonLayout
	end
	U.RegisterSkin(name,SkinCLCProt)