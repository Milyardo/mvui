local U = unpack(select(2,...))

local name = 'tComboSkin'
local function SkintCombo(self)
	cDelay(1,function()
		if tComboPoints then
			U.SkinFrame(tComboPoints)
		end
		if tComboEnergyBar then
			U.SkinFrame(tComboEnergyBar)
		end
	end)
end
U.RegisterSkin(name,SkintCombo)