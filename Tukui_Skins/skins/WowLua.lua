local U = unpack(select(2,...))

local name = "WowLuaSkin"
local function SkinWowLua(self)
	U.SkinFrame(WowLuaFrame)
	WowLuaFrameLineNumScrollFrame:StripTextures(True)
	WowLuaFrameResizeBar:StripTextures(True)
	WowLuaFrameResizeBar:Height(10)
	U.SkinCloseButton(WowLuaButton_Close)
	WowLuaButton_Close:Point("TOPRIGHT", WowLuaFrame, "TOPRIGHT", 0 , 0)
	U.SkinScrollBar(WowLuaFrameEditScrollFrameScrollBar)
	WowLuaButton_New:Point("LEFT", WowLuaFrameToolbar, "LEFT", 60, 0)

	WowLuaFrameEditFocusGrabber.bg1 = CreateFrame("Frame", nil, WowLuaFrameEditFocusGrabber)
	U.SkinBackdropFrame(WowLuaFrameEditFocusGrabber.bg1)
	WowLuaFrameEditFocusGrabber.bg1:Point("TOPLEFT", 0, 0)
	WowLuaFrameEditFocusGrabber.bg1:Point("BOTTOMRIGHT", 5, -5)

	WowLuaFrameResizeBar.bg1 = CreateFrame("Frame", nil, WowLuaFrameResizeBar)
	U.SkinFrame(WowLuaFrameResizeBar.bg1)
	WowLuaFrameResizeBar.bg1:Point("TOPLEFT", 6, -2)
	WowLuaFrameResizeBar.bg1:Point("BOTTOMRIGHT", -27, 0)

	WowLuaFrameCommand:StripTextures()
	WowLuaFrameCommand.bg1 = CreateFrame("Frame", nil, WowLuaFrameCommand)
	U.SkinBackdropFrame(WowLuaFrameCommand.bg1)
	WowLuaFrameCommand.bg1:Point("TOPLEFT", 0, -4)
	WowLuaFrameCommand.bg1:Point("BOTTOMRIGHT", -12, 2)
end
U.RegisterSkin(name,SkinWowLua)