
-- ////////////////////////// Ʈ���̾� ���� ���� ///////////////////////////
--[[function Field_113:OnSensorEnter_80(Actor) -- ȭ�� ���� �Ұ� ����
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1130600) == true then
			AsPlayer(Actor):Tip("$$Field_113_6")
		end
	end
end


--]]
function Field_113:OnSensorEnter_81(Actor) -- ����� ���� �Ұ� ����
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(5120005) == true then
			AsPlayer(Actor):Tip("$$Field_113_16")
		end
	end
end

function Field_113:OnSensorEnter_82(Actor) -- ����� ���� �Ұ� ����
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(5120005) == true then
			AsPlayer(Actor):Tip("$$Field_113_24")
		end
	end
end


function Field_113:OnSpawn(SpawnInfo)
	if (SpawnInfo.NPCID == 113160) then -- ��Ʈ���̴�
		
		SpawnInfo.NPC:Patrol({1601,1602,1603,1604,1605,1606,1607,1608,1609,1610,1611,1612}, PT_ONCE)
		SpawnInfo.NPC:ScriptSelf("Field_113_DespawnSelf")	-- ���� �Ǳ�	
	end
end

function Field_113_DespawnSelf(Self, Opponent)
	Self:Despawn(true)	
end