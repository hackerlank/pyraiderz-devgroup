-- ������ �׽�Ʈ : �̶����� ������ ����Ʈ�� �����ֱ� 

function NPC_107223:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9990033] = 107090
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


