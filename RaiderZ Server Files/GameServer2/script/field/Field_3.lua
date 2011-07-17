-- Portal to Teress


-- ////////////////////////// Ʈ���̾� ���� ���� ///////////////////////////
--[[
function Field_3:OnSensorInteract_2(Player) -- �޸����� �� : Ʈ���̾� ����
	if Player:CheckCondition(30031) == true then
		Player:GateToTrial(30030)
	end
end

function Field_3:OnSensorInteract_4(Player) -- ������� �� : Ʈ���̾� ����
	if Player:CheckCondition(30291) == true then
		Player:GateToTrial(30290)
	end
end

function Field_3:OnSensorInteract_6(Player) -- ������� ��(���) : Ʈ���̾� ���� �Ұ�	
	if Player:CheckCondition(30291) == true then
		Player:Narration("$$Field_3_20")
	end
end


function Field_3:OnSensorEnter_4(Actor) -- ������ ���ڰ� 6�� ������ ������ ����
	if (3 == AsNPC(Actor):GetID()) then
		this:DespawnByID(3)		
	end	
end
--]]

--//////////////////////////////// Ʈ����  �̺�Ʈ /////////////////////////////////////
--[[
function Field_3:OnTimeChanged(Time) -- ���ᶧ���� �����ϴ� ������ ����
    GLog("$$Field_3_43")
    if (Time == TIME_DAWN) then
		local NPC = this:GetSpawnNPC(3)
		NPC:Patrol({104}, PT_ONCE)
    end
	if (Time == TIME_SUNSET) then
		this:DespawnByID(3)
	end
end

function Field_3:OnTimer(TimerID) -- ������ ���� : ������ ��������� ������ ��ȯ
	if (TimerID == 3) then
		local NPC = this:GetSpawnNPC(3)
		NPC:Patrol({103,102,101}, PT_ONCE)
	end
end	
--]]


function MeteorWorshipper(Self, Opponent, Worshipper, Man1, Man2, Child1, Child2, Couple1, Couple2, Girl) -- � ���������� ����
	local Field = Self:GetField()
	local Worshipper = Field:GetSpawnNPC(61)
	Worshipper:MoveToMarker(312)
	Worshipper:MoveToMarker(313)	
	Worshipper:Balloon("$$Field_3_67")
	Worshipper:ScriptSelf("Field_3_ActiveMens")	-- ���� Ÿ�̹��� ������ �� ���⿡ ���� �Լ��� ����.
end
function Field_3_ActiveMens(Self, Opponent, Worshipper,Man1, Man2, Child1, Child2, Couple1, Couple2, Girl) -- ���� ���� �𿩵�
	local Field = Self:GetField()
	local Worshipper = Field:GetSpawnNPC(61)
	local Man1 = Field:GetSpawnNPC(269)
	local Man2 = Field:GetSpawnNPC(270)
	Worshipper:Balloon("$$Field_3_75")		
	Man1:Balloon("$$Field_3_76")
	Man2:Balloon("$$Field_3_77")
	Man1:MoveToMarker(323)
	Man2:MoveToMarker(322)	
	Man1:MoveToMarker(310)
	Man2:MoveToMarker(309)		
	Worshipper:ScriptSelf("Field_3_ActiveCouple")	-- ���� Ÿ�̹��� ������ �� ���⿡ ���� �Լ��� ����.
end
function Field_3_ActiveCouple(Self, Opponent, Worshipper,Man1, Man2, Child1, Child2, Couple1, Couple2, Girl) -- ������ �𿩵�
	local Field = Self:GetField()
	local Worshipper = Field:GetSpawnNPC(61)
	local Couple1 = Field:GetSpawnNPC(271)
	local Couple2 = Field:GetSpawnNPC(267)
	Couple2:Balloon("$$Field_3_89")
	Couple1:Wait(5)
	Couple1:MoveToMarker(318)
	Couple2:MoveToMarker(319)	
	Couple1:MoveToMarker(316)
	Couple2:MoveToMarker(317)		
	Worshipper:Balloon("$$Field_3_95")
	Worshipper:ScriptSelf("Field_3_ActiveChild")	-- ���� Ÿ�̹��� ������ �� ���⿡ ���� �Լ��� ����.	
