-- ������ �׽�Ʈ : �̶����� ������ ����Ʈ�� �����ֱ� 

function NPC_110203:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9990063] = 107094
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


