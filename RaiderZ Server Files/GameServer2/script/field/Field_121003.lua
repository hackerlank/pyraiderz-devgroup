-- ������ȭ�� ������

function Field_121003:OnDie(DespawnInfo)
	
	if (DespawnInfo.SpawnID == 1) then 
		local Field = DespawnInfo.Field
		local Door1 = Field:GetSpawnNPC(2)		
		Door1:UseTalentSelf( 212102201 ) -- ����ִ� �� ��������
		Field:SpawnByID(3)  -- ������ �ʴ� �� ����		
		DespawnInfo.NPC:NarrationNow( "$$Field_121003_10"  )				
	end	

end

