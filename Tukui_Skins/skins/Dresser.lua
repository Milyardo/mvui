local U = unpack(select(2,...))
local name = "DresserSkin"
local function SkinDresser(self)
	-- Dresser Skin
	U.SkinButton(DresserButton1)
	U.SkinButton(DresserButton2)
	U.SkinButton(DresserButton3)
	U.SkinButton(DresserButton4)

	--Reposition buttons
	DresserButton1:ClearAllPoints()
	DresserButton1:Point("BOTTOMLEFT", DressUpFrame, "BOTTOMLEFT", 138, 79)
	DresserButton2:ClearAllPoints()
	DresserButton2:Point("BOTTOMLEFT", DressUpFrame, "BOTTOMLEFT", 96, 79)
	DresserButton3:ClearAllPoints()
	DresserButton3:Point("BOTTOMLEFT", DressUpFrame, "BOTTOMLEFT", 54, 79)
	DresserButton4:ClearAllPoints()
	DresserButton4:Point("BOTTOMLEFT", DressUpFrame, "BOTTOMLEFT", 12, 79)

	--Resize Buttons
	DresserButton1:Size(38, 22)
	DresserButton2:Size(38, 22)
	DresserButton3:Size(38, 22)
	DresserButton4:Size(38, 22)
end

U.RegisterSkin(name, SkinDresser)