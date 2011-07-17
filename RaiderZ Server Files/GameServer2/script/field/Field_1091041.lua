
-- ////////////////////////// ��ư ��� ���� Ʈ���̾� ����Ʈ ///////////////////////////

function Field_1091041:OnSensorEnter_1(Actor) -- ù��° �̺�Ʈ
	local Field = Actor:GetField()
	local Boatman = Field:GetSpawnNPC(109033)	
	Field:PlayBGM("bgm_Scenewar_2") 
	if (Actor:IsPlayer() == true) then
		Boatman:DisableInteraction()
		Actor:Narration("$$Field_1091041_10") -- ��ư �� ���ݹް� �ֽ��ϴ�!
		Boatman:Say("$$Field_1091041_11") -- ����� ��ġ�µ��� ������� �����ϰ� �ּ�!
		Boatman:Say("$$Field_1091041_13") -- ����� ���ڼ�. �ε� Ƽ�� �θ��� �����ֽÿ�.
		Boatman:ScriptSelf("Field_1091041_BoatmanOut")	
	end
end

function Field_1091041_BoatmanOut(Self)
	Self:Despawn(false)
end

function Field_1091041:OnSensorEnter_4(Actor) -- ù��° ���̺�
	local Field = Actor:GetField()
	if (Actor:IsPlayer() == true) then
		Field:DisableSensor(4)
		Field:SpawnByID(10101)
		Field:SpawnByID(10102)
		Field:SpawnByID(10103)
		Field:SpawnByID(10104)	
		Field:EnableSensor(6)		
	end
end

function Field_1091041:OnSessionScene_MorkenFight_Begin(Session)
	Session:ChangeScene("Talk1")
end

function Field_1091041:OnSessionScene_MorkenFight_Talk1(Session)
		local Tian = this:GetSpawnNPC(109020)	
		local Morken = this:GetSpawnNPC(109221)
		Morken:Say("$$Field_1091041_42",4.3) -- �ƹ����� �踦 ���� �������γ� ����ϴ���...
		Morken:Say("$$Field_1091041_43",1.6) -- �� ������, ������.
		Morken:Say("$$Field_1091041_44",4.0) -- ������ ������ �Ҿ��� ������ �� �й�� �������� �ž�!
		Tian:Say("$$Field_1091041_45",5.0) -- �������? �ƹ����� ������ ���ǳ� ����� ���� �� �ڰ� �� ���ΰ�?
		Tian:Say("$$Field_1091041_46",3.5) -- �� ���� �����״� ���ܹ� �� ô�� �Ʊ�� ������.
		Morken:Say("$$Field_1091041_47",4.3) -- ������ �� �����ϴٴ�! ������ �������� �ʾҳ�?
		Morken:Say("$$Field_1091041_48",4.1) -- �ð� ���� �߱�, ���� �׸� �׾��!	
		Session:ChangeScene("Combat")
end

function Field_1091041:OnSessionScene_MorkenFight_Combat(Session)
	local Tian = this:GetSpawnNPC(109020)	
	local Morken = this:GetSpawnNPC(109221)
	local Pirate1 = this:GetSpawnNPC(1100)
	local Pirate2 = this:GetSpawnNPC(1101)
	local Pirate3 = this:GetSpawnNPC(1102)
	local Pirate4 = this:GetSpawnNPC(1103)
	Session:CombatAll()
	this:PlayBGM("bgm_Scenewar_2") 
	Tian:ChangeAA(AA_FACTION)
	Pirate1:ChangeAA(AA_FACTION)		
	Pirate2:ChangeAA(AA_FACTION)
	Pirate3:ChangeAA(AA_FACTION)
	Pirate4:ChangeAA(AA_FACTION)
	Morken:ChangeAA(AA_FACTION)	
	Pirate1:EnableCombat()		
	Pirate2:EnableCombat()	
	Pirate3:EnableCombat()	
	Pirate4:EnableCombat()	
	Morken:EnableCombat()	
	Session:AddChangeSceneRule("MorkenAttack", Morken, "hp", {0, 40}) -- ������ 40% ���ϰ� �Ǹ� ������ ���
end

