-- ������ �׽�Ʈ : �̶����� ������ ����Ʈ�� �����ֱ� 

function NPC_107212:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9990043] = 107092
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


