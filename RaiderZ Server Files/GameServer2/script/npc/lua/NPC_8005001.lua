-- ��Ʋ�Ʒ��� ������ ī���ν�

function NPC_8005001:OnDialogExit(Player, DialogID, Exit)
	if (8005001 == DialogID) then
		if (1 == Exit) then
			Player:GateToMarker(8005, 1)
			
		end
	end		
end
