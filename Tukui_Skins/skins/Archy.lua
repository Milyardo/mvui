local U = unpack(select(2,...))
local name = "ArchySkin"

local function SkinArchy(self)
	local s = U.s
	local c = U.c
	
	local function SkinArchyArtifactFrame()
			U.SkinFrame(ArchyArtifactFrame)

			if ArchyArtifactFrameSkillBar then
				ArchyArtifactFrameSkillBar.text:SetTextColor(1, 1, 1)
			end

			for i, child in pairs(ArchyArtifactFrame.children) do
				local containerFrame = _G['ArchyArtifactChildFrame'..i]
				local crest = _G['ArchyArtifactChildFrame'..i..'Crest']
				local icon = _G['ArchyArtifactChildFrame'..i..'Icon']
				local fragmentBar = _G['ArchyArtifactChildFrame'..i..'FragmentBar']
				local solveButton = _G['ArchyArtifactChildFrame'..i..'SolveButton']

				if icon then
					U.SkinFrame(icon, true)
					icon:SetSize(solveButton:GetHeight(),solveButton:GetHeight())
					icon.texture:SetTexCoord(.08, .92, .08, .92)
					icon.texture:SetInside()
				end
				
				if solveButton then
					U.SkinFrame(solveButton, true)
					solveButton:GetNormalTexture():SetTexCoord(.08, .92, .08, .92)
					solveButton:GetNormalTexture():SetInside()	
					solveButton:GetDisabledTexture():SetTexCoord(.08, .92, .08, .92)
					solveButton:GetDisabledTexture():SetInside()		
					solveButton:StyleButton()
				end
				
				if fragmentBar then
					U.SkinStatusBar(fragmentBar)
					fragmentBar:SetPoint("TOPLEFT", icon, "TOPRIGHT", 7, -2)
				end
			end
	end

	hooksecurefunc(Archy, 'RefreshRacesDisplay', SkinArchyArtifactFrame)
	hooksecurefunc(Archy, "UpdateRacesFrame", SkinArchyArtifactFrame)

	Archy:UpdateRacesFrame()
	Archy:RefreshRacesDisplay()
	
	local function SkinArchyDigSiteFrame()
			U.SkinFrame(ArchyDigSiteFrame)
	end

	hooksecurefunc(Archy, "UpdateDigSiteFrame", SkinArchyDigSiteFrame)

	if ArchyArtifactFrameSkillBar then
		U.SkinStatusBar(ArchyArtifactFrameSkillBar)	
	end

	U.SkinButton(ArchyDistanceIndicatorFrameSurveyButton)
	ArchyDistanceIndicatorFrameSurveyButton:SetFrameLevel(ArchyDistanceIndicatorFrameSurveyButton:GetFrameLevel() + 5)
	U.SkinButton(ArchyDistanceIndicatorFrameCrateButton)
	ArchyDistanceIndicatorFrameCrateButton:SetFrameLevel(ArchyDistanceIndicatorFrameCrateButton:GetFrameLevel() + 5)
end

U.RegisterSkin(name,SkinArchy)