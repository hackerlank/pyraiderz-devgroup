--============================================
-- filename: Const.lua
-- ����: ��ũ��Ʈ�� C++���� ����ϴ� ���
--
--============================================

--======================================================
-- C++���� ����ϴ� ���
-- ��� �̸��� ������ ��� C++���� �Բ� �����ؾ� �Ѵ�.
--======================================================

-- �Ϲ�
CONST_KEEP_PLAYER_SPAWN = true;				-- �÷��̾��� ������ ��ġ�� ������� ����
RUN_RESOURCE_VALIDATOR	= true;				-- �ܺ� ������ ���� ��ȿ�� üũ ����
RUN_FOR_TEST = false;						-- ������ �׽�Ʈ������ �������� ����, �ٸ� ����׿� CONST ���� �����־ �� ���� false�̸� �����, �׽�Ʈ �ڵ尡 �۵����� �ʽ��ϴ�.
GAME_TICK = 20;								-- ���� ƽ
SERVER_SLEEP = true;

-- �ʵ� ���� ---------------------------------
INCLUDE_DEV_FIELD_LIST 	= false;			-- �������� �ʵ� �ε� ����

-- ȯ��(�ð�, ����) ���� ---------------------

CONST_LOCALTIME_PER_GAMETIME_ONE_HOUR	= 840;		-- �ǽð� 14���� ���� 1�ð�
CONST_ENV_TIME_UPDATE_TICK_SEC			= 60;		-- �ð�üũ ƽ��(��) - 60��


-- ���ӳ� �ð��� ����
CONST_ENV_TIME_DAWN_START_HOUR		= 4;		-- AM 4�ú��� ����(Dawn)
CONST_ENV_TIME_DAYTIME_START_HOUR	= 7;		-- AM 7�ú��� ��(Daytime)
CONST_ENV_TIME_SUNSET_START_HOUR	= 18;		-- PM 6�ú��� ������(Sunset)
CONST_ENV_TIME_NIGHT_START_HOUR		= 21;		-- PM 9�ú��� ����(Night)

CONST_ENV_WEATHER_TICK_SEC			= 5040;		-- ���� ��ȭ ƽ 84�� (84 * 60)

--- ���� �ʵ� ���� ---------------------------------
CONST_DYNAMICFIELD_EXPIRED_TIME	= 800;		-- ���� �ʵ� �׷쿡 ��ȿ�� �÷��̾ ������ ���� �ʵ� �׷��� ���������ִ� �����ð�  [����Ʈ 15��] (����: ��)

--CONST_LOCALTIME_PER_GAMETIME_ONE_HOUR	= 5;		-- �ǽð� 5�ʰ� ���� 1�ð�
--CONST_ENV_TIME_UPDATE_TICK_SEC			= 5;	-- �ð�üũ ƽ��(��) - 60��
--CONST_ENV_WEATHER_TICK_SEC			= 5;		-- ���� ��ȭ ƽ(5��)

-- ���� ���� ����ǥ


-- ���� ���� ------------------------------------
PVP_MODE	= false;								-- �÷��̾ ���� ���� ����

COMBAT_CHASE_MAX_DURATION_TIME			= 60.0;		-- ������ �ŷ�Ʈ�� �������� ������ �ִ�ð�

STRESS_ADD_INTERRUPT_DURING_ATTACKING	= 10;		-- ���ݽ� ���ͷ�Ʈ ���Ҷ� ��� ��Ʈ���� ��ġ
STRESS_ADD_LIMITED_CHASE_TIME			= 10;		-- �����Ϸ��� ������ �ð����� �޴� ��Ʈ���� ��ġ
STRESS_CHASE_INTERVAL					= 1;		-- �����Ϸ��� �����Ͽ� ��Ʈ���� �������� �ð� ����(����: ��)
STRESS_ADD_AVOID_MELEE_ATTACK			= 10;		--  NPC�� ���� ������ ���� ȸ�ǽ� �޴� ��Ʈ���� ��ġ
STRESS_ADD_AVOID_RANGE_ATTACK			= 10;		-- NPC�� ���Ÿ� ������ ���� ȸ�ǽ� �޴� ��Ʈ���� ��ġ

