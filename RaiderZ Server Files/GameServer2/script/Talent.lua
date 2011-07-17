--[[	
	Talent.lua
--]]

function CallAlly5m(ThisActor, Opponent)
	if (ThisActor:IsNPC()) then
		AsNPC(ThisActor):Yell(500)
	end
end

function CallAlly8m(ThisActor, Opponent)
	if (ThisActor:IsNPC()) then
		AsNPC(ThisActor):Yell(800)
	end
end

function CallAlly10m(ThisActor, Opponent)
	if (ThisActor:IsNPC()) then
		AsNPC(ThisActor):Yell(1000)
	end
end

function CallAlly20m(ThisActor, Opponent)
	if (ThisActor:IsNPC()) then
		AsNPC(ThisActor):Yell(2000)
	end
end

--[[
	brief:
		���� or ���Ÿ� ������ ������ npc�� ���� ����� ����� Ư�� ���������� �����Ű���� �ۼ��� �Լ�
		
		1. ���� Ÿ���� ������ �Ÿ�(400m ����) ��� ��� ������ ����
		2. �ٰŸ� ���� ���� ������ Ÿ���� �ȵǴ� �Ÿ���� ���� �Ÿ��� ������, �Է°��� ���� ���� ������ �����Ѵ�.
		3.	���Ÿ� ��Ÿ��� ���Ÿ� ����.
		4.	���Ÿ� ��Ÿ� ���̸� �н�.
	param:
		ThisNPC : ������ ������ npc
		Enemy : ��� Actor
		arrRangeSep: ��, ���Ÿ�, ��Ÿ� ���� �����ϴ� ��  
				ex ) { 200,   1000 }         : 200���� ������ ��������   200-1000 ���Ÿ�  1000�̻�    ��Ÿ� ��
		arrMelee : �ٰŸ������� ���ݰ����� Talent�迭
		arrMRate : �ٰŸ������� ���ݰ����� Talent�� Rate��
		arrRange : ���Ÿ����� Talent�迭
		arrRRate : ���Ÿ������� �� Rate��
		ForceAttack : �����õ��� ���������� �������� ������ �����ϴ� �Ķ���� boolean ��
	
		ex) 
		SmartAttack( ThisNPC, Enemy, { 600, 2400 }, { 210702001, 210702003 }, { 80, 20 }, { 210702002 }, { 100 }, true )
		
--]]
function SmartAttack( ThisNPC, Enemy, arrRangeSep, arrMelee, arrMRate, arrRange, arrRRate, ForceAttack )
	
	local SepCnt = table.getn( arrRangeSep )
	if SepCnt ~= 2 then
		GLog( "SmartAttack Error : �ٿ��Ÿ� ������ �迭�� 2���� �������� ������ �մϴ�.\n" )
		return false
	end 
	
	local MeleeCnt = table.getn( arrMelee )
	local RangeCnt = table.getn( arrRange )
	local Distance = ThisNPC:DistanceTo( Enemy )

	if Distance < 400 then -- ����Ÿ�� ���ɰŸ�
		local MeleeTalID = ChooseSmartAttackTalent( arrMelee, arrMRate, MeleeCnt )
		ThisNPC:UseTalent( MeleeTalID, Enemy )
		--GLog( "MeleeTal : "..MeleeTalID.."\n" )
		return true
	elseif Distance < arrRangeSep[1] then -- ������ ���ؼ� 3�ʰ� ���ٽõ�
		local MeleeTalID = ChooseSmartAttackTalent( arrMelee, arrMRate, MeleeCnt )
		ThisNPC:MoveToActorWithDuration( Enemy, MeleeTalID, 3 )
		if ForceAttack == true then 
			ThisNPC:UseTalent( MeleeTalID, Enemy )
		end
		--GLog( "MeleeTal : "..MeleeTalID.."\n" )
		return false
	elseif Distance < arrRangeSep[2] then -- ���Ÿ� �õ� ������
		local RangeTalID = ChooseSmartAttackTalent( arrRange, arrRRate, RangeCnt )
		ThisNPC:UseTalent( RangeTalID, Enemy )
		--GLog( "RangeTal : "..RangeTalID.."\n" )
		return true
	end
end

--[[
	������ �߻����� ����� �������ش�
--]]
function ChooseSmartAttackTalent(  arrTalent, arrRate, TalentCnt )
	local n = math.random(1, 100)
	local RateTot = 0
	for i = 1, TalentCnt, 1 do
		RateTot = RateTot + arrRate[i]
		if n <= RateTot then
			return arrTalent[i]
		end
	end
