-- �׷��� Ʈ���̾� �ʵ� : ��ޱ�� ���׽�

function NPC_110301:OnDialogExit(Player, DialogID, ExitID)
	if (1100001 == DialogID) and (1 == ExitID) then
		Player:GateToMarker(110, 118)
	end
end
