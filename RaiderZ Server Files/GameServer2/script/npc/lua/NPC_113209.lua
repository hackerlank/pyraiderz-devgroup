-- ��ġ���� ���ݼ��� �츣

function NPC_113209:OnDialogExit(Player, DialogID, ExitID) -- �ɷ� ���� �� : ��ȭ �� ������Ʈ Ʈ��� ��ȯ
	if (DialogID == 1130731) and (1 == ExitID) then
		Player:UpdateQuestVar(113073, 2)
		local Field = this:GetField()
		local Pos = vec3(31336.23, 47340.88, 1456.90)
		Field:SpawnLimited(113215, Pos, 30)
		local Ghost = Field:GetSpawnNPC(113215)
		Ghost:FaceTo(this)
	end
end


