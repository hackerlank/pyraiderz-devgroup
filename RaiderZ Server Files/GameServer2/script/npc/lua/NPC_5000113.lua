function NPC_5000113:OnDie(Desapwn)
	Field = this:GetField();
	if (0 == Field:GetNPCCount(5000113)) then
		EscortNPC = Field:GetNPC(5000111);
		
		this:ClearJob();
		
		-- ������ �������� BehaviorMode�� ���� ���� ���� �Ǽ�, MissionMode�� ����
		
		EscortNPC:Say("$$NPC_5000113_10");
		EscortNPC:EnableSensorCheck(6);	
		EscortNPC:MoveToSensor(6);		

	end	
end
