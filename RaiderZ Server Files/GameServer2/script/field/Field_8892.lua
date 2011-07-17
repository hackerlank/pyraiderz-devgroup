
function Field_8892:OnSensorEnter_1(actor) 
	if not actor:IsPlayer() then return end
	
	local eventEnd = 7 -- 12
	
	local field = actor:GetField()
	field:DisableSensor(1)
	field:DisableSensor(2)
	
	field:PlayBGM("bgm_war_9")

	field:Notice("$$Field_8892_13")
	field:Notice("$$Field_8892_14")
	-- �ҷ��� ����
	local boss = field:SpawnByID(1)
	boss:ChangeAA(AA_ALWAYS)
	boss:EnableCombat()
	boss:SetAlwaysRun(true)
	boss:Attack(actor)
	
	-- ���� Ÿ�̸� ����
	field:SetTimer(2, eventEnd*60, false) -- �̺�Ʈ ����
	
	-- �ӽ� �ڵ�
	Field_8892.timelimit = eventEnd
	field:SetTimer(100, 59, true)
end

function Field_8892:OnDie(DespawnInfo)
	if (DespawnInfo.NPCID == 8894022) then
		-- �ҷ��� �����
		local field = DespawnInfo.Field
		field:Notice("$$Field_8892_34")
		field:Notice("$$Field_8892_35")
		Field_8892_EvenReset(field)
	end
end

function Field_8892_EvenReset(field)
	-- ���� �ʱ�ȭ
	--field:EnableSensor(1)
	field:EnableSensor(2)
	-- ����� Ÿ�̸�
	field:SetTimer(1, 5*1, false)
	-- �ҷ��� ����
	--field:DespawnByID(1)
	
	-- Ÿ�̸� ����.
	field:KillTimer(2) -- �̺�Ʈ ��

	-- �ӽ� �ڵ�
	field:KillTimer(100) -- ���� �ð�
end

function Field_8892:OnTimer(TimerID)
	if TimerID == 1 then
		this:EnableSensor(1)
	elseif (TimerID == 2) then
		-- �̺�Ʈ Ÿ�� ���� --
		local boss = this:GetSpawnNPC(1)
		
		boss:ClearJob()
		boss:ChangeAA(AA_NONE)
		
		
		boss:Say("$$Field_8892_67")
		boss:ScriptSelf("Field_8892_BossDespawn")
		this:Notice("$$Field_8892_69")
		Field_8892_EvenReset(this)
	elseif TimerID == 100 then
		-- �ӽ� �ڵ�
		Field_8892.timelimit = Field_8892.timelimit - 1
		this:Notice ("$$Field_8892_74")
		if Field_8892.timelimit == 1 then this:KillTimer(100) end
	end
end

function Field_8892_BossDespawn(self)
	self:Despawn(false)
end


