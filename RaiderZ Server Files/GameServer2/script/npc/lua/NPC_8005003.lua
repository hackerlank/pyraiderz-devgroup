-- ��Ʋ�Ʒ��� ������ ������

function NPC_8005003:OnDialogExit(Player, DialogID, Exit)
	if (8005003 == DialogID) then
		if (1 == Exit) then
			Player:GateToMarker(8005, 11)
			
		end
	end		
end
