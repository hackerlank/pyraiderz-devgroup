-- ���� �θ޷�

function NPC_113225:OnDialogExit(Player, DialogID, ExitID) -- ���ܿ� �༮��. �����ǿ��� ��¡�� �ϰ� ��ȭ��
	if (DialogID == 1130902) and (1 == ExitID) then
		Player:UpdateQuestVar(113090, 1)
	end
end


