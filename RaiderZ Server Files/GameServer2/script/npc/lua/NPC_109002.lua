-- ���� ����

function NPC_109002:OnDialogExit(Player, DialogID, Exit)
	if (30021 == DialogID) then
		if (1 == Exit) then
			Player:GateToMarker(3, 1) -- �������� ������ �ҿ� ���ε�
			Player:BindSoul(7)
		end
	end
	if (30023 == DialogID) then
		if (1 == Exit) then
			Player:GateToMarker(3, 1)
			Player:BindSoul(7)
		end
	end	
end
