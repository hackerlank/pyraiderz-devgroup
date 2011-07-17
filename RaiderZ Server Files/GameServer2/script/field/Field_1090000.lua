function Field_1090000:OnEndCutscene(Player, CutsceneID)
	if (CutsceneID == 209003) then
		Player:GateToMarker(109, 1)
		Player:BindSoul(4)
	end
end

function Field_1090000:OnTimer(TimerID) 
	if (TimerID == 1) then	
		this:EnableSensor(7)
	end
end

function Field_1090000:OnSpawn(SpawnInfo)
	--SpawnInfo.NPC:SetDecayTime(3)
	
	if SpawnInfo.SpawnID == 1198 then -- ���� 1
		local Session = this:MakeSession("Patrol1", {SpawnInfo.NPC})
		Session:ChangeScene("Start")
	elseif SpawnInfo.SpawnID ==  1209 then -- ���� 2
		local Session = this:MakeSession("Patrol2", {SpawnInfo.NPC})
		Session:ChangeScene("Start")
	elseif SpawnInfo.SpawnID ==  1210 then -- ���� 3
		local Session = this:MakeSession("Patrol3", {SpawnInfo.NPC})
		Session:ChangeScene("Start")
	end
end

function Field_1090000:OnSessionScene_Patrol1_Start(Session)
	local NPC = this:GetSpawnNPC( 1198 )
	NPC:SetAlwaysRun(true)
	--Session:CombatAll()
	NPC:Patrol({101,102}, PT_ONCE)
	NPC:Wait(1)
	NPC:Patrol({103, 104}, PT_ONCE)
	Session:ChangeScene("Arrive")
end

function Field_1090000:OnSessionScene_Patrol1_Arrive(Session)
	Session:EndSession()
end

function Field_1090000:OnSessionScene_Patrol1_Finish(Session)
	local NPC = this:GetSpawnNPC( 1198 )
	NPC:DespawnNow(true)
end



function Field_1090000:OnSessionScene_Patrol2_Start(Session)
	local NPC = this:GetSpawnNPC( 1209 )
	NPC:SetAlwaysRun(true)
	--Session:CombatAll()
	NPC:Patrol({201}, PT_ONCE)
	NPC:Wait(1)
	NPC:Patrol({202, 203}, PT_ONCE)
	Session:ChangeScene("Arrive")
end

function Field_1090000:OnSessionScene_Patrol2_Arrive(Session)
	Session:EndSession()
end

function Field_1090000:OnSessionScene_Patrol2_Finish(Session)
	local NPC = this:GetSpawnNPC( 1209 )
	NPC:DespawnNow(true)
end



function Field_1090000:OnSessionScene_Patrol3_Start(Session)
	local NPC = this:GetSpawnNPC( 1210 )
	NPC:SetAlwaysRun(true)
	--Session:CombatAll()
	NPC:Patrol({301, 302, 303}, PT_ONCE)
	Session:ChangeScene("Arrive")
end

function Field_1090000:OnSessionScene_Patrol3_Arrive(Session)
	Session:EndSession()
end

function Field_1090000:OnSessionScene_Patrol3_Finish(Session)
	local NPC = this:GetSpawnNPC( 1210 )
	NPC:DespawnNow(true)
end


function Field_1090000:OnSensorEnter_21(Actor)
	local Carel = this:GetSpawnNPC( 1124 )
	Carel:Say("$$109825") -- ������ ī�� ���1
	Carel:Wait(2)	
	Carel:Say("$$109826") -- ������ ī�� ���2	
	Carel:Wait(3)	
end

function Field_1090000:OnSensorEnter_24(Actor)
	local Clo = this:GetSpawnNPC(1115)
	Clo:Say("$$109821")
	Clo:Wait(3)
	Clo:Say("$$109822")
end

function Field_1090000:OnSensorEnter_25(Actor)
	local Silver = this:GetSpawnNPC(1200)
	Silver:Say("$$109823")
	Silver:Wait(3)
	Silver:Say("$$109824")
end



