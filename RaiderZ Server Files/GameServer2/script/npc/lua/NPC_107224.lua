-- ������ �׽�Ʈ : ũ������ ������ ����Ʈ�� �����ֱ� 

function NPC_107224:OnDialogExit(Player, DialogID, ExitID)
 	if (1 == ExitID) then
		local GateDestTable = {}
		GateDestTable[9990013] = 107095
		Player:GateToTrial(GateDestTable[DialogID])
	end
end


