-- ȣ���� ��ȣ�� �̸���

function NPC_101002:OnDialogExit(Player, DialogID, ExitID) -- ȫ���ΰ� ������ �̸��� ���̶�� �� ��� ��
	if (DialogID == 1010491) and (1 == ExitID) then
		Player:UpdateQuestVar(101049, 1)
		-- �̸����� ��ȣ�� �ٲ�鼭 ��Ʈ�� ���������� ����� �Ѵ�..
	end
end

