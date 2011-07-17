-- ����� ��(����)	
function Field_1070542:OnSpawn(SpawnInfo)
	if (SpawnInfo.NPCID == 107237) then
		local Field = SpawnInfo.Field
		local Maid = SpawnInfo.NPC	
		Maid:Say("$$Field_1070542_6") -- ������ �� �ǳ��� �濡 �����ſ���.
		Maid:NonDelaySay("$$Field_1070542_7") -- �������� ������ �� �ؼ� �׷��� ���� �������ϳ׿�.		
		Maid:Patrol({6,8,4,5}, PT_ONCE)		
		Maid:Say("$$Field_1070542_9") -- ����! �̰� �� ����?!
		Maid:Say("$$Field_1070542_10") -- � �� �Ź̵� �� ��� �غ���!
	end
	if (SpawnInfo.NPCID == 107004) then -- ��̰Ź�
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:MoveToMarker(15)
		SpawnInfo.NPC:MoveToMarker(14)
		SpawnInfo.NPC:MoveToMarker(13)
		SpawnInfo.NPC:MoveToMarker(12)	
	end
end

function Field_1070542:OnSensorEnter_1(Actor) -- �Ź̵� ������
	if (Actor:IsPlayer() == true) then
		local Field = AsPlayer(Actor):GetField()	
		if (AsPlayer(Actor):CheckCondition(1070542) == true) then
		--if (Field:GetNPCCount(107034) ~= 0) then
			AsPlayer(Actor):UpdateQuestVar(107054, 3)
			Field:DisableSensor(1)
			local SpiderTable = {14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34}
			local i = 1

			repeat 
				local Spiders = Field:GetSpawnNPC(SpiderTable[i])
					--GLog("����:"..i.."ȸ\n")
				Spiders:ClearJob()
				Spiders:SetAlwaysRun(true)
				Spiders:MoveToMarker(15)
				Spiders:Despawn()
				i = i + 1
			until i >= table.getn(SpiderTable)+1

			local Maid = Field:GetSpawnNPC(13)
			local Bookshelf = Field:GetSpawnNPC(11)
			Maid:Wait(3)
			Maid:Say("$$Field_1070542_43") -- ���� �Ƴ׿�.
			Maid:NonDelaySay("$$Field_1070542_44") -- �� �Ź̵��� ���� â�� ƴ�� ���ؼ� ���Գ� ����.
			Maid:Patrol({9,10,11}, PT_ONCE)
			Maid:FaceTo(Actor)
			Maid:Say("$$Field_1070542_47") -- �ٷ� �̰��̿���. �� ���� å���� �Űܳ��� ����...
			Maid:FaceTo(Bookshelf)		
			Maid:Say("$$Field_1070542_49") -- �ѹ� �� å���� �����غ�����.
			Field:EnableSensor(2)			
		end
	end
end

function Field_1070542:OnSensorEnter_2(Actor)
	if (Actor:IsPlayer() == true) then
		local Field = AsPlayer(Actor):GetField()
		Field:DisableSensor(2)			
		AsPlayer(Actor):UpdateQuestVar(107054, 4)
		Field:SpawnByID(10)  -- ��̰Ź� ����
	end
end

function Field_1070542:OnDie(DespawnInfo)
	local Field = DespawnInfo.Field
	if (DespawnInfo.NPCID == 107034) then
		--if (Field:GetNPCCount(107034) <= 17) then
			Field:EnableSensor(1)
		--end
	end
	if (DespawnInfo.NPCID == 107002) or (DespawnInfo.NPCID == 107002) then
		if (Field:GetNPCCount(107002) == 0) and (Field:GetNPCCount(107004) == 0) then
			local Maid = Field:GetSpawnNPC(13)
			Maid:FaceTo(DespawnInfo.NPC)
			Maid:Say("$$Field_1070542_75") -- ��~ �� ������ ������ ū �Ź̴� ó�� �þ��." />
			Maid:Say("$$Field_1070542_76") -- å�� ã������ � �� �������� ������ ������. ���� �� ���ھ��.
		end
	end
end




