
-- ////////////////////////// ũ��﷯ ���� Ʈ���̾� ����Ʈ ///////////////////////////

function Field_1090162:OnSensorEnter_5(Actor) -- ���� �̺�Ʈ, �ƾ�.
	local Field = Actor:GetField()
	if Actor:IsPlayer() == true then
		Field:DisableSensor(5)
		--local Silver = Field:GetSpawnNPC(109021)
		local Crawler = Field:GetSpawnNPC(109100)
		--local Linker = Field:GetSpawnNPC(109106)
		--NPC_109106:ControlCrawler( Linker, Crawler )
		
		--AsPlayer(Actor):PartyCutscene(1090162) CBT1�� �ƽ� �ȵ���� ��.

		
		--Silver:SetAlwaysRun(true)
		--Silver:Wait(14)
		--Silver:FaceTo(Crawler)		
		--Silver:Say("$$Field_1090162_19")
		--Silver:NonDelaySay("$$Field_1090162_20")
		--Silver:Attack(Crawler)
		Crawler:Attack(Actor)
	end
end

function Field_1090162:OnSensorEnter_2(Actor) -- �ι�° ���� ����
	local Field = Actor:GetField()
	
	if Actor:IsPlayer() == true then
		Field:DisableSensor(2)	
		Actor:Narration("$$Field_1090162_31")		
		this:SetTimer(1, 21, false)		-- Ÿ�̸ӷ� ��ȯ ���� �۵�
	end
end

function Field_1090162:OnTimer(TimerID) 
	if (TimerID == 1) then
		this:EnableSensor(3) -- ��ȯ ���� ON
	end
end

function Field_1090162:OnDie(DespawnInfo)

	if (DespawnInfo.SpawnID == 109100) then
		DespawnInfo.Field:EnableSensor(2)
	end
end