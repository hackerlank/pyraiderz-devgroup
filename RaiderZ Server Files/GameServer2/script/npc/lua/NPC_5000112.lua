function NPC_5000112:OnDie(Desapwn)
	Field = this:GetField();
	if (0 == Field:GetNPCCount(5000112)) then
		EscortNPC = Field:GetNPC(5000111);
		
		this:ClearJob();
		
		-- ������ �������� BehaviorMode�� ���� ���� ���� �Ǽ�, MissionMode�� ����
		
		EscortNPC:Say("$$NPC_5000112_10");	
		EscortNPC:EnableSensorCheck(5);	
		EscortNPC:MoveToSensor(5);	
		
	end	
end