end
function Field_3_ActiveChild(Self, Opponent, Worshipper,Man1, Man2, Child1, Child2, Couple1, Couple2, Girl) -- ���̵�� �ҳడ �𿩵�
	local Field = Self:GetField()
	local Worshipper = Field:GetSpawnNPC(61)
	local Child1 = Field:GetSpawnNPC(268)
	local Child2 = Field:GetSpawnNPC(273)
	local Girl = Field:GetSpawnNPC(272)
	Field:SpawnByID(272)
	Girl:MoveToMarker(311)	
	Child1:Balloon("$$Field_3_106")		
	Child2:Wait(5)	
	Child1:MoveToMarker(320)
	Child1:MoveToMarker(314)	
	Child2:MoveToMarker(321)
	Child2:MoveToMarker(315)		
	Worshipper:Balloon("$$Field_3_112")
	Worshipper:Balloon("$$Field_3_113")
	Worshipper:Balloon("$$Field_3_114")
	Worshipper:Balloon("$$Field_3_115")
	Worshipper:Balloon("$$Field_3_116")
	Worshipper:Balloon("$$Field_3_117")
	Worshipper:Balloon("$$Field_3_118")
	Worshipper:Balloon("$$Field_3_119")
	Worshipper:Balloon("$$Field_3_120")
	Worshipper:ScriptSelf("Field_3_Anger")	-- ���� Ÿ�̹��� ������ �� ���⿡ ���� �Լ��� ����.
end
function Field_3_Anger(Self, Opponent, Worshipper,Man1, Man2, Child1, Child2, Couple1, Couple2, Girl) -- �ݹ�
	local Field = Self:GetField()	
	local Worshipper = Field:GetSpawnNPC(61)
	local Man1 = Field:GetSpawnNPC(269)
	local Man2 = Field:GetSpawnNPC(270)
	local Couple1 = Field:GetSpawnNPC(271)
	local Couple2 = Field:GetSpawnNPC(267)
	local Child1 = Field:GetSpawnNPC(268)
	local Child2 = Field:GetSpawnNPC(273)
	local Girl = Field:GetSpawnNPC(272)

    Man1:	Balloon("$$Field_3_134")
	Couple2:Wait(1)
	Girl:Wait(2)		
	Couple2:Balloon("$$Field_3_137")
	Girl:Balloon("$$Field_3_138")
	Worshipper:Wait(3)
	Couple1:Wait(5)
	Man1:Wait(5)	
	Man2:Wait(6)
	Worshipper:Balloon("$$Field_3_143")
	Couple1:Balloon("$$Field_3_144")
    Man2:	Balloon("$$Field_3_145")
	Man1:Balloon("$$Field_3_146")
	Worshipper:Wait(5)	
	Child1:Wait(15)	
	Couple1:Wait(7)		
	Worshipper:Balloon("$$Field_3_150")
	Child1:Balloon("$$Field_3_151")
	Couple1:Balloon("$$Field_3_152")
	Worshipper:Wait(3)		
	Worshipper:Balloon("$$Field_3_154")
	Worshipper:MoveToMarker(324)	
	Worshipper:ScriptSelf("Field_3_End")	-- ���� Ÿ�̹��� ������ �� ���⿡ ���� �Լ��� ����.
end
function Field_3_End(Self, Opponent, Worshipper,Man1, Man2, Child1, Child2, Couple1, Couple2, Girl) -- �ʱ�ȭ
	local Field = Self:GetField()	
	local Worshipper = Field:GetSpawnNPC(61)
	local Man1 = Field:GetSpawnNPC(269)
	local Man2 = Field:GetSpawnNPC(270)
	local Couple1 = Field:GetSpawnNPC(271)
	local Couple2 = Field:GetSpawnNPC(267)
	local Child1 = Field:GetSpawnNPC(268)
	local Child2 = Field:GetSpawnNPC(273)
	local Girl = Field:GetSpawnNPC(272)
	
	Worshipper:SetTimer(5, 160, false) 
	Worshipper:ScriptSelf("Field_3_DespawnSelf")
	Girl:Despawn(false)
	Child2:Balloon("$$Field_3_172")
	Child1:Despawn(true)
	Child2:Despawn(true)
	Man1:Despawn(true)
	Man2:Despawn(true)
	Couple1:Despawn(true)
	Couple2:Despawn(true)
