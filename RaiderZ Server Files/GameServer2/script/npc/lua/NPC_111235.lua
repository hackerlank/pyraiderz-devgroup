-- ����ܿ� Ŭ������ ��ü

function NPC_111235:OnDialogExit(Player, DialogID, ExitID) -- ���ܿ� �༮��. �����ǿ��� ��¡�� �ϰ� ��ȭ��
	if (DialogID == 1110042) and (1 == ExitID) then
		Player:UpdateQuestVar(111004, 1)
	end
end


