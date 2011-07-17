
-- ////////////////////////// Ʈ���̾� ���� ���� ///////////////////////////
function Field_1100001:OnSensorEnter_1(actor)
	-- ù��° �÷��̾� �ʵ� ����.
	local field = actor:GetField()
	local cenes = field:GetSpawnNPC(2)
	field:PlayBGM("bgm_Scenetalk_2")

	field:DisableSensor(1)
	
	cenes:Wait(2)
	cenes:Say("$$Field_1100001_12")
	cenes:Say("$$Field_1100001_13")
end

function Field_1100001:OnSensorEnter_2(actor)
	-- ���� ����
	local field = actor:GetField()
	local cenes = field:GetSpawnNPC(2)
	local soldierTable = {3, 4, 5, 6, 7, 8, 9, 10, 11}

	field:DisableSensor(2)	
	cenes:SetAlwaysRun(true)
	
	-- ��å ���� ��� ����.
	field:SpawnByID(31)
	field:SpawnByID(32)
	field:SpawnByID(33)
	field:SpawnByID(34)
	field:SpawnByID(35)

	-- ������ �̵� ����
	local soldier = {}
	
	for i=1, 9 do
		soldier[i] = field:GetSpawnNPC(soldierTable[i])
		
		soldier[i]:SetAlwaysRun(true)
		soldier[i]:WaitFor(cenes)
	end -- for 

	soldier[1]:Patrol({2,3,4,5}, PT_ONCE)
	soldier[2]:Patrol({11,12,13,14}, PT_ONCE)
	soldier[3]:Patrol({21,22,23}, PT_ONCE)
	soldier[4]:Patrol({31,32,33,34}, PT_ONCE)	
	soldier[5]:Patrol({2,12,13,14,41}, PT_ONCE)
	soldier[6]:Patrol({11,22,42}, PT_ONCE)
	soldier[7]:Patrol({21,32,43,44}, PT_ONCE)
	soldier[8]:Patrol({31,12,13,45}, PT_ONCE)
	soldier[9]:Patrol({11,22,23,35}, PT_ONCE)				
	
	-- �������� ����
	
	cenes:Say("$$Field_1100001_54",6.7)
	cenes:Say("$$Field_1100001_55",4.3)
	cenes:Say("$$Field_1100001_56",4.0)		
	cenes:SayAndNarration("$$Field_1100001_57",0.8)	
	cenes:ScriptSelf("Field_1100001_MusicOn")	
	cenes:NextAction()
	cenes:Patrol({2,3,4,5,6--[[,7,8,9--]]}, PT_ONCE)
	cenes:ScriptSelf("Field_1100001_OnArea_3")	-- ���� ���� 1 Ȱ��ȭ		
end

function Field_1100001_OnArea_3(cenes)
	local field = cenes:GetField()
	local soldierTable = {3, 4, 5, 6, 7, 8, 9, 10, 11}	

	-- ������ �̵� ����
	local soldier = {}
	
	for i=1, 9 do
		soldier[i] = field:GetSpawnNPC(soldierTable[i])
		
		soldier[i]:WaitFor(cenes)
	end -- for

	soldier[1]:Patrol({5}, PT_ONCE)
	soldier[2]:Patrol({35}, PT_ONCE)
	soldier[3]:ScriptSelf("PuppetBegin")
	soldier[3]:Say("$$Field_1100001_80")
	soldier[4]:ScriptSelf("PuppetBegin")
	soldier[5]:Patrol({15}, PT_ONCE)
	soldier[6]:Patrol({24}, PT_ONCE)
	soldier[7]:Patrol({46}, PT_ONCE)
	soldier[8]:Patrol({7}, PT_ONCE)
	soldier[9]:Patrol({47}, PT_ONCE)
	
	-- �������� ����
	PuppetBegin(cenes)
	
	cenes:GainBuff(100100)
	cenes:SayAndNarration("$$Field_1100001_92",3.4)
	cenes:NextAction()
	cenes:ScriptSelf("PuppetFinish")
	
	cenes:Patrol({7}, PT_ONCE)
	cenes:ScriptSelf("Field_1100001_OnArea_4")
end