end

--[[ Old Version
	local Soldier1 = Field:GetSpawnNPC(290)
	local Soldier2 = Field:GetSpawnNPC(291)
	local Soldier3 = Field:GetSpawnNPC(292)	
	Soldier1:Move(vec3(51710.0, 52264.7, 2283.0))
	Soldier2:Move(vec3(51682.3, 52380.4, 2283.0))
	Soldier3:Move(vec3(51611.8, 52212.2, 2283.0))	
	Soldier1:Balloon("$$Field_3_188")
	Soldier1:Balloon("$$Field_3_189")
	Soldier2:Wait(7)
	Soldier3:Wait(7)	
	Soldier2:Move(vec3(52158.0, 52034.9, 2383.0))
	Soldier3:Move(vec3(52320.8, 52042.2, 2381.3))
	Worshipper:Wait(13)
	Worshipper:Balloon("$$Field_3_195")
	Soldier2:Wait(5)
	Soldier3:Wait(5)		
	Worshipper:Move(vec3(53000.0, 53000.9, 2383.0))	
	Soldier2:Move(vec3(53000.0, 53000.9, 2383.0))	
	Soldier3:Move(vec3(53000.0, 53000.9, 2383.0))	
	Soldier2:ScriptSelf("DespawnSelf")
	Worshipper:ScriptSelf("DespawnSelf")
	Soldier3:ScriptSelf("DespawnSelf")
	Soldier1:Wait(5)
	Soldier1:Balloon("$$Field_3_205")
	Soldier1:ScriptSelf("DespawnSelf")
end
--]]

