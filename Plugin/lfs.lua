function print(...)
	LuaAuxLib.TracePrint(...)
end
local mlfs
--��ȡ�ļ�����
function QMPlugin.Attributes(filepath,name)   
	local ret
	mlfs = mlfs or require "lfs"
	ret = mlfs.attributes(filepath)
	return ret
end

function QMPlugin.Chdir(path)             --�ı乤��·��
	local ret
	mlfs = mlfs or require "lfs"
	ret = mlfs.chdir(path)
	return ret
end

--��ȡ��ǰ����·��
function QMPlugin.Currentdir()
	local ret
	mlfs = mlfs or require "lfs"
	ret = mlfs.currentdir()
	return ret
end

--�½�Ŀ¼
function QMPlugin.Mkdir(path)
	local ret
	mlfs = mlfs or require "lfs"
	ret = mlfs.mkdir(path)
	return ret
end

--ɾ��Ŀ¼
function QMPlugin.Rmdir(path)               
	local ret
	mlfs = mlfs or require "lfs"
	ret = mlfs.rmdir(path)
	return ret
end