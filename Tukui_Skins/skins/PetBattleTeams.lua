local U = unpack(select(2,...))
local name = "PetBattleTeamsSkin"
local function SkinPetBattleTeams(self)
		U.SkinFrame(PetBattleTeamBackgroundFrame)
		U.SkinScrollBar(PetBattleTeamsScrollScrollBar)
		U.SkinFrame(PetBattleTeamBackgroundFrameMenu, true)
		PetBattleTeamBackgroundFrameMenu:SetSize(24,24)
		PetBattleTeamBackgroundFrameMenu:ClearAllPoints()
		PetBattleTeamBackgroundFrameMenu:SetPoint("TOPRIGHT", PetBattleTeamBackgroundFrame, "TOPRIGHT", -2, -2)
		PetBattleTeamBackgroundFrameMenu:SetHighlightTexture(nil)
		PetBattleTeamBackgroundFrameMenu.overlay:Kill()
		PetBattleTeamBackgroundFrameMenu.icon:SetInside()
		PetBattleTeamBackgroundFrameMenu.icon:SetTexCoord(0.12, 0.88, 0.12, 0.88)

		for i = 1, 60 do
			if _G["PetTeam"..i.."Button1"] then U.SkinFrame(_G["PetTeam"..i.."Button1"], true) _G["PetTeam"..i.."Button1"].BorderAlive:SetTexture(nil) _G["PetTeam"..i.."Button1"].BorderDead:SetTexture(nil) end
			if _G["PetTeam"..i.."Button2"] then U.SkinFrame(_G["PetTeam"..i.."Button2"], true) _G["PetTeam"..i.."Button2"].BorderAlive:SetTexture(nil) _G["PetTeam"..i.."Button2"].BorderDead:SetTexture(nil) end
			if _G["PetTeam"..i.."Button3"] then U.SkinFrame(_G["PetTeam"..i.."Button3"], true) _G["PetTeam"..i.."Button3"].BorderAlive:SetTexture(nil) _G["PetTeam"..i.."Button3"].BorderDead:SetTexture(nil) end
		end

		PetBattleTeamTooltip:HookScript("OnShow", function(self)
			self.Icon:SetTexCoord(0.12, 0.88, 0.12, 0.88)
			self.rarityGlow:SetTexture(nil)
			self.Background:SetTexture(nil)
			self.BorderTop:SetTexture(nil)
			self.BorderTopLeft:SetTexture(nil)
			self.BorderTopRight:SetTexture(nil)
			self.BorderLeft:SetTexture(nil)
			self.BorderRight:SetTexture(nil)
			self.BorderBottom:SetTexture(nil)
			self.BorderBottomRight:SetTexture(nil)
			self.BorderBottomLeft:SetTexture(nil)
			U.SkinFrame(self, true)
		end)

end

U.RegisterSkin(name,SkinPetBattleTeams)