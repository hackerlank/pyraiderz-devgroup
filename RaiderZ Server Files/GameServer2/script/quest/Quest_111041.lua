-- ����� ����

function Quest_111041:OnBegin(Player, NPC)
	this:UpdateVar(1)
end

function Quest_111041:OnComplete(Player)
	local Field = Player:GetField()
	local Pos = Player:GetPos()
	Field:SpawnLimited(111303, Pos, 60)
	Player:Tip("��� ���� ������� �������ִ� �ݼ����� �������ϴ�!")
end