-- ������ �׽�Ʈ : ���� ��Ƽ�� ������ ����Ʈ�� �����ֱ� 

function NPC_113220:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9991073] = 113090
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