STATE_FACTOR_FOR_DAMAGE_BY_BACK			= 1.5;		--  ���¿� ���� ������ ���� �ڿ��� �¾�����
STATE_FACTOR_FOR_DAMAGE_BY_BEATEN		= 1.0;		--  ���¿� ���� ������ ���� MF_BEATEN
STATE_FACTOR_FOR_DAMAGE_BY_STUN		    = 1.2;		--  ���¿� ���� ������ ���� MF_STUN
STATE_FACTOR_FOR_DAMAGE_BY_DEFLECT		= 1.2;		--  ���¿� ���� ������ ���� MF_DEFLECT
STATE_FACTOR_FOR_DAMAGE_BY_STAGGER		= 1.2;		--  ���¿� ���� ������ ���� MF_STAGGER
STATE_FACTOR_FOR_DAMAGE_BY_THROWUP		= 1.2;		--  ���¿� ���� ������ ���� MF_THROWUP
STATE_FACTOR_FOR_DAMAGE_BY_KNOCKDOWN	= 1.5;		--  ���¿� ���� ������ ���� MF_KNOCKDOWN
STATE_FACTOR_FOR_DAMAGE_BY_UPPERED		= 1.2;		--  ���¿� ���� ������ ���� MF_UPPERED

STATE_FACTOR_FOR_MF_VALUE_BY_BACK		= 1.5;		--  ���¿� ���� ������� ���� �ڿ��� �¾��� ��
STATE_FACTOR_FOR_MF_VALUE_BY_BEATEN		= 1.0;		--  ���¿� ���� ������� ���� MF_BEATEN	
STATE_FACTOR_FOR_MF_VALUE_BY_STUN		= 1.5;		--  ���¿� ���� ������� ���� MF_STUN
STATE_FACTOR_FOR_MF_VALUE_BY_DEFLECT	= 1.0;		--  ���¿� ���� ������� ���� MF_DEFLECT
STATE_FACTOR_FOR_MF_VALUE_BY_STAGGER	= 1.0;		--  ���¿� ���� ������� ���� MF_STAGGER
STATE_FACTOR_FOR_MF_VALUE_BY_THROWUP	= 1.0;		--  ���¿� ���� ������� ���� MF_THROWUP
STATE_FACTOR_FOR_MF_VALUE_BY_KNOCKDOWN	= 1.0;		--  ���¿� ���� ������� ���� MF_KNOCKDOWN
STATE_FACTOR_FOR_MF_VALUE_BY_UPPERED	= 1.0;		--  ���¿� ���� ������� ���� MF_UPPERED	

VICTORY_DEFAULT_DELAY					= 3.0;		-- NPC�� �¸������� ��Ʈ�� ��õ��� �ʾ����� �⺻������ ����ϴ� �ð�
INVINCIBLE_TIME_REVIVE					= 3.0;
INVINCIBLE_TIME_ENTER_FIELD				= 10.0;
INVINCIBLE_BUFF_ID					= 1900;
INVISIBLE_BUFF_ID					= 902;

NO_WEAPON_DAMAGE_LEFT				= 5;			-- �޼� ���⸦ �������� �ʾ��� ����� �⺻ ������
NO_WEAPON_DAMAGE_RIGHT				= 5;			-- ������ ���⸦ �������� �ʾ��� ����� �⺻ ������

PRE_HIT_CHECK_TIME					= 0.2;			-- ���� ���� �ð����� ���� �����ϴ� �ð�

-- �Ϲݸ� ���� ���� --
DEF_WAIT_INTERVAL = 1;								-- ������ �̵��� �߰��߰� ����ϴ� �ð���

-- ������ȿ�Ÿ� ���� --								-- ���������� �����Ÿ��� �̵��ϸ� ������ Ǯ�� �������·� ���� ������������ �����Ѵ�.
NPC_DEFAULT_COMBAT_RADIUS = 0;

-- ���� ���� --------------------------------------
REGEN_TICK								= 5;		-- ���� ƽ (��)
HP_REGEN_AMOUNT 						= 25;		-- ƽ�� HP ������
HP_REGEN_RATE_IN_COMBAT 				= 0.0625;	-- ������ HP ���� ����ġ (1 = 100%)
EN_REGEN_AMOUNT 						= 75;		-- ƽ�� EN ������
EN_REGEN_RATE_IN_COMBAT 				= 0.4;		-- ������ EN ���� ����ġ (1 = 100%)
STA_REGEN_AMOUNT 						= 50;		-- ƽ�� STA ������
STA_REGEN_RATE_IN_COMBAT 				= 0.6;		-- ������ STA ���� ����ġ (1 = 100%)
SITTING_REGEN_RATE						= 1.5;		-- �ɾ����� �� ������ ���� 

