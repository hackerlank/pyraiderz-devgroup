function Quest_113018:OnObjComplete(Player, ObjectiveID)
	local Field = Player:GetField()
	
	if (1 == ObjectiveID) then	
			Player:Tip("���ڱ� ���ӿ��� ������ �ھƳ� ����� �����մϴ�!!")
			Field:SpawnByID(7009); 
			Field:SpawnByID(7010);--  ���� ����Ŀ ��ȯ
			local enemy1 = Field:GetSpawnNPC(7009)
			local enemy2 = Field:GetSpawnNPC(7010)
			enemy1:Attack(Player)
			enemy2:Attack(Player)
	end
end
