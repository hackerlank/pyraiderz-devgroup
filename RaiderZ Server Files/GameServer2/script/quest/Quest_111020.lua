-- ������ ã�� ��

function Quest_111020:OnEnd(Player, NPC)
	local Field = Player:GetField()
	local Totem = Field:GetSpawnNPC(111302)
	local Kaka = Field:GetSpawnNPC(111200)
	
	if (Player:CheckCondition(1110209) == true) then
		Kaka:DisableInteraction()
		Kaka:NonDelaySay("���� ������ ��ġ�� �ǽ��� ġ��� �ڴ�.")
		Kaka:StayawayFrom(Totem, 120)
		Kaka:Say("{ani=roar}Pichick Oicvneur")
		Kaka:Say("{ani=roar}Dadento Ybvier Terncode Wier")
		Kaka:Say("{ani=roar}Gleshac Geedi Reterdnop!")			
		Kaka:ScriptSelf("Quest_111020_Script")
	end
end

function Quest_111020_Script(Self)
	local Field = Self:GetField()
	local Totem = Field:GetSpawnNPC(111302)
	local Kaka = Field:GetSpawnNPC(111200)	

	Kaka:ReturnToHome()
	Kaka:EnableInteraction()
	Totem:GainBuff(110028)
end