function Field_1091041:OnSessionScene_MorkenFight_MorkenAttack(Session) 
	local Tian = this:GetSpawnNPC(109020)	
	local Morken = this:GetSpawnNPC(109221)
	Session:CombatSession()
	Morken:NonDelaySay("$$Field_1091041_79",1.6) -- �������� ����!			
	Morken:UseTalentSelf(210901714)
	Session:ChangeScene("Talk2")
end

function Field_1091041:OnSessionScene_MorkenFight_Talk2(Session) -- ������ ��� �� 
	local Tian = this:GetSpawnNPC(109020)	
	local Morken = this:GetSpawnNPC(109221)
	Morken:FaceTo(Tian)
	Tian:FaceTo(Morken)				
	Morken:Say("$$Field_1091041_89",2.6) -- �� ������ ũ��﷯�� Ǯ������.
	Morken:Say("$$Field_1091041_90",3.5) -- �׷��� ��ư �� �� �վȿ� ���� ���̴�!
	Session:ChangeScene("TianAttack")
end

function Field_1091041:OnSessionScene_MorkenFight_TianAttack(Session) -- Ƽ�� �ݰ�
	local Tian = this:GetSpawnNPC(109020)	
	local Morken = this:GetSpawnNPC(109221)
	Session:CombatSession()
	Tian:NonDelaySay("$$Field_1091041_98",1.5) -- �� ������!
	Tian:StayawayFrom(Morken, 400)
	Tian:UseTalent(210901813, Morken)
	Session:ChangeScene("Talk3")
end

function Field_1091041:OnSessionScene_MorkenFight_Talk3(Session)
	local Morken = this:GetSpawnNPC(109221)
	Morken:Say("$$Field_1091041_106",3.3) -- ����! ��� ���� ����...
	Morken:Say("$$Field_1091041_107",2.8) -- ���Ͻ��� ��ü ���ϰ� �ִ� �ž�!
	Session:ChangeScene("MorkenDespawn")
end

function Field_1091041:OnSessionScene_MorkenFight_MorkenDespawn(Session)
	local Morken = this:GetSpawnNPC(109221)
	Morken:Narration("$$Field_1091041_113") -- ������ ���忡�� ��������ϴ�.
	Morken:Despawn(false)
	Session:ChangeScene("TianMove")
end

function Field_1091041:OnSessionScene_MorkenFight_TianMove(Session)
	local Tian = this:GetSpawnNPC(109020)	
	this:SpawnByID(109310)		
	this:SpawnByID(2006)
	this:SpawnByID(2007)
	this:SpawnByID(2008)	
	Tian:Wait(1.0)
	Tian:FaceTo(Session:FindBookmark("Player"))
	Tian:Say("$$Field_1091041_122",2.2) -- ��, �����ַ� �� �ž�? �װ� ����.
	Tian:Say("$$Field_1091041_123",2.9) -- ���� ��ġ���� �� ����� ����, � ����.
	Tian:Patrol({2401,2402,2403,2}, PT_ONCE)
	Session:ChangeScene("SpawnJails")
end

function Field_1091041:OnSessionScene_MorkenFight_SpawnJails(Session)	
	this:EnableSensor(8) -- ù��° Obj �Ϸ�
	this:EnableSensor(10)
	Session:EndSession()	
end

function Field_1091041:OnSensorEnter_6(Actor) -- �ι�° ���̺�(���� ����)
	if (Actor:IsPlayer() == true) then
	 	this:DisableSensor(6)
		this:PlayBGM("bgm_Scenetalk_2") 	
		local Tian = this:GetSpawnNPC(109020)	
		local Morken = this:GetSpawnNPC(109221)
		local Session = this:MakeSession("MorkenFight", {Tian, Morken})
		Session:AddBookmark("Player", Actor)
	end
end

function Field_1091041:OnSensorEnter_10(Actor) -- ���Ͻ� ���� ����
	local Field = Actor:GetField()
	local Tian = Field:GetSpawnNPC(109020)
	local Jails = Field:GetSpawnNPC(109310)
	Field:PlayBGM("bgm_Scenetalk_3") 

	if (Actor:IsPlayer() == true) then
		Field:DisableSensor(10)
		local Session = this:MakeSession("JailsFight", {Tian, Jails})
		Session:AddBookmark("Player", Actor)		
	end
end

