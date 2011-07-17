--============================================
-- filename: Const.lua
-- ����: ��ũ��Ʈ�� C++���� ����ϴ� ���
--
--============================================

--======================================================
-- C++���� ����ϴ� ���
-- ��� �̸��� ������ ��� C++���� �Բ� �����ؾ� �Ѵ�.
--======================================================

GAME_SERVER_PLAYER_COUNT_LIMIT = 1500;			-- ���� ������ ������ �� �ִ� �÷��̾��� �ִ� ����
GAME_SERVER_DYNAMIC_FIELD_COUNT_LIMIT = 5000;	-- ���� ������ ������ �� �ִ� �����ʵ��� �ִ� ����

FITNESS_ADDITIONAL_VALUE_TO_ALLOC_FIELD = 10;	-- �ʵ带 �Ҵ��� ������ �� �� Ư�� �������� �ִ� ������
-- �����ʵ� �Ҵ� : Prime Channel �� �ִ� ������ ������
-- �����ʵ� �Ҵ� : ��û�ڰ� �ִ� ������ ������

TIME_UPDATE_CHANNEL_BEHOLDER_SEC = 1.0;			-- ä�� ��Ȧ���� ������Ʈ �ֱ� (��)
TICK_EXPIRE_SILENT_CHANNEL = 300000;			-- ChannelBeholder ���� ������� �ʴ� ä���� �����ϱ���� ��� �ð� (ms)
RATIO_CHANNEL_CROWD_FOR_NEW_CHANNEL = 90;		-- ��� ä���� ��% �̻� ��ȭ�����̸� ���ο� ä���� �������� ���� ����

INCLUDE_DEV_FIELD_LIST 	= false;			-- �������� �ʵ� �ε� ����

INSERT_WORLD_INFO = false;					-- ���� ���۽ø��� �����߰�

--======================================================
-- ����׿� ���
--======================================================
SHOW_LUA_ERROR_LOG = true;
ALLOC_DYNAMIC_SERVER_ANOTHER_SERVER = false;

DEBUG_CONSOLE_SHOW_GAMETICK = true;		-- �ֿܼ� ����ƽ�� ����� ���ΰ�
DEBUG_CONSOLE_GAMETICK_TICK = 60;		-- ���ʿ� �ѹ��� ����� ���ΰ�

INSERT_WORLD = true;