function Field_3:OnTimer(TimerID)
	if (TimerID == 5) then 	-- � ���������� ����
		this:SpawnByID(61)
	end
	
	--[[if (TimerID == 6) then	-- ������ ȣ�� ����
		local Beggar = this:GetSpawnNPC(55)
		local dice = math.random(0,2)		
		if( dice == 0) then 
			Beggar:Balloon("$$Field_3_219")
		end
		if( dice == 1) then 
			Beggar:Balloon("$$Field_3_222")
		end
		if( dice == 2) then 
			Beggar:Balloon("$$Field_3_225")
		end
	end	--]]

	if (TimerID == 6) then	-- ���ٶ��� ���ܸ�
		local ChatterBox1 = this:GetSpawnNPC(280)
		local ChatterBox2 = this:GetSpawnNPC(281)
		local ChatterBox3 = this:GetSpawnNPC(282)
		local ChatterBox4 = this:GetSpawnNPC(283)
		local ChatterBox5 = this:GetSpawnNPC(284)
		local ChatterBox6 = this:GetSpawnNPC(285)
		local ChatterBox7 = this:GetSpawnNPC(286)
		local ChatterBox8 = this:GetSpawnNPC(287)		
		local dice = math.random(0,3)
		if( dice == 0) then 
			ChatterBox1:Balloon("$$Field_3_240")
			ChatterBox3:Balloon("$$Field_3_241")
			ChatterBox5:Balloon("$$Field_3_242")
			ChatterBox7:Balloon("$$Field_3_243")
			ChatterBox2:Wait(3);ChatterBox4:Wait(3);ChatterBox6:Wait(3);ChatterBox8:Wait(3)
			ChatterBox2:Balloon("$$Field_3_245")
			ChatterBox4:Balloon("$$Field_3_246")
			ChatterBox6:Balloon("$$Field_3_247")	
			ChatterBox8:Balloon("$$Field_3_248")
		end		
		if( dice == 1) then 
			ChatterBox2:Balloon("$$Field_3_251")
			ChatterBox4:Balloon("$$Field_3_252")
			ChatterBox6:Balloon("$$Field_3_253")
			ChatterBox8:Balloon("$$Field_3_254")
			ChatterBox1:Wait(3);ChatterBox3:Wait(3);ChatterBox5:Wait(3);ChatterBox7:Wait(3)
			ChatterBox1:Balloon("$$Field_3_256")
			ChatterBox3:Balloon("$$Field_3_257")	
			ChatterBox5:Balloon("$$Field_3_258")
			ChatterBox7:Balloon("$$Field_3_259")
		end
		if( dice == 2) then 
			ChatterBox1:Balloon("$$Field_3_262")
			ChatterBox3:Balloon("$$Field_3_263")
			ChatterBox5:Balloon("$$Field_3_264")
			ChatterBox7:Balloon("$$Field_3_265")			
			ChatterBox2:Wait(3);ChatterBox4:Wait(3);ChatterBox6:Wait(3);ChatterBox8:Wait(3)
			ChatterBox2:Balloon("$$Field_3_267")	
			ChatterBox4:Balloon("$$Field_3_268")
			ChatterBox6:Balloon("$$Field_3_269")
			ChatterBox8:Balloon("$$Field_3_270")
		end
		if( dice == 3) then 
			ChatterBox2:Balloon("$$Field_3_273")
			ChatterBox4:Balloon("$$Field_3_274")
			ChatterBox6:Balloon("$$Field_3_275")
			ChatterBox8:Balloon("$$Field_3_276")
			ChatterBox1:Wait(3);ChatterBox3:Wait(3);ChatterBox5:Wait(3);ChatterBox7:Wait(3)
			ChatterBox1:Balloon("$$Field_3_278")
			ChatterBox3:Balloon("$$Field_3_279")
			ChatterBox5:Balloon("$$Field_3_280")
			ChatterBox7:Balloon("$$Field_3_281")				
		end		
	end	
	
	--[[if (TimerID == 7) then	-- ��ư�� ������ �̺�Ʈ?
		local Gatekeeper = this:GetSpawnNPC(60)
		local Orton = this:GetSpawnNPC(54)
		local Hampton = this:GetSpawnNPC(6)
		Orton:Balloon("$$Field_3_289")
		Gatekeeper:Wait(5)
		Gatekeeper:Balloon("$$Field_3_291")
		Orton:Wait(5)
		Orton:Balloon("$$Field_3_293")
		Hampton:Wait(14)
		Hampton:Balloon("$$Field_3_295")
		Gatekeeper:Wait(1)
		Gatekeeper:Balloon("$$Field_3_297")
	end--]]
end