end

--[[
	brief : 
		��ȯ���� ��ȯ�ϴ� �Լ�
	param :
		NPC Summoner : ��ȯ��
		ACTOR Opponent : ��ȯ������ ������ ������ ����
		number MinionID : ��ȯ�� ID
		number MinionCnt : ��ȯ�� ����
		string Msg : ��ȯ�Ҷ� ����� �޽���
--]]
function SummonMinion( Summoner, Opponent, MinionID, MinionCnt, Msg, min, max )
	local WorldPos = vec3()
	local Field = Summoner:GetField()
	
	if Msg ~= nil then
		--Summoner:Narration( Msg )
		--Summoner:Say( Msg )
	end 
	
	for i = 1, MinionCnt, 1 do
		local LocalAdjPos = vec3(math.random(min, max), math.random(min, max), 0)
		WorldPos = Math_LocalToWorld(Summoner:GetDir(), Summoner:GetPos(), LocalAdjPos)

		local Minion = Field:Spawn(MinionID, WorldPos)
		if Opponent ~= nil then
			Minion:Attack(Opponent)
		end 
	end
end

--[[
	AI_SideAttack
	
	effectiveDistance:
	limitDistance:
	TalentID:
--]]
function AI_SideAttack(ThisNPC, Opponent, effectiveDistance, limitDistance, TalentID)
	local Distance = ThisNPC:DistanceTo(Opponent)
	
	if(Distance > limitDistance or Distance < effectiveDistance) then
		-- ThisNPC:Say("-- DEBUG: Too Near [[REMOVE ME]] --")
	else
		local LocalAdjPos = vec3(effectiveDistance + 20, 0, 0);
		if( math.random(0,1) == 1) then 
			LocalAdjPos = vec3(-1*(effectiveDistance + 20), 0, 0)
		end

		local WorldPos = vec3()

		WorldPos = Math_LocalToWorld(Opponent:GetDir(), Opponent:GetPos(), LocalAdjPos)
		ThisNPC:Move(WorldPos)
	end
	
	ThisNPC:MoveToActor(Opponent, TalentID)
	ThisNPC:UseTalent(TalentID, Opponent)
end

--[[
	AI_RandomAttack(ThisNPC, Opponent, arrayTalents)
	
	���ѽð��� 3�ʷ� �ϰ� ����
--]]
function AI_RandomAttack(ThisNPC, Opponent, arrayTalents)
	local count = table.getn(arrayTalents)
	if(count > 0) then
		local ranNum = math.random(1, count)
		if(Opponent == nil) then
			ThisNPC:UseTalentSelf(arrayTalents[ranNum])
		else
			ThisNPC:MoveToActorWithDuration(Opponent, arrayTalents[ranNum], 3)
			ThisNPC:UseTalent(arrayTalents[ranNum], Opponent)
		end
	end
end

--[[
	AI_RandomAttackWithDuration(ThisNPC, Opponent, arrayTalents, duration)
--]]
function AI_RandomAttack(ThisNPC, Opponent, arrayTalents, duration)
	local count = table.getn(arrayTalents)
	if(count > 0) then
		local ranNum = math.random(1, count)
		if(Opponent == nil) then
			ThisNPC:UseTalentSelf(arrayTalents[ranNum])
		else
			ThisNPC:MoveToActorWithDuration(Opponent, arrayTalents[ranNum], duration)
			ThisNPC:UseTalent(arrayTalents[ranNum], Opponent)
		end
	end
end

function AI_SmartChangeTarget(ThisNPC, Opponent, effectiveDistance, arrayCloseAggroParams, arrayRangeAggroParams, arrayCloseTalents, arrayRangeTalents)

end

function UT_GetPointsAroundTarget(ThisNPC, Opponent, TargetDistance, TargetDegree, TalentID)

end


