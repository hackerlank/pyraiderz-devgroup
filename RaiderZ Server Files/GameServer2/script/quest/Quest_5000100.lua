function Quest_5000100:OnObjComplete(Player, ObjectiveID)
	if (1 == ObjectiveID) then		
		NPC = Player:GetInteractNPC();
		NPC:DisableInteraction();			-- ��� ���ͷ��� ��Ȱ��ȭ
		NPC:UseTalentSelf(300150100);		-- ��� ���ߴ� �ŷ�Ʈ ���		
		
		Field = NPC:GetField();
		Field:EnableInteraction(5000102);	-- ���� ���ͷ��� Ȱ��ȭ
	end	
end
