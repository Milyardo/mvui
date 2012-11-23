local U = unpack(select(2,...))
local name = "MageNuggetsSkin"
local function SkinMageNuggets(self)
	local s = U.s
	local c = U.c

	local frames = {
		"MNSpellSteal_Frame",
		"MNSpellStealFocus_Frame",
		"MageNugPolyFrame",
		"MageNugFoFProcFrame",
		"MageNugMBProcFrame",
		"MageNugImpactProcFrame",
		"MageNugBFProcFrame",
		"MageNugProcFrame",
		"MageNugSSProcFrame",
		"MageNugBFProcFrame",
		"MageNugMoonkin_Frame",
		"MageNugHordeFrame",
		"MageNugAlliFrame",
		"MageNugManaGem_Frame",
		"MageNugCauterizeFrame",
		"MageNugClearcast_Frame",
		"MageNugAB_Frame",
		"MageNugIgnite_Frame",
		"MageNugLB_Frame",
		"MageNugSP_Frame",
		"MNabCast_Frame",
	}

	for i = 1, #frames do
		_G[frames[i]]:SetBackdrop({bgFile = nil, edgeFile = nil, tile = false, tileSize = 0, edgeSize = 0, insets = { left = 0, right = 0, top = 0, bottom = 0 }});
		U.SkinBackdropFrame(_G[frames[i]])
	end
	local sframes = {
		"MNcritMass_Frame",
		"MNcombust_Frame",
		"MNicyveins_Frame",
		"MNarcanepower_Frame",
		"MNimpGem_Frame",
		"MNlust_Frame",
		"MNmoonFire_Frame",
		"MNinsectSwarm_Frame",
		"MNstarSurge_Frame",
	}
	for i = 1, #sframes do
		_G[sframes[i]]:SetBackdrop({bgFile = nil, edgeFile = nil, tile = false, tileSize = 0, edgeSize = 0, insets = { left = 0, right = 0, top = 0, bottom = 0 }});
	end

	MageNugCauterize_Frame_Bar:SetStatusBarTexture(c["media"].normTex)
	MageNugMI_Frame_MiBar:SetStatusBarTexture(c["media"].normTex)
	MageNugManaGem_Frame_Bar:SetStatusBarTexture(c["media"].normTex)
	MageNugIgnite_Frame_Bar:SetStatusBarTexture(c["media"].normTex)
	MageNugAB_Frame_ABBar:SetStatusBarTexture(c["media"].normTex)
	MageNugMBProcFrame_ProcBar:SetStatusBarTexture(c["media"].normTex)
	MageNugProcFrame_ProcBar:SetStatusBarTexture(c["media"].normTex)
	MageNugPolyFrame_Bar:SetStatusBarTexture(c["media"].normTex)
	MageNugImpactProcFrame_ProcBar:SetStatusBarTexture(c["media"].normTex)
	MageNugBFProcFrame_ProcBar:SetStatusBarTexture(c["media"].normTex)
	MageNugFoFProcFrame_ProcBar:SetStatusBarTexture(c["media"].normTex)
	MageNugLB1_Frame_Bar:SetStatusBarTexture(c["media"].normTex)
	MageNugLB2_Frame_Bar:SetStatusBarTexture(c["media"].normTex)
	MageNugLB3_Frame_Bar:SetStatusBarTexture(c["media"].normTex)
	MageNugLB4_Frame_Bar:SetStatusBarTexture(c["media"].normTex)
	U.SkinBackdropFrame(MageNugMI_Frame_MiBar)
	U.SkinBackdropFrame(MageNugCauterize_Frame_Bar)

	U.SkinButton(MageNugHordeFrameClose)
	U.SkinButton(MageNugHordeFrameShowOptions)
	U.SkinButton(MageNugAlliFrameClose)
	U.SkinButton(MageNugAlliFrameShowOptions)

	U.SkinBackdropFrame(MageNugAB_Frame_ABBar)
	MageNugAB_Frame_ABBar:ClearAllPoints()
	MageNugAB_Frame_ABBar:Point("TOPLEFT", MageNugAB_Frame, "TOPLEFT", 1, -42)
	U.SkinBackdropFrame(MageNugIgnite_Frame_Bar)
	MageNugIgnite_Frame_Bar:ClearAllPoints()
	MageNugIgnite_Frame_Bar:Point("TOPLEFT", MageNugIgnite_Frame, "TOPLEFT", 1, -42)
	U.SkinBackdropFrame(MageNugManaGem_Frame_Bar)
	MageNugManaGem_Frame_Bar:ClearAllPoints()
	MageNugManaGem_Frame_Bar:Point("TOPLEFT", MageNugManaGem_Frame, "TOPLEFT", 1, -42)
	U.SkinBackdropFrame(MageNugClearcast_Frame_Bar)
	MageNugClearcast_Frame_Bar:ClearAllPoints()
	MageNugClearcast_Frame_Bar:Point("TOPLEFT", MageNugClearcast_Frame, "TOPLEFT", 1, -42)
	MNabCast_Frame:Point("TOPLEFT", MageNugAB_Frame, "TOPLEFT", 0, 18)
	
	--stupid ass amount of check boxes
	local checkbuttons = {
		MageNugOptionsFrame_CheckButtonCC,
		MageNugOptionsFrame_CheckButton6,
		MageNugOptionsFrame_CheckButtonMG,
		MageNugOptionsFrame_CheckButton7,
		MageNugOptionsFrame_CheckButton8,
		MageNugOptionsFrame_CheckButtonMGcombat,
		MageNugOptionsFrame_CheckButtonFB,
		MageNugOptionsFrame_CheckButtonIE,
		MageNugOptionsFrame_CheckButton14,
		MageNugOptionsFrame_CheckButton9,
		MageNugOptionsFrame_CheckButton13,
		MageNugOptionsFrame_ABcastCheckButton,
		MageNugOptionsFrame_CheckButton2,
		MageNugOptionsFrame_CheckButton11,
		MageNugOptionsFrame_CheckButton3,
		MageNugOptionsFrame_IgniteCheckButton,
		CauterizeCheckButton,
		MageNugStatMonOptionFrame_CheckButton0,
		MageNugStatMonOptionFrame_CheckButton1,
		MageNugStatMonOptionFrame_CheckButton2,
		MageNugMsgOptionFrame_CheckButton,
		MageNugMsgOptionFrame_CheckButton2,
		MageNugMsgOptionFrame_CheckButton3,
		MageNugMsgOptionFrame_CheckButton4,
		MageNugMsgOptionFrame_CheckButton5,
		MageNugMsgOptionFrame_CheckButton6,
		MageNugSoundOptionFrame_MICheckButton,
		MageNugSoundOptionFrame_ProcCheckButton,
		MageNugSoundOptionFrame_PolyCheckButton,
		MageNugSoundOptionFrame_HotStreakCheckButton,
		MageNugSoundOptionFrame_ImpactCheckButton,
		MageNugSoundOptionFrame_FoFCheckButton,
		MageNugSoundOptionFrame_BrainFreezeCheckButton,
		MageNugSoundOptionFrame_CauterizeCheckButton,
		MageNugSoundOptionFrame_TimeWarpCheckButton,
		MageNugPriestOptionFrame_CheckButton3,
		MageNugPriestOptionFrame_CheckButton2,
		MageNugPriestOptionFrame_CheckButton0,
		MageNugMoonkinOptionFrame_CheckButton,
		MageNugMoonkinOptionFrame_CheckButton0,
		MageNugMoonkinOptionFrame_CheckButton1,
		MageNugMoonkinOptionFrame_CheckButtonMin,
		MageNugMoonkinOptionFrame_CheckButton3,
		MageNugMoonkinOptionFrame_CheckButtonAnchor,
		MageNugMoonkinOptionFrame_CastCheckButton,
		MageNugMoonkinOptionFrame_ProcCheckButton,
		MageNugMoonkinOptionFrame_CheckButton2,
		MageNugOption2Frame_MinimapCheckButton,
		MageNugOption2Frame_CameraCheckButton,
		MageNugOption2Frame_ConsoleTextCheckButton,
		MageNugOption2Frame_LockFramesCheckButton,
		MageNugOption2Frame_CheckButtonTT,
		MageNugOption2Frame_ClickThruCheckButton,
		MageNugCooldownFrame_apButton,
		MageNugCooldownFrame_bwButton,
		MageNugCooldownFrame_cbButton,
		MageNugCooldownFrame_csButton,
		MageNugCooldownFrame_dfButton,
		MageNugCooldownFrame_dbButton,
		MageNugCooldownFrame_mwButton,
		MageNugCooldownFrame_frzButton,
		MageNugCooldownFrame_msButton,
		MageNugCooldownFrame_ibrButton,
		MageNugCooldownFrame_evoButton,
		MageNugCooldownFrame_ivButton,
		MageNugCooldownFrame_cdButton,
		MageNugCooldownFrame_starfallButton,
		MageNugCooldownFrame_treantButton,
		MageNugCooldownFrame_miButton,
	}
		
	for _,b in pairs(checkbuttons) do
		U.SkinCheckBox(b)
	end
	
	-- Slider frames
	local sliders = {
		MageNugOptionsFrame_Slider5,
		MageNugOptionsFrame_InvokersSlider,
		MageNugOptionsFrame_Slider1,
		MageNugOptionsFrame_Slider3,
		MageNugOptionsFrame_Slider2,
		MageNugOptionsFrame_Slider4,
		MageNugStatMonOptionFrame_SPSizeSlider,
		MageNugStatMonOptionFrame_BorderSlider,
		MageNugStatMonOptionFrame_TransparencySlider,
		MageNugMoonkinOptionFrame_Slider,
		MageNugMoonkinOptionFrame_Slider1,
		MageNugCooldownFrame_Slider1,
	}
	
	for _,s in pairs(sliders) do
		U.SkinSlideBar(s, 8, true)
	end
	
	-- Edit Boxes
	local editbox = {
		SlowFallMsgEditBox,
		SlowFallMsgEditBox2,
		SlowFallMsgEditBox3,
		FocMagNotifyEditBox,
		FocMagNotifyEditBox2,
		FocMagNotifyEditBox3,
		FocMagThankEditBox,
		FocMagThankEditBox2,
		InnervThankEditBox,
		InnervThankEditBox2,
		PowerInfusionEditBox,
		DarkIntentEditBox,
		MageNugSoundOptionFrame_MISoundEditBox,
		MageNugSoundOptionFrame_ProcSoundEditBox,
		MageNugSoundOptionFrame_PolySoundEditBox,
		MageNugSoundOptionFrame_HotStreakSoundEditBox,
		MageNugSoundOptionFrame_ImpactSoundEditBox,
		MageNugSoundOptionFrame_FoFSoundEditBox,
		MageNugSoundOptionFrame_BrainFreezeSoundEditBox,
		MageNugSoundOptionFrame_CauterizeSoundEditBox,
		MageNugSoundOptionFrame_TimeWarpSoundEditBox,
		MageNugPriestOptionFrame_EditBox3,
		MageNugPriestOptionFrame_EditBox2,
		MageNugPriestOptionFrame_EditBox1,
		MageNugMoonkinOptionFrame_SoundEditBox,
		MageNugMoonkinOptionFrame_InnervateEditBox,
	}
	
	for _,f in pairs(editbox) do
		U.SkinEditBox(f, false, 15)
	end
	
	-- Buttons
	U.SkinButton(MageNugStatMonOptionFrameBlackBackdropButton)
	U.SkinButton(MageNugMoonkinOptionFrame_Button)
	U.SkinButton(MageNugOption2FrameButton1)
	U.SkinButton(MageNugOption2FrameButton2)
	U.SkinButton(MageNugOption2FrameButton3)
	
end

U.RegisterSkin(name,SkinMageNuggets)