-- ���Ȱ� ����

function NPC_113223:OnDialogExit(Player, DialogID, ExitID) -- ���ܿ� �༮��. �����ǿ��� ��¡�� �ϰ� ��ȭ��
	if (DialogID == 1130904) and (1 == ExitID) then
		Player:UpdateQuestVar(113090, 3)
	end
end


