-- ����ܿ� �Ƹ����� ��ȭ

function NPC_111237:OnDialogExit(Player, DialogID, ExitID) -- ���ܿ� �༮��. �����ǿ��� ��¡�� �ϰ� ��ȭ��
	if (DialogID == 1110044) and (1 == ExitID) then
		Player:UpdateQuestVar(111004, 3)
	end
end


