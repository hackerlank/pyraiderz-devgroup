-- ��ɲ� �ƽ�

function NPC_113204:OnDialogExit(Player, DialogID, ExitID) -- ���ܿ� �༮��. �����ǿ��� ��¡�� �ϰ� ��ȭ��
	if (DialogID == 1130903) and (1 == ExitID) then
		Player:UpdateQuestVar(113090, 2)
	end
end


