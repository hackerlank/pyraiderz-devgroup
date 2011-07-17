-- ���Ͻ� (�η��� ����)
--[[
function NPC_109310:OnHitCapsule_1_0(HitInfo)
	if (HitInfo.Damage >= 1) then
		local Field = HitInfo.Victim:GetField()
		local Tian = Field:GetSpawnNPC(109020)
		
		HitInfo.Victim:ClearJob()
		HitInfo.Victim:RemoveBuff(110020)
		HitInfo.Victim:DisableCombat()
		HitInfo.Victim:MakePeace()
		HitInfo.Victim:SetAlwaysRun(true)
		HitInfo.Victim:MoveToMarker(5)
		HitInfo.Victim:SaveHomePoint()
		HitInfo.Victim:FaceTo(HitInfo.Attacker)
		HitInfo.Victim:NonDelaySay("$$NPC_109310_18") -- �׳�, ���ظ� �ϴٴ�...	
		Tian:RemoveBuff(110018)
		Tian:Narration("$$NPC_109310_20") -- Ƽ���� ���Ͻ��� ����κ��� ������ϴ�.
		Tian:Say("$$NPC_109310_21") -- �Ͼ�... ��Ҵ�.
		Tian:FaceTo(HitInfo.Attacker)
		Tian:Say("$$NPC_109310_23") -- �����༭ ����.
		Tian:Wait(2)
		Tian:MoveToMarker(4)
		--Tian:Say("$$NPC_109310_26") -- �� �� ����߰ھ�. � ���� ���� �Ѿ�.
		Tian:ScriptSelf("NPC_109310_JailsWarp")

	end
end

function NPC_109310_JailsWarp(Self)
	local Field = Self:GetField()
	Field:EnableSensor(12)
end
--]]
