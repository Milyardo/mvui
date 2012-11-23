local U = unpack(select(2,...))
local name = 'BagnonSkin'
local function SkinBagnon(self,event)
	local s = U.s
	local c = U.c
	if event == "PLAYER_ENTERING_WORLD" then
		ToggleBackpack()
		U.SkinFrame(BagnonFrameinventory)
		U.SkinCloseButton(BagnonFrameinventoryCloseButton)
		ToggleBackpack()
	elseif event == "BANKFRAME_OPENED" then
		U.SkinFrame(BagnonFramebank)
		U.SkinCloseButton(BagnonFramebankCloseButton)
		U.UnregisterEvent(name, self, event)
	elseif event == "GUILDBANKFRAME_OPENED" then
		if IsAddOnLoaded("Bagnon_GuildBank") then
			U.SkinFrame(BagnonFrameguildbank)
			U.SkinCloseButton(BagnonFrameguildbankCloseButton)
			U.UnregisterEvent(name, self, event)
		end
	elseif event == "VOID_STORAGE_OPEN" then
		if IsAddOnLoaded("Bagnon_VoidStorage") then
			U.SkinFrame(BagnonFramevoidstorage)
			U.SkinCloseButton(BagnonFramevoidstorageCloseButton)
			U.UnregisterEvent(name, self, event)
		end
	end
end
U.RegisterSkin(name,SkinBagnon,"BANKFRAME_OPENED","GUILDBANKFRAME_OPENED","VOID_STORAGE_OPEN")