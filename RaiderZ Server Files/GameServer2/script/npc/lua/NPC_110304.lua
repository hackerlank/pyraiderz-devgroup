-- ���� �����̵�����

function NPC_110304:OnDialogExit(Player, DialogID, ExitID)
	if (1100002 == DialogID) and (1 == ExitID) then -- ��������
		Player:GateToMarker(3, 2)
	end
	if (1100002 == DialogID) and (2 == ExitID) then -- ����Ʈ��
		Player:GateToMarker(110, 1)
	end
	if (1100002 == DialogID) and (3 == ExitID) then -- ������ ���ֱ��
		Player:GateToMarker(113, 1)
	end	
end
