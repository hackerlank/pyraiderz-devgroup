function NPC_113237:OnDialogExit(Player, DialogID, Exit)
	HPPotionQty = Player:GetItem(32001)
	
	if (113237 == DialogID and 2 == Exit) then --�ູ
		Player:GainBuff(120001)
		this:Balloon("$$NPC_113237_6")				
	end	
	if (113237 == DialogID and 4 == Exit and HPPotionQty >= 10) then --����(Full)�϶�
		this:Balloon("$$NPC_113237_9")
	end
	if (113237 == DialogID and 4 == Exit and HPPotionQty < 10) then --��óġ���� ����
		Player:Tip("$$NPC_113237_12")	
		--Player:AddItem(32001, 3-HPPotionQty) dialog.xml���� ó��
		this:Balloon("$$NPC_113237_14")
	end	
end
