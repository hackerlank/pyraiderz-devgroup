-- ������ �׽�Ʈ : �̶����� ������ ����Ʈ�� �����ֱ� 

function NPC_110215:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9990053] = 107093
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


