function NPC_3020:OnDialogExit(Player, DialogID, Exit)
	HPPotionQty = Player:GetItem(32001)
	--SilverQty = Player:GetSilver()
	
	if (3020 == DialogID and 2 == Exit) then --�ູ
		Player:GainBuff(120001)
		this:Balloon("$$NPC_3020_7")				
	end
	if (3020 == DialogID and 3 == Exit) then --���
		if (Player:GetSilver() >= 20) then
			Player:RemoveSilver(20)
			Player:AddAmity(2, 20) -- �����þ� �Ѽ� ���
			this:Balloon("$$NPC_3020_13")		
		end
		if (Player:GetSilver() < 20) then
			this:Balloon("$$NPC_3020_16")		
		end
	end		
	if (3020 == DialogID and 4 == Exit and HPPotionQty >= 10) then --����(Full)�϶�
		this:Balloon("$$NPC_3020_20")
	end
	if (3020 == DialogID and 4 == Exit and HPPotionQty < 10) then --��óġ���� ����
		Player:Tip("$$NPC_3020_23")	
		--Player:AddItem(32001, 3-HPPotionQty) dialog.xml���� ó��
		this:Balloon("$$NPC_3020_25")
	end	
	
	if (30052 == DialogID and 1 == Exit and HPPotionQty >= 10) then --3005 ����Ʈ ��, ����(Full)�϶�
		--Player:AddItem(10005, 1)	dialog.xml���� ó��
		this:Balloon("$$NPC_3020_30")
	end		
	if (30052 == DialogID and 1 == Exit and HPPotionQty < 10) then --3005 ����Ʈ ��, ��óġ���� ����
		Player:Tip("$$NPC_3020_33")	
		--Player:AddItem(32001, 3-HPPotionQty) dialog.xml���� ó��
		--Player:AddItem(10005, 1)
		this:Balloon("$$NPC_3020_36")
	end	
end
