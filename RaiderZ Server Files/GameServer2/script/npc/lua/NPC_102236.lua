-- ����ܿ� �η����� ��

function NPC_102236:OnDialogExit(Player, DialogID, ExitID)
	if (1110043 == DialogID) and (1 == ExitID) then
		Player:UpdateQuestVar(111004, 3)
	end
end
