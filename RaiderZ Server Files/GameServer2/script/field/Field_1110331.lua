-- ����Ʈ �ع� ����

function Field_1110331:OnSpawn(SpawnInfo)
	if (SpawnInfo.SpawnID == 111010) then -- ����Ű
		SpawnInfo.NPC:SetAlwaysRun(true)
		SpawnInfo.NPC:GainBuff(110037)
	end	
end

function Field_1110331:OnSensorEnter_1(Actor) 
	if (Actor:IsPlayer() == true) then
		this:DisableSensor(1)
		local Urcus = this:GetSpawnNPC(111250)	
		local Session = this:MakeSession("Move",{Urcus})		
	end
end

function Field_1110331:OnSessionScene_Move_Begin(Session)
	local Urcus = this:GetSpawnNPC(111250)	

	Session:Blocking()
		Urcus:SetAlwaysRun(true)
		Urcus:NonDelaySay("������ ȥ�������� ������ ��ȸ��. ���θ���!")
		Urcus:Patrol({11,12,13}, PT_ONCE)
	Session:ChangeScene("End")
end

function Field_1110331:OnSessionScene_Move_End(Session)
	Session:Blocking()
		this:EnableSensor(2)
	Session:EndSession()
end

function Field_1110331:OnSensorEnter_2(Actor) 
	if (Actor:IsPlayer() == true) then
		this:DisableSensor(2)	
		local Lewanki = this:GetSpawnNPC(111010)
		local Urcus = this:GetSpawnNPC(111250)	
		local Session = this:MakeSession("Freedom",{Lewanki, Urcus})
		Session:AddBookmark("Player", Actor)
	end
end

function Field_1110331:OnSessionScene_Freedom_Begin(Session)
	local Lewanki = this:GetSpawnNPC(111010)
	local Urcus = this:GetSpawnNPC(111250)	
	
	Session:Blocking()
		Urcus:FaceTo(Lewanki)		
		Urcus:SaveHomePoint()
		Urcus:Say("�������� ������ �°� �ǽ��� �����ϰڳ�.")
		Urcus:Say("�׵��� ���� ���Ǹ� �����ְ�.")		
	Session:ChangeScene("2")	
end

function Field_1110331:OnSessionScene_Freedom_2(Session)
	local Lewanki = this:GetSpawnNPC(111010)
	local Urcus = this:GetSpawnNPC(111250)	
	
	Session:Blocking()
		Urcus:GainBuff(110044)
		Lewanki:MoveToMarker(14)
		Lewanki:Say("{ani=roar}���߷� ������ ���ٴ�, ����� ��!")		
	Session:ChangeScene("3")	
end

function Field_1110331:OnSessionScene_Freedom_3(Session)
	local Lewanki = this:GetSpawnNPC(111010)
	local Urcus = this:GetSpawnNPC(111250)	

	Session:NonBlocking()
		Lewanki:NarrationNow("������ �°� �ǽ��� ����ʿ� ���� ����Ű�� ������ ���� �������� �˴ϴ�.")
		Lewanki:Attack(Session:FindBookmark("Player"))
		this:SetTimer(1, 20, true)
	Session:CombatAll()
	Session:AddChangeSceneRule("MegaDeath1", Lewanki, "hp", {41, 70})	
end

function Field_1110331:OnTimer(TimerID)
	local Lewanki = this:GetSpawnNPC(111010)
	if (TimerID == 1) then
		if (Lewanki:CheckBuff(110037) == true) then
			Lewanki:NarrationNow("����Ű���� ���ظ� �� �� �ְ� �Ǿ����ϴ�.")		
			Lewanki:RemoveBuff(110037)
		end
		if (Lewanki:CheckBuff(110037) == false) then
			Lewanki:NarrationNow("����Ű�� ������ ���������ϴ�.")			
			Lewanki:GainBuff(110043)			
		end
	end
	if (TimerID == 2) then	
		this:EnableSensor(5)
	end
end

function Field_1110331:OnSessionScene_Freedom_MegaDeath1(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatNone()
		Lewanki:DisableCombat();
		Lewanki:ChangeAA(AA_NONE)
		Lewanki:NonDelaySay("�̳��! ��� ���� �غ� �ض�!")
		Lewanki:UseTalentSelf(211101009)
	Session:ChangeScene("MegaDeath1End")	
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath1End(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatAll()
	Lewanki:EnableCombat();
	Session:AddChangeSceneRule("MegaDeath2", Lewanki, "hp", {11, 40})	
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath2(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatNone()
		Lewanki:DisableCombat();
		Lewanki:NonDelaySay("�ǹ��� ���! ��� ������ �����ָ�!")
		Lewanki:UseTalentSelf(211101009)	
	Session:ChangeScene("MegaDeath2End")	
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath2End(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatAll()
	Lewanki:EnableCombat();
	Session:AddChangeSceneRule("MegaDeath3", Lewanki, "hp", {1, 10})	
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath3(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatNone()
		Lewanki:DisableCombat();
		Lewanki:NonDelaySay("ī������ �����... �츣��, �� �̳�!!")
		Lewanki:UseTalentSelf(211101009)	
	Session:ChangeScene("MegaDeath3End")
end
function Field_1110331:OnSessionScene_Freedom_MegaDeath3End(Session)
	local Lewanki = this:GetSpawnNPC(111010)	
	Session:CombatAll()
	Lewanki:EnableCombat();
	Session:EndSession()	
end

function Field_1110331:OnDie(DespawnInfo)
	local Field = DespawnInfo.Field
	local Urcus = this:GetSpawnNPC(111250)	
	
	if (DespawnInfo.SpawnID == 111010) then
		Field:KillTimer(1)
		Urcus:RemoveBuff(110044)
		Urcus:Wait(4)
		Urcus:Say("��ħ�� ����Ű�� ���簡 ������ �Ǿ���.")
		Urcus:Say("�̰��� �����Ǹ� ������ ��� �� �� ����غ���.")
		Urcus:ScriptSelf("Field_1110331_End")
	end
end

function Field_1110331_End(Self)
	local Field = Self:GetField()
	Self:Narration("10�� �� �ڵ����� ���� �ʵ�� ���ư��ϴ�.")
	Field:SetTimer(2, 10, false)
end












