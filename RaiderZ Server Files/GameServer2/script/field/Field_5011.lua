-- ������ ȭ��(�׽�Ʈ)


function Field_5011:OnSensorEnter_1(Actor)
	if (Actor:IsPlayer() == true) then
		local Field = AsPlayer(Actor):GetField()
		--Field:DisableSensor(20)			
		--Field:EnableSensor(21)
		
		Field:SpawnByID(9)  -- �� ����1
		Field:SpawnByID(10)  -- �� ����1
		Field:SpawnByID(11)  -- �� ����1
		
	end
end

function Field_5011:OnSensorEnter_2(Actor)
	if (Actor:IsPlayer() == true) then
		local Field = AsPlayer(Actor):GetField()
		
		Field:SpawnByID(56)  -- ���õ��� ����1
		Field:SpawnByID(68)  -- ���õ��� ����3
		Field:SpawnByID(70)  -- ���õ��� ����3
		Field:SpawnByID(71)  -- ���õ��� ����3
		
		
	end
end
	
function Field_5011:OnDie(DespawnInfo)
	local Field = DespawnInfo.Field	
	
	
	if (DespawnInfo.NPCID == 121202) then  -- ũ����Ż �ı��Ǹ�
		Field:DespawnByID(22) -- �� ����1
		
	end
	
	if (DespawnInfo.NPCID == 121206) then  -- ũ����Ż �ı��Ǹ�
		Field:DespawnByID(66) -- �� ����2
		
	end
	
	if (DespawnInfo.NPCID == 121208) then  -- ũ����Ż �ı��Ǹ�
		Field:DespawnByID(117) -- �� ����2
		
	end

end



function Field_5011:OnSpawn(SpawnInfo)
	if (SpawnInfo.NPCID == 121205) then
		SpawnInfo.NPC:Patrol({2, 3}, PT_LOOP);
	end
 end





--function Field_5011:OnSpawn(SpawnInfo)
--		
--	if (SpawnInfo.NPCID == 121205) then
--		local Field = SpawnInfo.Field
--		
--		SpawnInfo.NPC:SetAlwaysRun(true)
--		SpawnInfo.NPC:MoveToMarker(2)
--			
--	end

--end

--function Field_5011:OnSensorEnter_2(Actor)
--	if (Actor:IsNPC() == true) then
	
--		if (Actor.NPCID == 121205) then
--			
--			Actor.NPC:MoveToMarker(3)
				
--		end
		
--	end
	
--end