-- PVP ���� --------------
PVP_DURATIONTIME						= 5.0;						-- �÷��̾ �ǰݽ� PVP���� ���ӽð�

-- ������ ���� --------------
MAGICAREA_EFFECTION_PERIOD			= 1.0;				-- ������ ȿ�� �ֱ�

-- ����ȭ ����
INVISIBILITY_DETECT_TICK					= 1.0;				-- ����ȭ Ž�� ó�� ƽ �ֱ� (second)
INVISIBILITY_DETECT_DISTANCE			= 500; -- ����ȭ Ž���Ÿ� (cm)

-- ����Ʈ���̺� ����
HATETABLE_ENTRY_TIMEOUT				= 12;				-- ����Ʈ ���̺� �� �׸��� �ڵ����� ���ŵǴ� �ð� (����: ��)
HATETABLE_ENTRY_PARTY_SCAN_DISTANCE = 9000;				-- ����Ʈ ���̺� �߰��� �÷��̾��� ��Ƽ�� Ž�� �Ÿ� (cm)
	
-- ��Ŀ�� ���� --------------
FOCUS_ADVENT_DURATION_TIME = 20.0; -- ���� ��Ŀ���� �ִ� �󸶳� ���ӵǴ°�
FOCUS_BERSERK_HIT_COUNT = 8;	-- ����� ������ ����ũ�� �ɸ��°�
FOCUS_BERSERK_DURATION_TIME = 30.0;	-- ����ũ ��Ŀ���� �󸶳� ���ӵǴ°�
FOCUS_BERSERK_RELAYHIT_TIME = 9.0;	-- ����ũ ��Ŀ���� ������ �����Ǵ� �ð�
FOCUS_COUNTER_DURATION_TIME = 10.0;	-- ���� ��Ŀ���� �󸶳� ���ӵǴ°�
FOCUS_ENLIGHTEN_DURATION_TIME = 60.0;	-- ���� ��Ŀ���� �󸶳� ���ӵǴ°�
FOCUS_ENLIGHTEN_HIT_COUNT = 3;			-- ����� ������ ������ �ɸ��°�
FOCUS_ENLIGHTEN_MINDSTORM_BUFF_ID = 500;	-- ����Ʈ���� ���� ���̵�
FOCUS_ENLIGHTEN_RELAYHIT_TIME = 5.0;		-- ���� ��Ŀ���� ������ �����Ǵ� �ð�

-- �ڸ���� ����
AFK_TIMEOUT = 600; -- �ڸ���� �Ǵ� �ð�

-- ���� ������ ���� --------------
FALLING_DEBUFF_LV1_ID = 100003;
FALLING_DEBUFF_LV2_ID = 100004;

-- ������ ���� --------
ARENA_FIELDGROUP_ID = 50010;				-- ������ �ʵ�׷� ���̵�
ARENA_FIELD_ID = 50011;							-- ������ �ʵ� ���̵�
ARENA_GAME_COUNT = 10.0;					-- ������ ���ӽ��� ���ð�
ARENA_SCOREBOARD_COUNT= 10.0;			-- ������ ������ ���ð�
ARENA_DEATHMATCH_MAX_SCORE = 7;		-- ������ ������ġ �ִ�����
ARENA_DEATHMATCH_REBIRTH_TIME = 30.0;	-- ������ ������ġ ��Ȱ�ð�

-- NPC ��ü�Ҹ� ���� ------------
function MakeMinute(second)
	return second * 60
end

NPC_DECAY_TIME_NOITEM = MakeMinute(2);				-- NPC�� ������ ������ ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_0 = MakeMinute(5);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_1 = MakeMinute(5);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_2 = MakeMinute(5);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_3 = MakeMinute(5);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_4 = MakeMinute(10);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_5 = MakeMinute(10);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_6 = MakeMinute(10);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_7 = MakeMinute(15);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_8 = MakeMinute(15);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_9 = MakeMinute(15);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
NPC_DECAY_TIME_GRADE_10 = MakeMinute(15);			-- NPC�� �������� ������ ��޺� ��ü�� �Ҹ�Ǵ� �ð� (����: ��)
	
--  �г� ���� -----------------
HIT_RAGE_AMOUNT = 10;						-- NPC�� �ǰ��� ���� �� ���� �г뷮
CRIHIT_RAGE_AMOUNT = 10;					-- NPC�� ġ��Ÿ�� ���� �� ���� �߰� �г뷮 (�⺻ �ǰݺг뷮�� �߰�)

