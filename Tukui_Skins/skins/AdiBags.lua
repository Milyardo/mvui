local U = unpack(select(2,...))
local s = U.s
local c = U.c

local name = "AdiBagsSkin"
local function SkinFrame(frame)
	local region = frame.HeaderRightRegion
	U.SkinFrame(frame)
	U.SkinFrame(_G[frame:GetName()..'Bags'])
	U.SkinFrameD(_G[frame:GetName()..'Bags'], true)
	U.SkinCloseButton(frame.CloseButton)
	for i = 1, 3 do
		U.SkinButton(region.widgets[i].widget, true)
	end
end

local function AdiSkin(self,event)
	if event == "PLAYER_ENTERING_WORLD" then
		if not AdiBagsContainer1 then ToggleBackpack() ToggleBackpack() end
		if AdiBagsContainer1 then
			SkinFrame(AdiBagsContainer1)
			U.SkinEditBox(AdiBagsContainer1SearchBox)
			AdiBagsContainer1SearchBox:Point("TOPRIGHT", AdiBagsSimpleLayeredRegion2, "TOPRIGHT", -75, -1)
		end
	elseif event == "BANKFRAME_OPENED" then
		SkinFrame(AdiBagsContainer2)
		U.UnregisterEvent(name, self, event)
	end
end

U.RegisterSkin(name,AdiSkin,"BANKFRAME_OPENED")