function Field_1091041:OnSessionScene_JailsFight_Begin(Session)
	local Tian = this:GetSpawnNPC(109020)
	local Jails = this:GetSpawnNPC(109310)

	Session:Blocking()	
		Tian:FaceTo(Jails)
		Tian:Say("$$Field_1091041_165",2.9) -- ����, �� �༮����..? ��� Ȧ�� �� �ѵ�.
		Tian:Say("$$Field_1091041_166",2.5) -- �׳༮�� �̵��� �����ϰ� �ֳ�?
		Jails:Say("$$Field_1091041_167",6.5) -- �׷�... ���� �ڿ��� ������ ���߱�� ������ ������ ������ �ʸ� �����ϵ��� �������.
		Jails:Say("$$Field_1091041_168",3.8) -- �װ� ���ϵ�� ������ Ȧ�� ������ ���� ��ٸ��� �־���.
		Jails:Say("$$Field_1091041_169",3.1) -- �� �ʰ��� ���� ���� ���� �ʿ��ϰŵ�. 
		Jails:Say("$$Field_1091041_170",3.5) -- �ʵ� �� �̵�ó�� �� ����� ������ �� ���̴�!.			
	Session:ChangeScene("Control")
end

function Field_1091041:OnSessionScene_JailsFight_Control(Session)
	local Tian = this:GetSpawnNPC(109020)
	local Jails = this:GetSpawnNPC(109310)

	Session:Blocking()		
		Tian:NonDelaySay("$$Field_1091041_201") -- ũ��		
		Jails:NonDelaySay("$$Field_1091041_202",2.8) -- �ٸ� ���� �ʿ����. ���ֹ�����!
		this:PlayBGM("bgm_Scenewar_2")	
	Session:ChangeScene("Combat")
end

function Field_1091041:OnSessionScene_JailsFight_Combat(Session)
	local Tian = this:GetSpawnNPC(109020)
	local Jails = this:GetSpawnNPC(109310)
	local Servant1 = this:GetSpawnNPC(2006)
	local Servant2 = this:GetSpawnNPC(2007)
	local Servant3 = this:GetSpawnNPC(2008)

		Tian:GainBuff(110018)	
		Jails:GainBuff(110020)
		Servant1:EnableCombat()
		Servant2:EnableCombat()
		Servant3:EnableCombat()
		Servant1:ChangeAA(AA_ALWAYS)
		Servant2:ChangeAA(AA_ALWAYS)
		Servant3:ChangeAA(AA_ALWAYS)
	Session:EndSession()	
end

