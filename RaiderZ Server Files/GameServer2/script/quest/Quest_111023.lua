-- ������ ���� ���� ����

function Quest_111023:OnBegin(Player, NPC)
	local Field = Player:GetField()
	local Ghost = Field:GetSpawnNPC(111211)
	local Pos = Ghost:GetPos()
	Ghost:Balloon("������ �ִ� ������ �ε��� �帮����.")
	Field:SpawnDelay(111212, Pos, 4)
	Ghost:Balloon("�� �Һ��� ���󰡽ʽÿ�.")	
end
