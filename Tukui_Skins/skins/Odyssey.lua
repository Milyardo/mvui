local U = unpack(select(2,...))
local name = "OdysseySkin"
local function SkinOdyssey(self)
	local s = U.s
	local c = U.c

	OdysseyMapsMenuScrollFrame:StripTextures(True)
	OdysseyFrameQuestDetailsSeries:StripTextures(True)
	OdysseyFrameSearchScrollFrame:StripTextures(True)

	OdysseyFramePortrait:Kill()

	U.SkinFrame(OdysseyFrame)
	U.SkinFrame(OdysseyFrameRealmSummaryScrollFrame)
	U.SkinFrame(OdysseyFrameQuestDB)
	U.SkinFrame(OdysseyFrameQuestDBScrollFrame)
	U.SkinFrame(OdysseyFrameQuestDetails)
	U.SkinFrame(OdysseyFrameZoneMaps)

	U.SkinScrollBar(OdysseyFrameQuestDBScrollFrameScrollBar)
	U.SkinScrollBar(OdysseyFrameRealmSummaryScrollFrameScrollBar)
	U.SkinScrollBar(OdysseyMapsMenuScrollFrameScrollBar)
	U.SkinEditBox(OdysseyFrame_SearchEditBox)
	U.SkinEditBox(OdysseyFrameQuestDB_MinLevel)
	U.SkinEditBox(OdysseyFrameQuestDB_MaxLevel)
	
	OdysseyFrame_ResetButton:Point("TOPLEFT", OdysseyFrame, "TOPLEFT", 55, -77)
	OdysseyFrameTab1:Point("TOPLEFT", OdysseyFrame, "BOTTOMLEFT", -5, 2)
	U.SkinButton(OdysseyFrame_ResetButton)
	U.SkinButton(OdysseyFrame_SearchButton)
	U.SkinButton(OdysseyFrameQuestDB_GetHistory)
	U.SkinCloseButton(OdysseyFrameCloseButton)
	U.SkinNextPrevButton(OdysseyFrameQuestDetailsGoBack)
	U.SkinNextPrevButton(OdysseyFrameQuestDetailsGoForward)
	U.SkinDropDownBox(OdysseyFrameRealmSummary_SelectContinent)
	U.SkinScrollBar(OdysseyFrameSearchScrollFrameScrollBar)

	for i = 1, 3 do
		U.SkinTab(_G["OdysseyFrameTab"..i])
		U.SkinFrame(_G["OdysseyTabQuestsMenuItem"..i])
	end

	for i = 1, 5 do
		U.SkinFrame(_G["OdysseyTabQuests_Sort"..i])
	end

	for i = 1, 15 do
		U.SkinFrame(_G["OdysseyTabMapsMenuItem"..i])
	end

	for i = 1, 4 do
		U.SkinFrame(_G["OdysseyTabSearchMenuItem"..i])
	end

	for i = 1, 10 do
		U.SkinBackdropFrame(_G["OdysseyFrameRealmSummaryEntry1Item"..i], true, true)
		U.SkinBackdropFrame(_G["OdysseyFrameRealmSummaryEntry2Item"..i], true, true)
		U.SkinBackdropFrame(_G["OdysseyFrameRealmSummaryEntry3Item"..i], true, true)
		U.SkinBackdropFrame(_G["OdysseyFrameRealmSummaryEntry4Item"..i], true, true)
		U.SkinBackdropFrame(_G["OdysseyFrameRealmSummaryEntry5Item"..i], true, true)
		U.SkinBackdropFrame(_G["OdysseyFrameRealmSummaryEntry6Item"..i], true, true)
		U.SkinBackdropFrame(_G["OdysseyFrameRealmSummaryEntry7Item"..i], true, true)
		U.SkinBackdropFrame(_G["OdysseyFrameRealmSummaryEntry8Item"..i], true, true)
	end

	OdyTooltip:HookScript("OnShow", function(self) self:SetTemplate("Transparent") cUpdateColor(self) end)

end

U.RegisterSkin(name,SkinOdyssey)