function Field_1091041:OnSpawn(SpawnInfo) 
	if (SpawnInfo.SpawnID == 109020) then -- Ƽ��
		SpawnInfo.NPC:DisableInteraction()
		SpawnInfo.NPC:ChangeAA(AA_NONE)
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:GainBuff(110017)
		SpawnInfo.NPC:GainBuff(110019)		
	end
	if (SpawnInfo.SpawnID == 109100) then -- ũ��﷯
		SpawnInfo.NPC:GainBuff(110015)
		SpawnInfo.NPC:ChangeAA(AA_NONE)
		SpawnInfo.NPC:DisableCombat()
	end
	if (SpawnInfo.SpawnID == 10101) then -- ù��° ���̺� 5��
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({1101,1102,1103,10101}, PT_ONCE)
	end
	if (SpawnInfo.SpawnID == 10102) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({1101,1102,1103,10102}, PT_ONCE)
	end
	if (SpawnInfo.SpawnID == 10103) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({1201,1202,1203,10103}, PT_ONCE)
	end
	if (SpawnInfo.SpawnID == 10104) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({1201,1202,1203,10105}, PT_ONCE)
	end
	if (SpawnInfo.SpawnID == 10105) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({1101,1102,1103,10105}, PT_ONCE)
	end	
	if (SpawnInfo.SpawnID == 1100) then   -- Ƽ�Ȱ� ����
		SpawnInfo.NPC:ChangeAA(AA_NONE)
		SpawnInfo.NPC:DisableCombat()
		SpawnInfo.NPC:SetAlwaysRun(true)	
		--SpawnInfo.NPC:Patrol({2201,2301,2203}, PT_ONCE)
		--SpawnInfo.NPC:Roam(500, 0)
	end
	if (SpawnInfo.SpawnID == 1101)then  -- Ƽ�Ȱ� ����
		SpawnInfo.NPC:ChangeAA(AA_NONE)
		SpawnInfo.NPC:DisableCombat()
		SpawnInfo.NPC:SetAlwaysRun(true)	
		--SpawnInfo.NPC:Patrol({2301,2302,2303}, PT_ONCE)
		--SpawnInfo.NPC:Roam(500, 0)		
	end	
	if (SpawnInfo.SpawnID == 1102) then  -- Ƽ�Ȱ� ����
		SpawnInfo.NPC:ChangeAA(AA_NONE)
		SpawnInfo.NPC:DisableCombat()
		SpawnInfo.NPC:SetAlwaysRun(true)	
		--SpawnInfo.NPC:Patrol({2401,2402,2503}, PT_ONCE)
		--SpawnInfo.NPC:Roam(500, 0)		
	end	
	if (SpawnInfo.SpawnID == 1103)then  -- Ƽ�Ȱ� ����
		SpawnInfo.NPC:ChangeAA(AA_NONE)
		SpawnInfo.NPC:DisableCombat()
		SpawnInfo.NPC:SetAlwaysRun(true)	
		--SpawnInfo.NPC:Patrol({2501,2502,2503}, PT_ONCE)
		--SpawnInfo.NPC:Roam(500, 0)		
	end		
	if (SpawnInfo.SpawnID == 1104)then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		--SpawnInfo.NPC:Patrol({2101,2302,2403}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end	
	if (SpawnInfo.SpawnID == 1105)then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		--SpawnInfo.NPC:Patrol({2201,2202,2203}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end
	if (SpawnInfo.SpawnID == 1106) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({2201,2102,2203}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end
	if (SpawnInfo.SpawnID == 1107) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({2101,2302,2503}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end		
	if (SpawnInfo.SpawnID == 1108) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({2601,2502,2403}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end	
	if (SpawnInfo.SpawnID == 1109) then 
		SpawnInfo.NPC:ChangeAA(AA_NONE)
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({2601,2602,2603}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end	
	if (SpawnInfo.SpawnID == 1110)  then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({2401,2302,2403}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end
	if (SpawnInfo.SpawnID == 1111) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({2401,2302,2303}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end		
	if (SpawnInfo.SpawnID == 1112) then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({2501,2502,2503}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end		
	if (SpawnInfo.SpawnID == 1113)  then
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({2601,2602,2603}, PT_ONCE)
		SpawnInfo.NPC:Roam(500, 0)		
	end	
	if (SpawnInfo.SpawnID == 109221)  then -- ����
		--local Field = SpawnInfo.Field
		--local Tian = Field:GetSpawnNPC(109020)	
		SpawnInfo.NPC:ChangeAA(AA_NONE)
		SpawnInfo.NPC:DisableCombat()		
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:GainBuff(110019)		
	end	
	if (SpawnInfo.SpawnID == 20003)  then  -- ����° Ʈ����
		SpawnInfo.NPC:ScriptSelf("Field_1091041_SensorEight")
	end		
end

function Field_1091041_SensorEight(Self)
	local Field = Self:GetField()	
	Field:EnableSensor(8)
end

function Field_1091041:OnSensorEnter_2(Actor) -- �ι�° ���� ����
	local Field = Actor:GetField()
	
	if Actor:IsPlayer() == true then
		Field:DisableSensor(2)	
		Actor:Narration("$$Field_1091041_449") -- ����Ʈ�� �Ϸ��߽��ϴ�. 40�� �� ��ư ���� �ڵ� ��ȯ�մϴ�.	
		this:SetTimer(1, 41, false)		-- Ÿ�̸ӷ� ��ȯ ���� �۵�
	end
end

function Field_1091041:OnTimer(TimerID) 
	if (TimerID == 1) then
		this:EnableSensor(3) -- ��ȯ ���� ON
	end
end

function Field_1091041:OnDie(DespawnInfo)
	local Field = DespawnInfo.Field
	local Tian = Field:GetSpawnNPC(109020)	
	
	if (DespawnInfo.SpawnID == 109100) then
		DespawnInfo.Field:EnableSensor(2) -- ũ��﷯ ������ ���� ����
		Tian:EnableInteraction()
		Tian:Say("$$Field_1091041_467",2.2)	-- ��� �������� �������� ������ ��.
	end

	if (DespawnInfo.NPCID == 109311) or (DespawnInfo.NPCID == 109312) or (DespawnInfo.NPCID == 109313) then
		if (Field:GetNPCCount(109311) == 0) and (Field:GetNPCCount(109312) == 0) and (Field:GetNPCCount(109313) == 0) then
			local Jails = Field:GetSpawnNPC(109310)	
			local Tian = Field:GetSpawnNPC(109020)						
			local Session = Field:MakeSession("TianControl",{Jails, Tian})
		end
	end
end

function Field_1091041:OnSessionScene_TianControl_Begin(Session)
	local Jails = this:GetSpawnNPC(109310)	
	local Tian = this:GetSpawnNPC(109020)		
	
	Session:Blocking()	
		Jails:SayAndNarrationNow("$$Field_1091041_487",2) -- �̷� ������� �༮��!
		Jails:NarrationNow("$$Field_1091041_488") -- ���Ͻ��� ������ �� �ְ� �Ǿ����ϴ�.
		Session:CombatAll()	
		Jails:EnableCombat()	
	Session:AddChangeSceneRule("Damage", Jails, "hp", {0, 99})
end

function Field_1091041:OnSessionScene_TianControl_Damage(Session)
	local Jails = this:GetSpawnNPC(109310)	
	local Tian = this:GetSpawnNPC(109020)		
	
	Session:CombatNone()	
	Session:Blocking()
		Jails:DisableCombat()
		Jails:RemoveBuff(110020)
		Jails:SetAlwaysRun(true)
		Jails:MoveToMarker(5)
		Jails:SaveHomePoint()
		Jails:FaceTo(Session:FindBookmark("Player"))
		Jails:NonDelaySay("$$NPC_109310_18",2.4) -- �׳�, ���ظ� �ϴٴ�...			
		Tian:RemoveBuff(110018)
		Tian:Narration("$$NPC_109310_20") -- Ƽ���� ���Ͻ��� ����κ��� ������ϴ�.
		Tian:Say("$$NPC_109310_21",2.0) -- �Ͼ�... ��Ҵ�.
		Tian:FaceTo(Session:FindBookmark("Player"))
		Tian:Say("$$NPC_109310_23",1.3) -- �����༭ ����.
		Tian:Wait(2)
		Tian:MoveToMarker(4)	
	Session:ChangeScene("End")
end

function Field_1091041:OnSessionScene_TianControl_End(Session)
	
	this:EnableSensor(12)
	Session:EndSession()	
end

function Field_1091041:OnSensorEnter_12(Actor) -- 12�� ���� ũ��﷯
	local Field = Actor:GetField()
	local Jails = Field:GetSpawnNPC(109310)
	local Numeras = Field:GetSpawnNPC(109053)
	local Tian = Field:GetSpawnNPC(109020)	
	
	if (Actor:IsPlayer() == true) then
		Field:DisableSensor(12)		
		local Session = Field:MakeSession("Crawler",{Jails, Numeras})
		Session:Blocking()
			Jails:Say("$$Field_1091041_248",2.2) -- �� ��ȹ�� ���ĳ��ٴ�...
			Jails:Say("$$Field_1091041_249",4.1) -- �̷��� �� �̻�, �׳�� ��� ũ��﷯�� ����� �׿��ָ�!
			Jails:SetAlwaysRun(true)
			Jails:MoveToMarker(6)
			Jails:Say("$$Field_1091041_252",2.0) -- ũ��﷯�� ��踦 ������!
			Numeras:Say("$$Field_1091041_253") -- ��... �˰�.. ���ϴ�.
		Session:ChangeScene("Combat")
	end
end

function Field_1091041:OnSessionScene_Crawler_Combat(Session)
	local Jails = this:GetSpawnNPC(109310)
	local Numeras = this:GetSpawnNPC(109053)
	local Crawler = this:GetSpawnNPC(109100)
	this:PlayBGM("bgm_war_10")
	
	Session:CombatAll()
		Jails:Despawn(false)
		Numeras:Despawn(false)		
		Crawler:RemoveBuff(110015)
		Crawler:EnableCombat()
		Crawler:ChangeAA(AA_ALWAYS)
		Crawler:Patrol({5}, PT_ONCE)
		Crawler:Narration("$$Field_1091041_282") -- ũ��﷯�� óġ�Ͻʽÿ�.
	Session:EndSession()
end
