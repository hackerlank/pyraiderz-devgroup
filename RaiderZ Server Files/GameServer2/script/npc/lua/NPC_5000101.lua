function NPC_5000101:OnTalentEnd(TalentID)
	if (300150100 == TalentID) then
		Field = this:GetField();
		Field:DisableInteraction(5000102);	-- ���� ���ͷ��� ��Ȱ��ȭ
		
		this:EnableInteraction();			-- ��� ���ͷ��� Ȱ��ȭ	
		
		Player = this:GetLastInteractPlayer();
		if (true == Player:IsCompleteQuest(5000100)) then
			Pos = vec3(22860, 3636, 3);
			Field:Spawn(5000103, Pos);		--  ��� ��ȯ			
		end		
	end	
end