-- ��ã�� ����
NPC_FINDPATH_RADIUS_LEVEL1 = 600 			-- ��ã�� ����1 �������
NPC_FINDPATH_RADIUS_LEVEL2 = 1200			-- ��ã�� ����2 �������
NPC_FINDPATH_RADIUS_LEVEL3 = 2000			-- ��ã�� ����3 �������
NPC_FINDPATH_TICK_LEVEL1 = 0.2				-- ��ã�� ����1 ���� ƽ�ð�
NPC_FINDPATH_TICK_LEVEL2 = 0.4				-- ��ã�� ����2 ���� ƽ�ð�
NPC_FINDPATH_TICK_LEVEL3 = 0.6				-- ��ã�� ����3 ���� ƽ�ð�
NPC_FINDPATH_TICK_OTHER = 1.0				-- ��ã�� ������ ���� ƽ�ð�
NPC_FINDPATH_MOVESPEED_FACTOR = 400	-- ��ã�� ���� ƽ�ð� �ӵ� ����ġ (ƽ�ð� * �̵��ӵ� / ����)

-- ä��Ȱ�� �ҿ� �ð� ----------------
GATHER_TIME_MINE_TIER_1		= 6.0		-- ä��
GATHER_TIME_MINE_TIER_2		= 6.0
GATHER_TIME_MINE_TIER_3		= 6.0
GATHER_TIME_MINE_TIER_4		= 6.0
GATHER_TIME_MINE_TIER_5		= 6.0
GATHER_TIME_MINE_TIER_6		= 6.0
GATHER_TIME_MINE_TIER_7		= 6.0
GATHER_TIME_MINE_TIER_8		= 6.0
GATHER_TIME_MINE_TIER_9		= 6.0
GATHER_TIME_MINE_TIER_10	= 6.0

GATHER_TIME_HERB_TIER_1		= 6.0		-- �Ĺ�
GATHER_TIME_HERB_TIER_2		= 6.0
GATHER_TIME_HERB_TIER_3		= 6.0
GATHER_TIME_HERB_TIER_4		= 6.0
GATHER_TIME_HERB_TIER_5		= 6.0
GATHER_TIME_HERB_TIER_6		= 6.0
GATHER_TIME_HERB_TIER_7		= 6.0
GATHER_TIME_HERB_TIER_8		= 6.0
GATHER_TIME_HERB_TIER_9		= 6.0
GATHER_TIME_HERB_TIER_10	= 6.0

GATHER_TIME_RELIC_TIER_1	= 6.0		-- �߱�
GATHER_TIME_RELIC_TIER_2	= 6.0
GATHER_TIME_RELIC_TIER_3	= 6.0
GATHER_TIME_RELIC_TIER_4	= 6.0
GATHER_TIME_RELIC_TIER_5	= 6.0
GATHER_TIME_RELIC_TIER_6	= 6.0
GATHER_TIME_RELIC_TIER_7	= 6.0
GATHER_TIME_RELIC_TIER_8	= 6.0
GATHER_TIME_RELIC_TIER_9	= 6.0
GATHER_TIME_RELIC_TIER_10	= 6.0

GATHER_TIME_LUMBER_TIER_1	= 6.0		-- ���� ä��
GATHER_TIME_LUMBER_TIER_2	= 6.0
GATHER_TIME_LUMBER_TIER_3	= 6.0
GATHER_TIME_LUMBER_TIER_4	= 6.0
GATHER_TIME_LUMBER_TIER_5	= 6.0
GATHER_TIME_LUMBER_TIER_6	= 6.0
GATHER_TIME_LUMBER_TIER_7	= 6.0
GATHER_TIME_LUMBER_TIER_8	= 6.0
GATHER_TIME_LUMBER_TIER_9	= 6.0
GATHER_TIME_LUMBER_TIER_10	= 6.0

-- ä�� ������Ʈ ������ �ð� ----------------
GATHER_RESPAWN_TIME_MINE	= 300;		-- 5��(1 = 1��)
GATHER_RESPAWN_TIME_HERB	= 300;
GATHER_RESPAWN_TIME_RELIC	= 300;
GATHER_RESPAWN_TIME_LUMBER	= 300;

