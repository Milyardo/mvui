local U = unpack(select(2,...))
local name = "BPTSkin"
local function SkinBPT(self)
	if (select(2, UnitClass("player")) ~= "DRUID") then
		return
	end
	BalancePowerTracker_Options.global.enabled = true
	BalancePowerTracker.CheckAll()
	U.SkinFrame(BalancePowerTracker_Eclipse_Bar_Frame, true)
	U.SkinFrame(BalancePowerTracker_SolarEclipseIcon, true)
	U.SkinFrame(BalancePowerTracker_LunarEclipseIcon, true)
	
	hooksecurefunc(BalancePowerTracker.modules.eclipse_bar,"ReDraw", function() BalancePowerTracker_Eclipse_Bar_Frame:SetTemplate("Transparent") end)
end

U.RegisterSkin(name,SkinBPT)