--[[
brief :
	Target��ǥ�� Center�������� Angle��ŭ ȸ����Ų ��ǥ�� ���Ѵ�

param :
	vecTarget 		: �����ǥ
	vecCenter		: �߽���ǥ
	Angle				: ȸ������

return
	ȸ����� ��ǥ
--]]
function RotatePoint(  vecTarget, vecCenter, Angle )
	local PI = 3.14159
	-- ���� ������ ��ȯ
	Angle = Angle * PI / 180
	
	local cosq = math.cos( Angle )
	local sinq = math.sin( Angle )
		
    -- ȸ���߽��� C�� ����  O�� ��ġ�ϵ��� ȸ���� �� T�� �Բ� �����̵�
    vecTarget.x = vecTarget.x - vecCenter.x
	vecTarget.y = vecTarget.y - vecCenter.y

    -- ���� O�� ���Ͽ� ȸ���� �� T�� q���� ��ŭ ȸ��
	local vecNew = vec3()
    vecNew.x  =  vecTarget.x *  cosq - vecTarget.y * sinq
    vecNew.y =  vecTarget.y * cosq + vecTarget.x * sinq
	vecNew.z = vecTarget.z

    -- ���� O�� ������ ȸ�� �߽��� C�� ��ġ�ϵ��� ȸ���� �� N�� �Բ� �̵�
    vecNew.x = vecNew.x + vecCenter.x
	vecNew.y = vecNew.y + vecCenter.y
	
	return vecNew
end

--[[
brief :
	�� ��ǥ������ ���� ������ �ش��ϴ� ��ǥ�� ��ȯ
param :
	vecTarget		: �����ǥ
	vecSrc			: �ҽ���ǥ
	Rate				: ���� �ҽ� ������ 2D��ǥ���� ����. 0.5�� ������ ���ϰ� 0.5���� �������� �ҽ���ǥ�� ���������.
	
return :
	�����ǥ
	
--]]
function GetRelatedPoint( vecTarget, vecSrc, Rate )
	local vecRet = vec3()
	vecRet.x = (vecTarget.x - vecSrc.x) * Rate + vecSrc.x
	vecRet.y = (vecTarget.y - vecSrc.y) * Rate + vecSrc.y
	vecRet.z = (vecTarget.z - vecSrc.z) * Rate +  vecSrc.z
	return vecRet
end

--[[
brief:
	�� ��ǥ������ ������ ��ġ�ϴ� ��ǥ�� ��ȯ

param:
	vecTarget		: �����ǥ
	vecSrc			: �ҽ���ǥ
	d					: �����ǥ���� �������Ÿ�
	Direction		: �����ǥ������ ���⼺
		Direction = true   -  �ҽ���ǥ���� �Ÿ��� ������ ��ǥ
		Direction = false   -  �ҽ���ǥ���� �Ÿ��� ����� ���� ��ǥ
		
return :
	��ǥ��
--]]

--[[
function GetDirectionalPoint( vecTarget, vecSrc, d, Direction )
	local X1 = vecSrc.x
	local Y1 = vecSrc.y
	local X2 = vecTarget.x
	local Y2 = vecTarget.y

	-- y = mx + n
	local m = ( Y2 - Y1 ) / ( X2 - X1 )
	local n = Y2 - m*X2
	local p = n-Y2
	
	local a = (m^2) + 1
	local b = 2*m*p - 2*X2
	local c = (X2^2) + (p^2) -(d^2)

	local sum1 = b^2 -4*a*c
	
	local vecNew = vec3()
	if sum1 < 0 then 
		return vecNew
	end	
	
	local X3 = (-1 * b + (( b^2 -4*a*c )^0.5) ) / (2*a)
	local Y3 = m * X3 + n
	local X4 = (-1 * b - (( b^2 -4*a*c )^0.5) ) / (2*a)
	local Y4 = m * X4 + n
	
	local vecNew = vec3()
	vecNew.z = vecTarget.z
	
	d1 = ( ( X3 - X1 )^2 ) + ( ( Y3-Y1 )^2 )
	d2 = ( ( X4 - X1 )^2 ) + ( ( Y4-Y1 )^2 )
	
	vecNew.z = vecTarget.z
	if Direction == true then
		if d1>d2 then
			vecNew.x = X3
			vecNew.y = Y3
		else 
			vecNew.x = X4
			vecNew.y = Y4
		end
	else
		if d1>d2 then
			vecNew.x = X4
			vecNew.y = Y4
		else 
			vecNew.x = X3
			vecNew.y = Y3
		end
	end
	
	return vecNew
end
--]]

--[[
brief:
	�������� ������ �̾��ִ� ������ 2D ����(Degree)�� ���Ѵ�.
	
param:
	vecStart 	: ������
	vecEnd 		: ������
	
return:
	2D ����
--]]
function GetDegree( vecStart, vecEnd )
	local Angle = math.atan2( vecEnd.y - vecStart.y , vecEnd.x - vecStart.x )
	
	local PI = 3.14159
	-- Degree ������ ��ȯ
	 Angle = Angle*180/PI
	 
	 return Angle
end

