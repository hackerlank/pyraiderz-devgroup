-- ������ '������'

function Quest_101023:OnObjInteract(Player, ObjectiveID, Trigger, Progress, NPC)
	local Field = Player:GetField()	
	local Katrina = Field:GetNPC(101216)
	local Randy = Field:GetSpawnNPC(10005)
	local Son = Field:GetSpawnNPC(10014)	
	local NpcPos = Math_GetDistancePoint( Player:GetPos(), Player:GetDir(), -100 )	
	if (ObjectiveID == 1) then
		if (Trigger == true) then
			Player:UpdateQuestVar(101023, 1)	
			-- ������ īƮ���ƿ� �޸����� ��ǳ���� �ϸ� ����Ʈ�� �Ѹ���.
			-- �޸����� �������׵� ������ �θ����� �ٸ� ����Ʈ ���� ���´�.-_-
		
		
		end
	end
end
