--============================================
-- filename: entry.lua
-- ����: GameServer�� �ʱ� ���� ����
--
--============================================

function dofile_safe(filename)
	filename = "script/"..filename
	local f = io.open(filename);
	if f then
		f:close();
		dofile (filename);
	end
end

-- require���� �˻��� �� �ִ� �о� ����
package.path = "./?.lua;./?.dll;./script/?.lua;./script/?.dll";

-- �̸� �о���� lua ���ϵ�
dofile_safe("Const.lua");
dofile_safe("Const_debug.lua");
dofile_safe("Talent.lua");
dofile_safe("rel_debug.lua");
dofile_safe("debug.lua");



-- �̸� ������ �����



-- �̸� ������ ������


-- �ʱ�ȭ
math.randomseed( os.time() )