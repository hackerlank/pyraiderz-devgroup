-- �ּ��� �ɸ� ����
function NPC_110033:OnTryHit(Actor, TalentID)
	if (140009 == TalentID) then
		this:GainBuff(110002) -- �� ���Ϳ��Ը� ȿ���� �־�� �ϹǷ� ���⼭ ����. �ŷ�Ʈ�� ������ �ȵ�
	end
end