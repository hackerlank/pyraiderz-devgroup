-- ������ ����

function NPC_111302:OnDialogExit(Player, DialogID, ExitID)
	if (DialogID == 1110212) then
		if (ExitID == 1) then
			Player:Tip("������ �������� �ں������ ������ ���̰� �Ǿ����ϴ�.")
			Player:UpdateQuestVar(111021, 2)
		end
	end
end