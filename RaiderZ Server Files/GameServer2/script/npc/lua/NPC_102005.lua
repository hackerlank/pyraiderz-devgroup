-- Ʈ�� ������ �� ���� ���� �߷θ�

function NPC_102005:OnDialogExit(Player, DialogID, Exit)
	if (1020162 == DialogID) then
		if (1 == Exit) then
			Player:Tip("$$NPC_102005_6")
			Player:UpdateQuestVar(102016, 2)	
			Player:GainBuff(110029)
		end
	end
end
