-- Ƽ�� (Ʈ���̾��)

function NPC_109020:OnDialogExit(Player, DialogID, Exit)
	if (1091042 == DialogID) then
		if (1 == Exit) then
			Player:GateToMarker(109, 12)
		end
	end
end
