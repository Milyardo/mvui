local U = unpack(select(2,...))
local name = "RaidBuffStatusSkin"
local function SkinRBS(self)

	U.SkinFrame(RBSFrame)
	U.SkinButton(RBSFrameScanButton)
	U.SkinButton(RBSFrameReadyCheckButton)
	U.SkinButton(RBSFrameBossButton)
	U.SkinButton(RBSFrameTrashButton)
	U.SkinNextPrevButton(RBSFrameOptionsButton)
	U.SkinNextPrevButton(RBSFrameTalentsButton)
	RBSFrameOptionsButton:Size(20)
	RBSFrameTalentsButton:Size(20)
end

U.RegisterSkin(name,SkinRBS)