-- ������ �׽�Ʈ : ���ٻ� ���̵� ���ƶ� ������ ����Ʈ�� �����ֱ� 

function NPC_102222:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9991133] = 113096
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