function Field_1100001_OnArea_4(cenes)
	local field = cenes:GetField()
	local soldierTable = {3, 4, 5, 6, 7, 8, 9, 10, 11}

	-- ������ �̵� ����
	local soldier = {}
	
	for i=1, 9 do
		soldier[i] = field:GetSpawnNPC(soldierTable[i])
		
		soldier[i]:WaitFor(cenes)
	end -- for
	
	soldier[1]:ScriptSelf("PuppetBegin")
	soldier[2]:ScriptSelf("PuppetBegin")
	soldier[7]:ScriptSelf("PuppetBegin")
	soldier[5]:Patrol({16}, PT_ONCE)
	soldier[6]:Patrol({25}, PT_ONCE)
	soldier[8]:Patrol({49}, PT_ONCE)
	soldier[9]:Patrol({48}, PT_ONCE)	

	-- �������� ����
	PuppetBegin(cenes)
	
	cenes:GainBuff(100100)
	cenes:SayAndNarration("$$Field_1100001_125",1.8)
	cenes:NextAction()
	cenes:ScriptSelf("PuppetFinish")
	
	cenes:Patrol({8}, PT_ONCE)
	cenes:ScriptSelf("Field_1100001_OnArea_5")
end

function Field_1100001_OnArea_5(cenes)
	local field = cenes:GetField()
	local ogre = field:SpawnByID(1000)
	local soldierTable = {3, 4, 5, 6, 7, 8, 9, 10, 11}

	field:DisableSensor(7)

	-- ������ �̵� ����
	local soldier = {}
	
	for i=5, 9 do 
		soldier[i] = field:GetSpawnNPC(soldierTable[i])
		
		soldier[i]:WaitFor(cenes)		
	end -- for

	--soldier[1]:Roam(500, 0)
	--soldier[2]:Roam(500, 0)
	--soldier[3]:Roam(500, 0)
	--soldier[4]:Roam(500, 0)
	--soldier[7]:Roam(500, 0)
	soldier[5]:Patrol({50}, PT_ONCE)
	soldier[6]:Patrol({50}, PT_ONCE)
	soldier[8]:Patrol({50}, PT_ONCE)
	soldier[9]:Patrol({50}, PT_ONCE)
	
	-- �������� ����
	PuppetBegin(cenes)	
	
	cenes:Patrol({52}, PT_ONCE)
	cenes:GainBuff(100100)
	cenes:SayAndNarration("$$Field_1100001_164",2.0)
	cenes:FaceTo(ogre)
	cenes:NextAction()
--	cenes:Patrol({50}, PT_ONCE)
	cenes:ScriptSelf("PuppetFinish")
	
	--cenes:WaitFor(ogre)

	ogre:SetAlwaysRun(true)
	
	PuppetBegin(ogre)
	ogre:Patrol({9,50}, PT_ONCE)
	--GLog_Job(ogre)
	
	--GLog_Job(ogre)
	ogre:ScriptSelf("PuppetFinish")
	ogre:Attack(cenes)
	
	--GLog("Field_1100001_OnArea_5")
	--GLog_Job(ogre)
	
	--ogre:NextAction()
	

	cenes:Attack(ogre)		
end

function Field_1100001:OnDie(DespawnInfo) -- ����� �����
	if not (DespawnInfo.SpawnID == 1000) then return end
	
	local field = DespawnInfo.Field
	local cenes = field:GetSpawnNPC(2)
	local soldierTable = {3, 4, 5, 6, 7, 8, 9, 10, 11}

	-- ������ �̵� ����
	local soldier = {}
	
	for i=5, 9 do 
		soldier[i] = field:GetSpawnNPC(soldierTable[i])
		
		soldier[i]:WaitFor(cenes)		
	end -- for
	
	soldier[5]:Patrol({51}, PT_ONCE)
	soldier[6]:Patrol({50}, PT_ONCE)
	soldier[8]:Patrol({53}, PT_ONCE)
	soldier[9]:Patrol({48}, PT_ONCE)
	
	-- �������� ����
	PuppetBegin(cenes)
	
	cenes:Wait(10)
	--cenes:GainBuff(100100)
	cenes:Say("$$Field_1100001_217",2.5)		
	--cenes:ScriptSelf("PuppetFinish")
	
	cenes:Patrol({9}, PT_ONCE)
	cenes:ScriptSelf("Field_1100001_OnArea_6")
end

function Field_1100001_OnArea_6(cenes)
	local field = cenes:GetField()
	field:EnableSensor(3)
	cenes:GainBuff(100100)
	cenes:Narration("$$Field_1100001_228")
end

function Field_1100001:OnSensorEnter_3(actor) -- ����Ʈ �Ϸ�
	AsPlayer(actor):UpdateQuestVar(110000, 3)	
end

function Field_1100001_MusicOn(self) -- ���� ���� ����
	local field = self:GetField()
	field:PlayBGM("bgm_war_9")
end
