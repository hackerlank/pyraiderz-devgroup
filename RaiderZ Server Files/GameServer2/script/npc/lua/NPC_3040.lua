-- ����
function NPC_3040:OnSpawn(SpawnInfo)
	this:SetTimer(1, 30, false)
end

function NPC_3040:OnTimer(TimerID)	
	if (TimerID == 1) then	-- 30�� �� �����
		this:Despawn(false)
	end	
end