--[[
brief:
	������ǥ�� ������ǥ�� �������� ������ ������ ȸ�� ��ȯ(AngleRange���� ������) �� ��ǥ�� �̵��ϴ� �Լ�
	
param:
	ThisNPC : �������� npc
	Enemy : ��� Actor
	AngleRange : ȸ�� ������ ������             ȸ�� ��� �ּҰ����� 20��
	WaitInterval : �ѹ� �̵��� Wait�ϴ� �ð�
	
--]]
function RotateMove( ThisNPC, Enemy, AngleRange, WaitInterval )
	--�Ķ���� �⺻��
	
	if AngleRange < 20 then -- �ּҰ� üũ
		return
	end
		
	local Angle = math.random( 20, AngleRange )
	
	if math.random( 0, 1 ) == 0 then
		Angle = Angle * -1
	end
	
	local vecTarget = ThisNPC:GetPos()
	local vecCenter = Enemy:GetPos()
	local vecNew = vec3()
	
	vecNew = RotatePoint( vecTarget, vecCenter, Angle )
	ThisNPC:Move( vecNew )
	ThisNPC:FaceTo( Enemy )
	
	if WaitInterval > 0 then
		ThisNPC:Wait( WaitInterval )
	end
end

--[[
brief:
	���Ÿ����� ������׷� ����
param :
	ThisNPC 		: �������� npc
	Enemy 			: ��� Actor
	AngleRange 	: ��� �����Ҷ� ���Ǵ� ������ ����
	WaitInterval 	: �ѹ� �̵��� Wait�ϴ� �ð�
	Rate 				: ������ �Ÿ��� ������ ����.  0.5 �� ������ ������.
	
return :
	�Լ��� ���� ����
	
	-1 	: ����
	1 		: ����
--]]
function ApproachMove( ThisNPC, Enemy, AngleRange, WaitInterval, Rate )
		
	local Distance = ThisNPC:DistanceTo( Enemy )	
	-- ������ �Ÿ��� ������ �ʰ� ȸ���� ����
	if Distance < 400 then
		return -1
	end
	
	local Angle = math.random( -1 * AngleRange, AngleRange )
	
	local vecTarget = ThisNPC:GetPos()
	local vecCenter = Enemy:GetPos()
	local vecNew = vec3()
	
	vecTarget = GetRelatedPoint( vecTarget, vecCenter, Rate )
	vecNew = RotatePoint( vecTarget, vecCenter, Angle )
	
	ThisNPC:Move( vecNew )
	ThisNPC:FaceTo( Enemy )
	
	if WaitInterval > 0 then
		ThisNPC:Wait( WaitInterval )
	end
	
	return 1
end

function ApproachLeft( ThisNPC, Enemy )
	local Dir = ThisNPC:GetFowardDir(Enemy) 		-- ��ȸ ���� �ʱ����
	local EdgeCnt = 8
	
	local Points = Math_GetPolygonPoints(Enemy:GetPos(), Dir, 100, EdgeCnt )
	
	ThisNPC:Move( Points[ "1" ] )
end

function ApproachRight( ThisNPC, Enemy )
	local Dir = ThisNPC:GetFowardDir(Enemy) 		-- ��ȸ ���� �ʱ����
	local EdgeCnt = 8
	
	local Points = Math_GetPolygonPoints(Enemy:GetPos(), Dir, 100, EdgeCnt )
	
	ThisNPC:Move( Points[ "8" ] )
end

function RunAround( ThisNPC, Enemy )
	local Distance = ThisNPC:DistanceTo(Enemy)	-- ��ǥ���� �Ÿ�
	local EdgeCnt = 8
	
	local Points = Math_GetPolygonPoints(Enemy:GetPos(), ThisNPC:GetFowardDir(Enemy) , Distance, EdgeCnt )
	local WayPoints = {}
	
	if math.random(0,1) == 1 then
		for i=1, 3 do
			WayPoints[i] = Points[tostring(i)]
		end
	else
		for i=6, 8 do
			WayPoints[ i-5 ] = Points[ tostring( 13-i ) ]
		end
	end
	
	ThisNPC:PatrolInstant(WayPoints, PT_ONCE)
	ThisNPC:FaceTo( Enemy )
	ThisNPC:Wait(0.5)
end

