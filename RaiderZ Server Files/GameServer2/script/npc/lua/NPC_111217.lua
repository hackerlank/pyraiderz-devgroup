-- ����ũ�� ����

function NPC_111217:OnSpawn(SpawnInfo)
	this:DisableInteraction()
end

function NPC_111217:OnTryHit(Actor, TalentID)
	if (TalentID == 140019) then
		this:Narration("ī������ �������� ���� ����ũ�� ���� �տ��� ������ϴ�.")
		this:DisableCombat()		
		this:EnableInteraction()
		this:SetTimer(2, 15, false)
	end
end

function NPC_111217:OnTimer(TimerID)
	if (TimerID == 1) then
			--GLog("15�� �� ��ü �����\n")
		this:Despawn(true)
	end
	if (TimerID == 2) then
			--GLog("15�� �������\n")
		this:EnableCombat()
		this:DisableInteraction()
	end	
end


