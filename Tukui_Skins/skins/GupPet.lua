local U = unpack(select(2,...))
local name = "GupPetSkin"
local function SkinGupPet(self,event)
	U.SkinFrame(GupPet_InterfaceOptionsFrame)
	U.SkinFrame(GupPet_InterfaceOptionsFrameOptions)
	U.SkinFrame(GupPet_InterfaceOptionsFrameMountsCompanions)
	U.SkinFrame(GupPet_InterfaceOptionsFrameHelp)

	U.SkinButton(GupPet_IngameFrameTemplateMoveBottomRight)
	U.SkinButton(GupPet_IngameFrameTemplateMoveTopRight)
	U.SkinButton(GupPet_IngameFrameTemplateMoveBottomLeft)
	U.SkinButton(GupPet_IngameFrameTemplateMoveTopLeft)

	U.SkinIconButton(GupPet_IngameFrameTemplateAuto, true, true)
	U.SkinIconButton(GupPet_IngameFrameTemplateCompanion, true, true)

	U.SkinTab(GupPet_InterfaceOptionsFrameTab1)
	U.SkinTab(GupPet_InterfaceOptionsFrameTab2)
	U.SkinTab(GupPet_InterfaceOptionsFrameTab3)
	U.SkinTab(GupPet_InterfaceOptionsFrameTab4)

	U.SkinTab(GupPet_InterfaceOptionsFrameMountsCompanionsLocationsTabAdd)
	U.SkinTab(GupPet_InterfaceOptionsFrameMountsCompanionsLocationsTabRemove)
	U.SkinTab(GupPet_InterfaceOptionsFrameMountsCompanionsMainTabAquatic)
	U.SkinTab(GupPet_InterfaceOptionsFrameMountsCompanionsMainTabGround)
	U.SkinTab(GupPet_InterfaceOptionsFrameMountsCompanionsMainTabFly)
	U.SkinTab(GupPet_InterfaceOptionsFrameMountsCompanionsMainTabCompanion)
end

U.RegisterSkin(name,SkinGupPet)