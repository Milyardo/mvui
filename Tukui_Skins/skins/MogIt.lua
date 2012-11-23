local U = unpack(select(2,...))
local name = "MogItSkin"
local function SkinMogIt(self)

	U.SkinFrame(MogItFrame)
	MogItFrameInset:StripTextures(True)

	U.SkinFrame(MogItFilters)
	MogItFiltersInset:StripTextures(True)

	local function SkinMogItPreview()
		for i = 1, 99 do
			local MogItGearSlots = {
				"HeadSlot",
				"ShoulderSlot",
				"BackSlot",
				"ChestSlot",
				"ShirtSlot",
				"TabardSlot",
				"WristSlot",
				"HandsSlot",
				"WaistSlot",
				"LegsSlot",
				"FeetSlot",
				"MainHandSlot",
				"SecondaryHandSlot",
				}

			for _, object in pairs(MogItGearSlots) do
				if _G["MogItPreview"..i] then U.SkinIconButton(_G["MogItPreview"..i..object], true) end
				if _G["MogItPreview"..i] then _G["MogItPreview"..i..object]:SetPushedTexture(nil) end
				if _G["MogItPreview"..i] then _G["MogItPreview"..i..object]:SetHighlightTexture(nil) end
			end

			if _G["MogItPreview"..i] then U.SkinFrame(_G["MogItPreview"..i]) end
			if _G["MogItPreview"..i] then U.SkinCloseButton(_G["MogItPreview"..i.."CloseButton"]) end
			if _G["MogItPreview"..i] then _G["MogItPreview"..i.."Inset"]:StripTextures(True) end
			if _G["MogItPreview"..i] then U.SkinButton(_G["MogItPreview"..i.."Activate"], true) end
		end
	end

	hooksecurefunc(MogIt, "CreatePreview", SkinMogItPreview)

	MogItTooltip:HookScript("OnShow", function(self) U.SkinFrame(self, true) end)

	U.SkinCloseButton(MogItFrameCloseButton)
	U.SkinCloseButton(MogItFiltersCloseButton)
	MogItFrameFiltersDefaults:StripTextures(True)
	U.SkinButton(MogItFrameFiltersDefaults, true)

	--Skin the Scrollbars
	--MogItScroll:StripTextures()
	--MogItScroll:SetTemplate("Default")
	U.SkinScrollBar(MogItScroll)
	U.SkinScrollBar(MogItFiltersScrollScrollBar)

end

U.RegisterSkin(name,SkinMogIt)