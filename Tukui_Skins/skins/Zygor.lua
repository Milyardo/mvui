local U = unpack(select(2,...))
local name = "ZygorSkin"
local function SkinZygor(self)
	ZygorGuidesViewerFrame:StripTextures(True)
	U.SkinFrame(ZygorGuidesViewerFrame_Border)
	U.SkinFrame(ZygorGuidesViewer_CreatureViewer, true)

	for i = 1, 6 do
		U.SkinBackdropFrame(_G["ZygorGuidesViewerFrame_Step"..i])
	end

	if ZygorGuidesViewerFrame:IsShown() then U.SkinFrame(ZygorGuidesViewerFrame_Border) end
	ZygorGuidesViewerFrame_Border:HookScript("OnHide", function(self) self:StripTextures(True) end)
	ZygorGuidesViewerFrame_Border:HookScript("OnShow", function(self) U.SkinFrame(self) end)

end

U.RegisterSkin(name,SkinZygor)