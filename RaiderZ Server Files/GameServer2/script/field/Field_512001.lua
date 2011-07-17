function Field_512001:OnSpawn(SpawnInfo)
	if (SpawnInfo.NPCID == 512104) then -- �������� ��Ʈ�� �̵�
		
		SpawnInfo.NPC:Patrol({12,13,14,15,16,17,18,19,20,21}, PT_LOOP_BACKORDER)
		
 
	elseif (SpawnInfo.NPCID == 512108) then -- ����� ���� ���� ����
		
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:Balloon("$$Field_512001_10")
		SpawnInfo.NPC:Patrol({3,4,5,6,7,8,9,10,11}, PT_ONCE)
		SpawnInfo.NPC:Despawn(false)	
		
	elseif (SpawnInfo.NPCID == 512112) then -- ������� Ž�� �̵�
		
		SpawnInfo.NPC:Patrol({24,25,26,27,28,29,30,31,32,33,34,35,36}, PT_LOOP_BACKORDER)
			
		
	elseif (SpawnInfo.NPCID == 113214) then -- ���̵�
		--SpawnInfo.NPC:SetAlwaysRun(true)	
		
	elseif (SpawnInfo.NPCID == 113217) then -- ������Ʈ Ʈ����
		--SpawnInfo.NPC:SetAlwaysRun(true)
		this:EnableSensor(10)

	elseif (SpawnInfo.NPCID == 113245) then -- ���Ͻ��� ��ȥ
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:Wait(6)
		SpawnInfo.NPC:ScriptSelf("Field_512001_Event2")
		
	end
end

function Field_512001:OnDie(DespawnInfo) 
	local Field = this:GetID()
	
	if (DespawnInfo.SpawnID == 134) then -- ���ڷν� ����� 
		this:EnableSensor(9)	
	end
	
	if (DespawnInfo.SpawnID == 23) then -- �ٽ��׷� ���
		DespawnInfo.NPC:NarrationNow("$$Field_512001_42")		
	end
	if (DespawnInfo.SpawnID == 24) then -- �����Ʈ ���
		DespawnInfo.NPC:NarrationNow("$$Field_512001_45")		
	end
end

function Field_512001:OnSensorEnter_9(Actor) -- ����Ʈ�� �����ڰ� �ִٸ� �̺�Ʈ�� �۵�	
	if (Actor:IsPlayer() == true) then	
		if (AsPlayer(Actor):CheckCondition(1131132) == true)then
			this:DisableSensor(9)
			local Heiden = this:GetSpawnNPC(113214)
			local WarpPos = this:GetMarkerPos(52)
			Heiden:DisableInteraction()
			Heiden:Narration("$$Field_512001_56")
			Heiden:Warp(WarpPos)
			this:SpawnByID(113217)
			this:SpawnByID(113222)			
		end
	end
end

function Field_512001:OnSensorEnter_10(Actor) -- ������ ������ �̺�Ʈ 1
	this:DisableSensor(10)
	local Jar = this:GetSpawnNPC(113222)
	local Heiden = this:GetSpawnNPC(113214)
	local Iesent = this:GetSpawnNPC(113217)
	this:PlayBGM("bgm_Scenetalk_2") 	
	
	if (Actor:IsPlayer() == true) then	
		Heiden:StayawayFrom(Jar, 300)
		Iesent:StayawayFrom(Jar, 300)
		Heiden:WaitFor(Iesent)
		Iesent:Say("$$Field_512001_75",1.9) -- �̰��� �ٷ� ������ ������
		Iesent:Say("$$Field_512001_76",3.2) -- �� ������ �ı��ϸ� ���ڷν��� ������ ������� �ȴ�.
		Iesent:NextAction()
		Heiden:Say("$$Field_512001_78",2.3) -- �� ������ ������ �ı��Ͻð�
	end
end

function Field_512001_Event2(Self)	-- ������ ���� �ı� ��
	local Field = Self:GetField()
	local Jails = Field:GetSpawnNPC(113245)
	--Field:DespawnByID(113217, false)
	Field:EnableSensor(11)
end

function Field_512001:OnSensorEnter_11(Actor) -- ������ ������ �̺�Ʈ 2
	this:DisableSensor(11)
	local Heiden = this:GetSpawnNPC(113214)
	local Jails = this:GetSpawnNPC(113245)
	
	if (Actor:IsPlayer() == true) then	
		Jails:GainBuff(110032)
		Heiden:WaitFor(Jails)
		Jails:Say("$$Field_512001_97",4.3) -- �� ��� ��ȹ�� ����ǰ�� �Ǵٴ�
		Jails:Say("$$Field_512001_98",2.9) -- �� ġ���� �ݵ�� �����ְ� ���ڴ�.
		Jails:NextAction()
		Jails:WaitFor(Heiden)
		Heiden:Say("$$Field_512001_101",2.6) -- �� �Ʒ��� ������ �� ����
		Heiden:Say("$$Field_512001_102",4.5) -- �Ʒ��� ���и� �ŵ��� �״뿡�� �� �̻� ��ȸ�� �� �� ����?
		Heiden:NextAction()
		this:PlayBGM("bgm_Scenewar_1") 
		Heiden:WaitFor(Jails)		
		Jails:Say("$$Field_512001_106",2.9) -- �ƴ�, �츮�� �Ʒ����� ���縦 �˰� �ִٴ�.
		Jails:Say("$$Field_512001_107",2.3) -- �׳�� ��ü�� ����
		Jails:NextAction()
		Heiden:Say("$$Field_512001_109")		
		Heiden:NonDelaySay("$$Field_512001_110",2.8) -- �ڳ׿ʹ� �� �̻� ������ ���ٳ�		
		Heiden:UseTalent(140017, Jails)
		Heiden:ScriptSelf("Field_512001_Event3",1.9) -- �� ����. ���Ͻ�
	end
end

function Field_512001_Event3(Self)	-- ������ ���� �ı� �Ŀ�
	local Field = Self:GetField()
	local Jails = Field:GetSpawnNPC(113245)
	local Heiden = Field:GetSpawnNPC(113214)
	Heiden:EnableInteraction()
	Jails:GainBuff(110035)	
	Jails:Say("$$Field_512001_122",3.4)	-- ���ƾƾ�~ ũ�ƾƾ�~
	Jails:ScriptSelf("Field_512001_DespawnSelf")
end

function Field_512001_DespawnSelf(Self)
	Self:Despawn(true)
end






