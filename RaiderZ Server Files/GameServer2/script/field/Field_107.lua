function Field_107:OnCreate()
	this:Spawn(107026, vec3(11927.0, 40549.0, 2473.0))
	this:SetTimer(1, 20, true) -- ��� ���� ���� ����
	this:SetTimer(2, 60, true) -- �̽��ڰ� ����� ������
end

function Field_107:OnTimer(TimerID)
	if (TimerID == 1) then
		if (this:GetNPCCount(107026) <= 0) then -- ������ ������ ����
			this:Spawn(107026, vec3(11927.0, 40549.0, 2473.0))
		end
	end
	if (TimerID == 2) then  -- 60�ʸ��� �̽��ڰ� ������� �Բ� ����
		if (this:GetNPCCount(107220) == 0) then
			this:SpawnByID(10150)
			this:SpawnByID(73)
			this:SpawnByID(74)		
		end
	end
end

-- ////////////////////////// Ʈ���̾� ���� ���� ///////////////////////////
function Field_107:OnSensorEnter_6(Actor) -- ���̵彺���� �׽�Ʈ
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(30081) == true then
			AsPlayer(Actor):UpdateQuestVar(3008,2)
		end
	end
end

function Field_107:OnSensorEnter_8(Actor) -- ����� �� �Ա� �ȳ���
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1070541) == true then
			AsPlayer(Actor):Tip("$$Field_107_34")
		end
	end
end

function Field_107:OnSensorEnter_9(Actor) -- ������ ����
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1070512) == true then
			this:SpawnByID(75)
			this:SpawnByID(76)		
			local Field = Actor:GetField()	
			local Rafale = Field:GetSpawnNPC(10151)			
			local Wolf1 = Field:GetSpawnNPC(75)
			local Wolf2 = Field:GetSpawnNPC(76)
			AsPlayer(Actor):Tip("$$Field_107_48")
			Rafale:GainBuff(110013)
			Wolf1:Wait(1)
			Wolf2:Wait(1)				
			Wolf1:Attack(Actor)
			Wolf2:Attack(Actor)			
		end
	end
end

function Field_107:OnSensorEnter_10(Actor) -- �̽����� ����
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1070513) == true then
			this:SpawnByID(10150)		
			this:SpawnByID(73)
			this:SpawnByID(74)	
			local Field = Actor:GetField()			
			local Maid = Field:GetSpawnNPC(10150)
			local Wolf1 = Field:GetSpawnNPC(73)
			local Wolf2 = Field:GetSpawnNPC(74)
			Maid:NonDelaySay("$$Field_107_68")
			Wolf1:Wait(1)
			Wolf2:Wait(1)		
			Wolf1:Attack(Actor)
			Wolf2:Attack(Actor)
		end
	end
end
--[[
function Field_107:OnSensorEnter_11(Actor) -- ������ ���� ����
	if (Actor:IsPlayer() == true) then
		if (AsPlayer(Actor):CheckCondition(1070563) == true) then
			if (this:GetNPCCount(107239) == 0) then
				this:SpawnByID(1222)
				AsPlayer(Actor):Narration("$$Field_107_82")
				AsPlayer(Actor):UpdateQuestVar(107056, 3)				
			end
		end
	end
end
--]]
function Field_107:OnSensorEnter_13(Actor) -- ��ε����� ���� â�� �Ա� �ȳ���
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1070161) == true then
			AsPlayer(Actor):Tip("$$Field_107_34")
		end
	end
end

function Field_107:OnSpawn(SpawnInfo)
	if (SpawnInfo.NPCID == 107026) then -- ����Ʈ ����
		
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:Patrol({102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117}, PT_ONCE)
		SpawnInfo.NPC:ScriptSelf("Field_107_DespawnSelf")	-- ���� �Ǳ�	
		

	elseif (SpawnInfo.SpawnID == 73) or (SpawnInfo.SpawnID == 74) then
		SpawnInfo.NPC:Balloon("$$Field_107_106")
	elseif (SpawnInfo.SpawnID == 75) then
		SpawnInfo.NPC:Balloon("$$Field_107_108")		
	elseif (SpawnInfo.SpawnID == 76) then
		SpawnInfo.NPC:Balloon("$$Field_107_110")			
		
	elseif (SpawnInfo.SpawnID == 10150) then -- �̽��� �����
		SpawnInfo.NPC:Say("$$Field_107_113")
		SpawnInfo.Field:SpawnByID(73)
		SpawnInfo.Field:SpawnByID(74)	 