function Field_3:OnSpawn(SpawnInfo)
	

	--[[if (SpawnInfo.NPCID == 3032) then -- ������ ���� ����~���忡�� ���
		SpawnInfo.NPC:Patrol({104,102,103}, PT_ONCE)
	elseif (SpawnInfo.NPCID == 3047) then
		if (SpawnInfo.SpawnID == 61) then	
			SpawnInfo.NPC:ScriptSelf("MeteorWorshipper") -- � �������ڰ� �����ϸ� �̺�Ʈ�� ���۵�
		end--]]
	if (SpawnInfo.NPCID == 3015) then -- �ҳ�� �� ��å(�ҳ�)
		if (SpawnInfo.SpawnID == 3015) then
			SpawnInfo.NPC:SetAlwaysRun(true)		
			SpawnInfo.NPC:Patrol({30151,30152,30153,30154,30155,30156,30157,30158,30159,30160,30161,30162,30163,30164,30165,30166,30167,30168,30169,30170,30171,30172,30173,30174,30175,30176,30177,30178}, PT_LOOP)
		end
	elseif (SpawnInfo.NPCID == 3016) then -- �ҳ�� �� ��å(��)	
		if (SpawnInfo.SpawnID == 3016) then	
			SpawnInfo.NPC:SetAlwaysRun(true)				
			SpawnInfo.NPC:Patrol({30151,30152,30153,30154,30155,30156,30157,30158,30159,30160,30161,30162,30163,30164,30165,30166,30167,30168,30169,30170,30171,30172,30173,30174,30175,30176,30177,30178}, PT_LOOP)
		end		
		
	elseif (SpawnInfo.NPCID == 3017) then -- ����ƾ, ����, ���ܸ�  : ����ƾ ���� �ð� �������� 40�� ���� ȣ�� ���� looper		
		this:SetTimer(6, 40, true)
		
	elseif (SpawnInfo.NPCID == 3068 or 3069) then -- ���� ���� ���� (����)
		if (SpawnInfo.SpawnID == 206) then	
			SpawnInfo.NPC:Patrol({260,250,251,252,253,254,255,256,257,258,259}, PT_LOOP)			
		elseif (SpawnInfo.SpawnID == 207) then
			SpawnInfo.NPC:Patrol({253,254,255,256,257,258,259,260,250,251,252}, PT_LOOP)
		elseif (SpawnInfo.SpawnID == 217) then
			SpawnInfo.NPC:Patrol({257,258,259,260,250,251,252,253,254,255,256}, PT_LOOP)			
		elseif (SpawnInfo.SpawnID == 218) then
			SpawnInfo.NPC:Patrol({284,285,286,270,271,272,273,274,275,276,277,278,279,280,281,282,283}, PT_LOOP)			
		elseif (SpawnInfo.SpawnID == 219) then
			SpawnInfo.NPC:Patrol({272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,270,271}, PT_LOOP)				
		elseif (SpawnInfo.SpawnID == 220) then
			SpawnInfo.NPC:Patrol({276,277,278,279,280,281,282,283,284,285,286,270,271,272,273,274,275}, PT_LOOP)							
		end

	end
	
	if (SpawnInfo.NPCID == 3077) then -- �ε� �ϲ� ��Ʈ��
		if (SpawnInfo.SpawnID == 234) then	
			
			SpawnInfo.NPC:Patrol({215, 216}, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Patrol({216,217,218}, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)	
			SpawnInfo.NPC:Balloon("$$Field_3_349")
			SpawnInfo.NPC:Patrol({218,217,216,215}, PT_ONCE)	
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)		
			SpawnInfo.NPC:Balloon("$$Field_3_352")	
			SpawnInfo.NPC:UseTalent(307702, SpawnInfo.NPC)	
			SpawnInfo.NPC:Wait(math.random(1, 3));	-- 1~3�� AI ���߱�
			SpawnInfo.NPC:ScriptSelf("Field_3_DespawnSelf");	-- ���� �Ǳ�		
		elseif (SpawnInfo.SpawnID == 235) then	
			local path1 = {210, 211}
			local path2 = {211, 212}
			local path3 = {212, 211, 210}
			
			SpawnInfo.NPC:Patrol(path1, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Patrol(path2, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Patrol(path3, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Balloon("$$Field_3_367")	
			SpawnInfo.NPC:UseTalent(307702, SpawnInfo.NPC)	
			SpawnInfo.NPC:Wait(math.random(1, 3));	-- 1~3�� AI ���߱�
			SpawnInfo.NPC:ScriptSelf("Field_3_DespawnSelf");	-- ���� �Ǳ�
		elseif (SpawnInfo.SpawnID == 236) then	
			local path1 = {212}
			local path2 = {213, 214, 218}
			local path3 = {213, 212}
			
			SpawnInfo.NPC:Patrol(path1, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)	
			SpawnInfo.NPC:Patrol(path2, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Patrol(path3, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Balloon("$$Field_3_382")	
			SpawnInfo.NPC:UseTalent(307702, SpawnInfo.NPC)
			SpawnInfo.NPC:Wait(math.random(1, 3));	-- 1~3�� AI ���߱�
			SpawnInfo.NPC:ScriptSelf("Field_3_DespawnSelf");	-- ���� �Ǳ�
			
		elseif (SpawnInfo.SpawnID == 237) then	
			local path1 = {218, 217, 216}
			local path2 = {216, 217, 218}
			
			SpawnInfo.NPC:Patrol(path1, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Patrol(path2, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Balloon("$$Field_3_395")	
			SpawnInfo.NPC:UseTalent(307702, SpawnInfo.NPC)	
			SpawnInfo.NPC:Wait(math.random(1, 3));	-- 1~3�� AI ���߱�
			SpawnInfo.NPC:ScriptSelf("Field_3_DespawnSelf");	-- ���� �Ǳ�
			
		elseif (SpawnInfo.SpawnID == 238) then
			local path1 = {219}
			local path2 = {219, 220}
			local path3 = {220, 219}
			
			SpawnInfo.NPC:Patrol(path1, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)	
			SpawnInfo.NPC:Patrol(path2, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Patrol(path3, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Patrol(path2, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)	
			SpawnInfo.NPC:Patrol(path3, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Balloon("$$Field_3_415")	
			SpawnInfo.NPC:Wait(math.random(1, 3));	-- 1~3�� AI ���߱�
			SpawnInfo.NPC:ScriptSelf("Field_3_DespawnSelf");	-- ���� �Ǳ�
			
		elseif (SpawnInfo.SpawnID == 239) then
			local path = {221,222,223}
			SpawnInfo.NPC:Patrol(path, PT_LOOP_BACKORDER)
		
		elseif (SpawnInfo.SpawnID == 240) then
			local path = {224,223,222,219}
			SpawnInfo.NPC:Patrol(path, PT_LOOP_BACKORDER)
		
		elseif (SpawnInfo.SpawnID == 241) then
			local path = {225,222,223,224}
			SpawnInfo.NPC:Patrol(path, PT_LOOP_BACKORDER)
			
		elseif (SpawnInfo.SpawnID == 242) then
			local path1 = {208,207,206,205,204}
			local path2 = {205,206,207,208}

			SpawnInfo.NPC:Patrol(path1, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Patrol(path2, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Balloon("$$Field_3_439")		
			SpawnInfo.NPC:UseTalent(307702, SpawnInfo.NPC)	
			SpawnInfo.NPC:Wait(math.random(1, 3));	-- 1~3�� AI ���߱�
			SpawnInfo.NPC:ScriptSelf("Field_3_DespawnSelf");	-- ���� �Ǳ�
			
		elseif (SpawnInfo.SpawnID == 243) then	
			local path1 = {201,202,203,204}
			local path2 = {203,202,201}
			
			SpawnInfo.NPC:Patrol(path1, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Patrol(path2, PT_ONCE)
			SpawnInfo.NPC:Balloon("$$Field_3_451")		
			SpawnInfo.NPC:UseTalent(307702, SpawnInfo.NPC)	
			SpawnInfo.NPC:Wait(math.random(1, 3));	-- 1~3�� AI ���߱�
			SpawnInfo.NPC:ScriptSelf("Field_3_DespawnSelf");	-- ���� �Ǳ�		
			
		elseif (SpawnInfo.SpawnID == 244) then
			local path1 = {204,203,206,209,210}
			local path2 = {209,226,203,204}
			
			SpawnInfo.NPC:Patrol(path1, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)	
			SpawnInfo.NPC:Patrol(path2, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Balloon("$$Field_3_464")		
			SpawnInfo.NPC:UseTalent(307702, SpawnInfo.NPC)		
			SpawnInfo.NPC:Wait(math.random(1, 3));	-- 1~3�� AI ���߱�
			SpawnInfo.NPC:ScriptSelf("Field_3_DespawnSelf");	-- ���� �Ǳ�
		
		elseif (SpawnInfo.SpawnID == 245) then	
			local path1 = {212,209,226,203,204}	
			local path2 = {203,226,209,212}
			
			SpawnInfo.NPC:Patrol(path1, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)	
			SpawnInfo.NPC:Patrol(path2, PT_ONCE)
			SpawnInfo.NPC:UseTalent(307701, SpawnInfo.NPC)
			SpawnInfo.NPC:Balloon("$$Field_3_477")
			SpawnInfo.NPC:UseTalent(307702, SpawnInfo.NPC)	
			SpawnInfo.NPC:Wait(math.random(1, 3));	-- 1~3�� AI ���߱�
			SpawnInfo.NPC:ScriptSelf("Field_3_DespawnSelf");	-- ���� �Ǳ�		
		end	
	end
	
end



function Field_3_DespawnSelf(Self, Opponent)
	Self:Despawn(true);	-- ������ �����ϰ� ����
end

