-- ���ٻ�
function Field_102:OnCreate()
	this:SetTimer(1, 7200, false)	-- Ʈ��ȣ��
end

function Field_102:OnSensorEnter_2000000(actor)
	this:KillTimer(1);
	this:SetTimer(1, 2, false)	-- �׽�Ʈ�� ������ ������ Ʈ��ȣ�� ����
end

function Field_102:OnSensorEnter_2000001(actor)
	this:KillTimer(2);
	this:SetTimer(2, 2, false)	-- �׽�Ʈ�� ������ ������ �����ȣ�� ����
end

function Field_102:OnTimer(TimerID) 
	if (TimerID == 1) then	
		local QuestPVP = this:GetQuestPVP();
		QuestPVP:BeginEvent(1);		
		this:SetTimer(2, 7200, false)	-- �����ȣ�� ����
		
	elseif (TimerID == 2) then
		local QuestPVP = this:GetQuestPVP();
		QuestPVP:BeginEvent(2);
		this:SetTimer(1, 7200, false)	-- Ʈ��ȣ�� ����			
	end
end

function Field_102:OnWeatherChanged(Weather)
	if (Weather == WEATHER_HEAVY_SNOWY) or (Weather == WEATHER_SNOWY)then
		this:EnableSensor(102020) -- ���� �ö��� ��ư� Ʈ���̾��.
	else
		this:DisableSensor(102020)
	end
end

function Field_102:OnSensorEnter_2(Actor)
	if (Actor == Player) then
		Player:UpdateQuestVar(102020,2) -- ����Ʈ �Ϸ�
		Player:Narration("$$Field_102_40")
		-- ķ���� �̵��ϴ� ��ũ��Ʈ
	end
end

function Field_102:OnSensorEnter_102003(Actor)
	--local Field = this:GetID()
	local Pilgrim = this:GetNPC(102223)
	if (Actor == Pilgrim) then
		local Guide = this:GetNPC(102215)
		Guide:Balloon("$$Field_102_50")
	end
end


function Field_102:OnSpawn(SpawnInfo)		
	if (SpawnInfo.NPCID == 102204) then -- ������

		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:Patrol({1020031,1020032,1020033,1020034,1020035,1020036,1020037,1020038}, PT_ONCE)
		SpawnInfo.NPC:Say("$$Field_102_60")
		SpawnInfo.NPC:ScriptSelf("Field_102_DespawnSelf")	-- ���� �Ǳ�	


	elseif (SpawnInfo.NPCID == 102150) then -- Ʈ�� ������ ��ų�� ����

		QuestPVP = this:GetQuestPVP();
		QuestPVP:EnableMarkPos(102150);		
		-- SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:GainBuff(40109)

		SpawnInfo.NPC:Say("$$Field_102_71")
		SpawnInfo.NPC:Patrol({8001,8002,8003, 8004, 8005, 8006, 8007}, PT_ONCE)		

	elseif (SpawnInfo.NPCID == 102151) then -- ����� ������ �����޼� ����

		QuestPVP = this:GetQuestPVP();
		QuestPVP:EnableMarkPos(102151);		
	    -- SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:GainBuff(40109)

		SpawnInfo.NPC:Say("$$Field_102_81")
		SpawnInfo.NPC:Patrol({9001,9002,9003, 9004}, PT_ONCE)			
		
	
	elseif (SpawnInfo.SpawnID == 613) then -- ���ٻ� �ں�Ʈ ��ɲ� (�ι�)

		SpawnInfo.NPC:Patrol({6130,6131,6132,6133,6134,6133,6132,6135,6136,6137}, PT_LOOP)
	elseif (SpawnInfo.SpawnID == 614) then -- ���ٻ� �ں�Ʈ ��ɲ� (�ι�)

		SpawnInfo.NPC:Patrol({6140,6141,6142,6143,6144,6145,6146}, PT_LOOP)
	elseif (SpawnInfo.SpawnID == 615) then -- ���ٻ� �ں�Ʈ ��ɲ� (�ι�)

		SpawnInfo.NPC:Patrol({6150,6151,6152,6153,6154,6155,6156}, PT_LOOP)	
	elseif (SpawnInfo.SpawnID == 102111) then -- ���ɴ���

		SpawnInfo.NPC:Patrol({1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120}, PT_LOOP)	
	elseif (SpawnInfo.SpawnID == 102128) then -- ����� ����
		SpawnInfo.NPC:GainBuff(110028)
		SpawnInfo.NPC:DisableInteraction()
	elseif (SpawnInfo.SpawnID == 111040) then -- ����Ű�� ����
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:Patrol({1110401,1110402,1110403,1110404,1110405,1110406,1110407,1110408,1110409}, PT_LOOP_BACKORDER)			
	end	