-- ��Ȱ ����
REBIRTH_VALID_DISTANCE_XY		= 300.0;
REBIRTH_VALID_DISTANCE_Z		= 100.0;
REBIRTH_SOULBINDING_DEBUFF		= 1910;	
REBIRTH_CHECKPOINT_DEBUFF		= 1910;	
REBIRTH_QUESTPVP_DEBUFF			= 1903;
REBIRTH_QUESTPVP_BUFF			= 1904;
REBIRTH_SOULBINDING_RECOVER		= 0.25;
REBIRTH_CHECKPOINT_RECOVER		= 0.25;
REBIRTH_QUESTPVP_RECOVER		= 1.0;
REBIRTH_BATTLEARENA_RECOVER		= 1.0;

-- ����ȭ ����
COMMAND_CROWDED_QUEUE_SIZE = 2000;
-- COMMAND_OVERFULL_QUEUE_SIZE = 4000; -- ���� ���� Ŀ��尡 ��� �����ϴ�.
SECTOR_CROWDED_LEVEL_CAPACITY = 60 -- ���ⷹ���� �Ǳ� ���� �ʿ� �÷��̾� ��
SECTOR_PACKET_IGNORE_EACH_COUNT = 4 -- ���ⷹ����  ���õ� ��Ŷ Ƚ��
SECTOR_PACKET_LIMIT_QUEUE_SIZE = 40 -- ���ʹ� ������ �÷��̾ ī���� �ִ� ����

-- AI Monitor -----------
AIMON_ENABLE = true;
AIMON_AUTO_TARGET = false;
AIMON_SET_FIELDID = 1100001;
AIMON_SET_SPAWNID = 2;
AIMON_UPDATE_INTERVAL = 0.5;


--======================================================
-- ��ũ��Ʈ���� ����ϴ� ���
--======================================================
-- Patorl Enum
PATROL_INFINITY		=0;			-- ���� ����       
PT_ONCE					=0;
PT_ONCE_RETURN		=1;
PT_LOOP					=2;
PT_LOOP_BACKORDER	=3;

ROAM_DEFAULT_IDLE_TIME = 7.0;	-- �ι� �⺻ ���ð�

TEST_AI_DEBUG_MESSAGE = false;		-- ��ã�� ���� ���� AI �޼��� Ŭ���̾�Ʈ�� �����ֱ�
TEST_SHOW_CLIENT_NPC_POS = false;
TEST_SHOW_CLIENT_NPC_MOVE_PATH = false;
TEST_SHOW_CLIENT_NPC_PICKING = 0;
TEST_SHOW_NAVIGATION_MESH = false;
TEST_SHOW_CLIENT_COLT = false;
TEST_SHOW_CLIENT_FORMULA_DAMAGE = false;	-- Ŭ���̾�Ʈ�� ���ذ����� ������ ����
TEST_SHOW_CLIENT_FORMULA_GUARD = false;		-- Ŭ���̾�Ʈ�� ��������� ������ ����

TEST_MOVE_BY_CONTEXT = false;
TEST_RANDOM_MOVE = false;
ENABLE_COLT_TIMEOUT_CHECKER = false;
SHOW_LUA_ERROR_LOG = false;
SHOW_TALENT_LOG = false;
TEST_MAKE_SOLO_PARTY = false;
TEST_ENABLE_OFFLINE_PARTY_FOR_STAND_ALONE_MODE = false;
DEBUG_CREATE_CONVERT_LUAFILE = false;
TEST_CMD_HANDLER_COMPARER = false;

--======================================================
-- AutoTest���� ����ϴ� ���
--======================================================

AUTO_TEST_ACTIVE = false;
AUTO_TEST_TYPE = "none";
AUTO_TEST_LIMIT_FRAME = 0;
AUTO_TEST_REPEAT = 1
AUTO_TEST_TIME = 1000000000;
AUTO_TEST_SPEED = 1;
AUTO_TEST_FIELD_ID = 5000;
AUTO_TEST_NPC_COUNT = 10;

AITEST_TYPE = 0;			-- AITEST__NONE = 0, AITEST_STRESS_COMBAT_ONE_FIELD = 1; AITEST_STRESS_COMBAT_ALL_FIELD = 2;


INTERACT_QUEST_OBJECTIVE_ANI_TIME = 6

LOG_CRT = 0; -- �α׿� ���� CommandResultTable


--======================================================
-- ����׿� �ʿ��� ���
--======================================================
DEBUG_CONSOLE_SHOW_GAMETICK = true;		-- �ֿܼ� ����ƽ�� ����� ���ΰ�
DEBUG_CONSOLE_GAMETICK_TICK = 60;		-- ���ʿ� �ѹ��� ����� ���ΰ�
DEBUG_GAME_TICK_MOD_SPEED = 1.0;		-- ���� ƽ ���

