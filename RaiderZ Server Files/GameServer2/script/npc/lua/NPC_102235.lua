-- ����ܿ� Ŭ����(�� ��ü)

function NPC_102235:OnDialogExit(Player, DialogID, ExitID)
	if (1110042 == DialogID) and (1 == ExitID) then
		local Field = this:GetField()
		local Aris = Field:GetSpawnNPC(102237)
		Player:UpdateQuestVar(111004, 2)
		Player:Tip("�����ʿ� �������� ���Ҹ��� �鸳�ϴ�.")
		Aris:Say("�Ͼ�... �Ͼ�...")
	end
end
