--[[
	f0101.lua
	
	Riode
	Script by Joongpil Cho(Venister)
]]--

-- �ǰ� ���� - ���� ���� �Կ�
function Field_101:OnSensorInteract_101011(Player) -- ������(���⼭ ������ ����ϸ�..�ΰ�?)
	if Player:CheckCondition(1010111) == true then
		Player:UpdateQuestVar(101011, 1)
	end
end

-- 101017 ���� ���� ����?
function Field_101:OnSensorTalent_1010171(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("������")	
		Actor:UpdateQuestVar(101017, 1)
	end
end

function Field_101:OnSensorTalent_1010172(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("������")	
		Actor:UpdateQuestVar(101017, 2)
	end
end

function Field_101:OnSensorTalent_10101713(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("������")	
		Actor:UpdateQuestVar(101017, 3)
	end
end

function Field_101:OnSensorTalent_10101714(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("������")	
		Actor:UpdateQuestVar(101017, 4)
	end
end

-- 101018 ������ �濪
function Field_101:OnSensorTalent_1010181(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("������")	
		Actor:UpdateQuestVar(101018, 1)
	end
end

function Field_101:OnSensorTalent_1010182(Actor, TalentID) -- ���� ���̵�?(����� ��)
	if(TalentID == 140020 ) then
		--Actor:Narration("������")	
		Actor:UpdateQuestVar(101018, 2)
		
		local Field = Actor:GetField()
		local Mariae = Field:GetSpawnNPC(101021)	
		local Gadieal1 = Field:GetSpawnNPC(1)
		local Gadieal2 = Field:GetSpawnNPC(2)
		local Gadieal3 = Field:GetSpawnNPC(3)
		local Gadieal4 = Field:GetSpawnNPC(4)
		
		Mariae:Attack(Actor)
		Gadieal1:Attack(Actor)
		Gadieal2:Attack(Actor)
		Gadieal3:Attack(Actor)
		Gadieal4:Attack(Actor)
		--Mariae:NonDelaySay("$$Field_1090021_89")
	
--[[ ����
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
]]--
	end
end

function Field_101:OnSensorTalent_1010183(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("������")	
		Actor:UpdateQuestVar(101018, 3)
	end
end

function Field_101:OnSensorTalent_1010184(Actor, TalentID) 
	if(TalentID == 140020 ) then
		--Actor:Narration("������")	
		Actor:UpdateQuestVar(101018, 4)
	end
end

function Field_101:OnSensorTalent_9(Actor, TalentID) -- �η��� ��
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1010201) == true then
			this:SpawnByID(1) -- ���𿤱���
			this:SpawnByID(2)
			this:SpawnByID(3)
			local Field = Actor:GetField()
			local Rorence = Field:GetSpawnNPC(101212)		
			local Gadieal1 = Field:GetSpawnNPC(1)			
			local Gadieal2 = Field:GetSpawnNPC(2)
			local Gadieal3 = Field:GetSpawnNPC(3)
			-- �η����� ���� �ٲ۴�.(���� -> ����)
			Rorence:NonDelaySay("$$Field_101_1")
			Gadieal1:Wait(3)
			Gadieal2:Wait(3)
			Gadieal3:Wait(3)
			Gadieal1:NonDelaySay("$$Field_101_2")
			Gadieal1:Attack(Actor)
			Gadieal2:Attack(Actor)	
			Gadieal3:Attack(Actor)					
			-- ���Ǿ� ������� �ϴ°� ������¡ ������ �ؾ��ϳ�?
			-- ���� �ֵ��� �� ������ �η����� �ٽ� ���� -> ����
		end
	end
end

function Field_101:OnSensorTalent_10(Actor, TalentID) -- Ż���� �˰� (�ֳ� �ڸ�)
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1010221) == true then
			this:SpawnByID(1) -- �ֳ�
			local Field = Actor:GetField()	
			local Ena = Field:GetSpawnNPC(1)			

			Ena:Wait(1)
			Ena:Attack(Actor)
				
			-- �ǰ� 30% �Ǹ� ������ �����ϰ� ��ǳ���� ���� �ϸ鼭 NPC ��ƿ� var�� �÷���� �ϳ�?
			-- Ena:NonDelaySay("$$Field_101_2")
		end
	end
end

function Field_101:OnSensorTalent_11(Actor, TalentID) -- Ż���� �˰� (�ֵ帮�� �ڸ�)
	if Actor:IsPlayer() == true then
		if AsPlayer(Actor):CheckCondition(1010221) == true then
			this:SpawnByID(2) -- �ֵ帮��
			local Field = Actor:GetField()				
			local Edrian = Field:GetSpawnNPC(2)
			
			Edrian:Wait(1)
			Edrian:Attack(Actor)					
			-- �ǰ� 30% �Ǹ� ������ �����ϰ� ��ǳ���� ���� �ϸ鼭 NPC ��ƿ� var�� �÷���� �ϳ�?
			-- Edrian:NonDelaySay("$$Field_101_2")
		end
	end
end

function Field_101:OnSpawn(SpawnInfo)		
	if (SpawnInfo.NPCID == 101223) then -- ������ ������
		SpawnInfo.NPC:Patrol({1012231,1012232,1012233,1012234,1012235,1012236,1012237}, PT_LOOP)		
	end	
end

function Field_101_DespawnSelf(Self, Opponent)
	Self:Despawn(true)	-- ������ �����ϰ� ����
end