function SideStep( ThisNPC, Enemy )
	local Distance = ThisNPC:DistanceTo(Enemy)	-- ��ǥ���� �Ÿ�
	local EdgeCnt = 12
	
	local Points = Math_GetPolygonPoints(Enemy:GetPos(), ThisNPC:GetFowardDir(Enemy) , Distance, EdgeCnt )
	
	if math.random(0,1) == 1 then
		ThisNPC:Move( Points[ "1" ] )
	else
		ThisNPC:Move( Points[ "12" ] )
	end
	
	ThisNPC:FaceTo( Enemy )
	ThisNPC:Wait(0.5)
end

function ChkMFForHitReaction( HitInfo )
	return HitInfo.MF:Get( MF_KNOCKBACK ).Value >= 100 or 
		HitInfo.MF:Get( MF_THROWUP ).Value >= 100  or
		HitInfo.MF:Get( MF_BEATEN ).Value >= 100 or
		HitInfo.MF:Get( MF_STUN ).Value >= 100 or
		HitInfo.MF:Get( MF_KNOCKDOWN ).Value >= 100 
end

--[[ 
	������ �Լ�
--]]

function _LogHitInfo( HitInfo )
	GLog( "BE[" .. HitInfo.MF:Get(MF_BEATEN).Value .. "," .. HitInfo.MF:Get(MF_BEATEN).Weight 
	.. "] KB[" .. HitInfo.MF:Get(MF_KNOCKBACK).Value .. "," .. HitInfo.MF:Get(MF_KNOCKBACK).Weight 
	.. "] ST[" .. HitInfo.MF:Get(MF_STUN).Value .. "," .. HitInfo.MF:Get(MF_STUN).Weight 
	.. "] KD[" .. HitInfo.MF:Get(MF_KNOCKDOWN).Value .. "," .. HitInfo.MF:Get(MF_KNOCKDOWN).Weight 
	.. "] TU[" .. HitInfo.MF:Get(MF_THROWUP).Value .. "," .. HitInfo.MF:Get(MF_THROWUP).Weight .."] \n"   )
end


--[[
	�������� ���� �� �޽��� ���� �Լ���
--]]

function BespioAggroChat1( ThisNPC, Enemy)
	local dice = math.random(0,9)
	
	if dice == 0 then
		ThisNPC:NonDelaySay("$$BespioAggro1")
	elseif dice == 1 then
		ThisNPC:NonDelaySay("$$BespioAggro2")
	elseif dice == 2 then
		ThisNPC:NonDelaySay("$$BespioAggro3")
	elseif dice == 3 then
		ThisNPC:NonDelaySay("$$BespioAggro4")
	end
end

function BespioAggroChat2( ThisNPC, Enemy)
	local dice = math.random(0,9)
	
	if dice == 0 then
		ThisNPC:NonDelaySay("$$BespioAggro1")
	elseif dice == 1 then
		ThisNPC:NonDelaySay("$$BespioAggro5")
	elseif dice == 2 then
		ThisNPC:NonDelaySay("$$BespioAggro3")
	elseif dice == 3 then
		ThisNPC:NonDelaySay("$$BespioAggro4")
	end
end

-- 
function BetrayersAggroChat( ThisNPC, Enemy)
	local dice = math.random(0,2)

	if dice == 0 then
		ThisNPC:NonDelaySay("$$BetrayerAggro1")
	elseif dice == 1 then
		ThisNPC:NonDelaySay("$$BetrayerAggro2")
	elseif dice == 2 then
		ThisNPC:NonDelaySay("$$BetrayerAggro3")
	end
end

--[[
	���� ����
--]]
function PuppetBegin(npc)
	--GLog("PuppetBegin "..npc:GetID().."\n")
	npc:ClearJob();
	npc:GainBuffDetail(1900, 600, 0); -- ��������
	npc:SaveHomePoint();
	npc:ChangeAA(AA_NONE)
	npc:DisableCombat();
	npc:MakePeace();
end

function PuppetFinish(npc)
	--GLog("PuppetFinish "..npc:GetID().."\n")
	npc:RemoveBuff(1900); -- �������� �ұ�
	npc:ChangeAA(AA_FACTION)
	npc:EnableCombatWithFaction();
end

--[[
brief:
	ī�带 ���ų� �������� ���� ���鶧 ��� 
	��� ���̺��� �����ִ� ���� �Լ�
     http://en.wikipedia.org/wiki/Fisher-Yates_shuffle ����
--]]

function shuffle(t)
  local n = #t
 
  while n > 2 do
    -- n is now the last pertinent index
    local k = math.random(n) -- 1 <= k <= n
    -- Quick swap
    t[n], t[k] = t[k], t[n]
    n = n - 1
  end
 
  return t
end
