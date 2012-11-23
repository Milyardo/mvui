local U = unpack(select(2,...))
local MiscFixes = CreateFrame("Frame")
	MiscFixes:RegisterEvent("PLAYER_ENTERING_WORLD")
	local s = U.s
	local c = U.c 
	MiscFixes:SetScript("OnEvent", function(self)
	if NumerationFrame then U.SkinFrame(NumerationFrame, true) end
	if TukuiMinimap then Minimap:SetMaskTexture(c["media"].blank) end
	if IsAddOnLoaded("TomTom") and (U.CheckOption("TomTomSkin")) then
		if TomTomBlock then
			U.SkinFrame(TomTomBlock)
		end
	end
	if IsAddOnLoaded("SymbiosisTip") then
		SymbiosisTip:HookScript("OnShow", function(self) self:SetTemplate("Transparent") cUpdateColor(self) end)
	end
	if IsAddOnLoaded("VengeanceStatus") and (U.CheckOption("VengeanceStatusSkin")) then
			U.SkinStatusBar(VengeanceStatus_StatusBar)
	end
	
	LoadAddOn("acb_CastBar")
	if IsAddOnLoaded("acb_CastBar") then
		U.SkinBackdropFrame(AzCastBarPluginPlayer)
		U.SkinBackdropFrame(AzCastBarPluginTarget)
		U.SkinBackdropFrame(AzCastBarPluginFocus)
		U.SkinBackdropFrame(AzCastBarPluginMirror)
		U.SkinBackdropFrame(AzCastBarPluginPet)
	end
end)