-- �ּ��� ����

function Quest_111040:OnEnd(Player, NPC)
	local Field = Player:GetField()
	local Totem = Field:GetSpawnNPC(111304)

	Totem:GainBuff(110003)
end