end

function Field_102_DespawnSelf(Self, Opponent)
	Self:Despawn(true)	-- ������ �����ϰ� ����
end

function Field_102:OnMarkerArrive_8007(NPC) -- Ʈ���� ù��° ����
	local TrollPrist = this:GetNPC(102150);

	TrollPrist:Say("$$Field_102_110")
	TrollPrist:UseTalentSelf(210215002);
	this:SpawnDelay(102166, vec3(32140,35187,13112), 1);	
	this:SpawnDelay(102158, vec3(32080,34654,13052), 3);
	this:SpawnDelay(102158, vec3(31480,35231,13071), 3);
end

function Field_102:OnMarkerArrive_8010(NPC) -- Ʈ���� 2��° ����
	local TrollPrist = this:GetNPC(102150);

	TrollPrist:Say("$$Field_102_120")
	TrollPrist:UseTalentSelf(210215003);
	this:SpawnDelay(102166, vec3(37805,36589,14140), 1);
	this:SpawnDelay(102159, vec3(38064,36149,14087), 3);
	this:SpawnDelay(102159, vec3(38583,36815,14130), 3);
end

function Field_102:OnMarkerArrive_8014(NPC) -- Ʈ�� ������ ����

	local TrollPrist = this:GetNPC(102150);	

	TrollPrist:Say("$$Field_102_131")
	TrollPrist:UseTalentSelf(210215001);
	this:SpawnDelayByID(102168, 3);
	this:SpawnDelayByID(102169, 3);
	this:SpawnDelayByID(102170, 3);
	this:SpawnDelayByID(102171, 3);
	this:SpawnDelayByID(102172, 3);
end


function Field_102:OnMarkerArrive_9004(NPC) -- ������� ù��° ����
	local OgrePrist = this:GetNPC(102151);	

	OgrePrist:Say("$$Field_102_144")
	OgrePrist:UseTalentSelf(210215002);
	this:SpawnDelay(102169, vec3(39490,44132,13437), 1);	
	this:SpawnDelay(102156, vec3(38810,44369,13435), 3);
	this:SpawnDelay(102156, vec3(39721,44828,13438), 3);	
end


function Field_102:OnMarkerArrive_9006(NPC) -- ������� 2��° ����
	local OgrePrist = this:GetNPC(102151);

	OgrePrist:Say("$$Field_102_155")
	OgrePrist:UseTalentSelf(210215003);
	this:SpawnDelay(102169, vec3(38208,37100,14188), 1);	
	this:SpawnDelay(102157, vec3(38411,36701,14132), 3);
	this:SpawnDelay(102157, vec3(37775,36545,14135), 3);
	
end

function Field_102:OnMarkerArrive_9012(NPC) -- ������� ������ ����
	local OgrePrist = this:GetNPC(102151);	

	OgrePrist:Say("$$Field_102_166")	
	OgrePrist:UseTalentSelf(210215001);	
	this:SpawnDelayByID(102175, 3);
	this:SpawnDelayByID(102176, 3);
	this:SpawnDelayByID(102177, 3);
	this:SpawnDelayByID(102178, 3);
	this:SpawnDelayByID(102179, 3);
end
