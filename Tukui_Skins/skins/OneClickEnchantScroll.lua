local U = unpack(select(2,...))

local name = 'OneClickEnchantScrollSkin'
local function SkinOneClickEnchantScroll(self)

	U.SkinButton(TradeSkillCreateScrollButton, true)
	TradeSkillCreateScrollButton:ClearAllPoints()
	TradeSkillCreateScrollButton:Point("RIGHT", TradeSkillCreateButton, "LEFT", -2, 0)

end

U.RegisterSkin(name, SkinOneClickEnchantScroll)