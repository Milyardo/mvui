local U = unpack(select(2,...))
local name = "ExaminerSkin"
local function SkinExaminer(self)

	-- Skin Examiner Frame
	U.SkinFrame(Examiner)
	U.SkinScrollBar(ExaminerStatsScrollScrollBar)
	U.SkinScrollBar(ExaminerFeatsScrollScrollBar)
	U.SkinScrollBar(ExaminerGearScrollScrollBar)

	-- Skin Examiner Buttons
	for i = 1, Examiner:GetNumChildren() do
		local object = select(i, Examiner:GetChildren())
		if object:GetObjectType() == 'Button' then
			
			U.SkinButton(object, true)
		end
	end
end

U.RegisterSkin(name,SkinExaminer)