function Quest_512002:OnObjComplete(Player, ObjectiveID)
	local Field = Player:GetField()
	
	if (1 == ObjectiveID) then	
			Field:SpawnByID(94); --  Ž�彺���� ��� ��ȯ
			Field:SpawnByID(95); --  �Ҹ��� ���� �� ���� ��ȯ
	elseif (2 == ObjectiveID) then	
			Field:SpawnByID(93); --  ����� ���� ��ȯ						
		
	end
end