--[[
	elseif (SpawnInfo.NPCID == 107238) then -- ���� �̵�
		SpawnInfo.NPC:Balloon("{ani=neglect1}��")
		SpawnInfo.NPC:Roam(100, 2)		
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:NonDelayBalloon("��")				
		SpawnInfo.NPC:Patrol({401,402}, PT_ONCE)
		SpawnInfo.NPC:Roam(100, 2)	
		SpawnInfo.NPC:Patrol({403,404}, PT_ONCE)
		SpawnInfo.NPC:Roam(100, 2)
		SpawnInfo.NPC:Patrol({405,406}, PT_ONCE)
		--SpawnInfo.NPC:NonDelayBalloon("��")				
		SpawnInfo.NPC:Roam(100, 10)
		SpawnInfo.NPC:Narration("$$Field_107_129")
		SpawnInfo.NPC:Despawn(false)	
--]]	
	elseif (SpawnInfo.NPCID == 107054) then -- �������� ��� �̵�
		
		SpawnInfo.NPC:Say("$$Field_107_134")
		SpawnInfo.NPC:Patrol({502}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_136")
		SpawnInfo.NPC:Patrol({503}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_138")
		SpawnInfo.NPC:Patrol({504}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_140")
		SpawnInfo.NPC:Patrol({505}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_142")
		SpawnInfo.NPC:Patrol({506}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_144")
		SpawnInfo.NPC:Patrol({507}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_146")
		SpawnInfo.NPC:Patrol({508}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_148")
		SpawnInfo.NPC:Patrol({507}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_150")
		SpawnInfo.NPC:Patrol({506}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_152")
		SpawnInfo.NPC:Patrol({505}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_154")
		SpawnInfo.NPC:Patrol({504}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_156")
		SpawnInfo.NPC:Patrol({503}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_158")
		SpawnInfo.NPC:Patrol({502, 501}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_160")
		
		
	elseif (SpawnInfo.NPCID == 107010) then -- �ø�ǲ ��Ʈ��		
		SpawnInfo.NPC:Patrol({10000,10001,10002,10003,10004,10005,10006,10007,10008}, PT_LOOP)		
--[[
	elseif (SpawnInfo.NPCID == 107050) then -- �ẹ�� �䷹�븣
		SpawnInfo.NPC:SetAlwaysRun(true)	
		SpawnInfo.NPC:Patrol({407, 405}, PT_LOOP)		
	
	elseif (SpawnInfo.NPCID == 107239) then -- ������ ���� �̺�Ʈ
		SpawnInfo.NPC:Patrol({407,408}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_107_172")
		SpawnInfo.NPC:Say("$$Field_107_173")
		SpawnInfo.NPC:Say("$$Field_107_174")
		SpawnInfo.NPC:Say("$$Field_107_175")
		SpawnInfo.NPC:Say("$$Field_107_176")
		--SpawnInfo.NPC:Talent
		SpawnInfo.NPC:ScriptSelf("Field_107_Summon")
--]]
	elseif (SpawnInfo.NPCID == 107007) then -- �׷��ý� �ι�
		SpawnInfo.NPC:Patrol({301,302,303,304,305,306,307,308,309}, PT_LOOP)
	
	end
end
--[[
function Field_107_Summon(Self)
	local Field = Self:GetField()
	if (Field:GetNPCCount(107050) == 0) then
		Field:SpawnByID(1605)
	end
end
--]]
function Field_107_DespawnSelf(Self, Opponent)
	Self:Despawn(true)	-- ������ �����ϰ� ����
end
--[[
function Field_107:OnDie(DespawnInfo)
	local Field = DespawnInfo.Field
	if (DespawnInfo.NPCID == 107050) and (Field:GetNPCCount(107239) == 1) then
		local Summoner = Field:GetSpawnNPC(1222)
		Summoner:Wait(5)
		Summoner:Say("$$Field_107_202")
		Summoner:Say("$$Field_107_203")
		Summoner:Say("$$Field_107_204")
		Summoner:Say("$$Field_107_205")
		Summoner:Say("$$Field_107_206")
		Summoner:Despawn(false)
	end
	
	if (Field:GetNPCCount(107051) == 0) then
		local Maid = Field:GetSpawnNPC(10150)
		Maid:EnableInteraction()
	end
end
--]]