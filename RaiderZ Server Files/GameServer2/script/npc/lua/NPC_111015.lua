-- ����Ʈ ���� ���� ������

function NPC_111015:OnDialogExit(Player, DialogID, ExitID)
	if (1110282 == DialogID) and (1 == ExitID) then
		this:DespawnNow(true)
	end
end
