-- ����ܿ� �η����� ��

function NPC_111236:OnDialogExit(Player, DialogID, ExitID) -- ���ܿ� �༮��. �����ǿ��� ��¡�� �ϰ� ��ȭ��
	if (DialogID == 1110043) and (1 == ExitID) then
		Player:UpdateQuestVar(111004, 2)
	end
end


