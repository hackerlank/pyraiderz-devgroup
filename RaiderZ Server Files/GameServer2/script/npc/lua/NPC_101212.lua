function NPC_101212:OnDialogExit(Player, DialogID, nExit)
	if (1010201 == DialogID) then
		if (1 == nExit) then
			Player:UpdateQuestVar(101020, 1)
			-- ����, ����
			-- ���𿤱� 3�� ����
			-- ��� 
			-- ���� óġ�ϸ� �η����� ���� �������.
		end
	end
end
