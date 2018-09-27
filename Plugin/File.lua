--������Ҫ����������ʹ�õĲ��������������� QMPlugin. ǰ׺
--�ڰ��������в��� Import "�����.lua" ������������ �����.������ ���ɵ���

function QMPlugin.Read(FileName)
	local ReadContent

	--������pcall�ѿ��ܲ�������ʱ����Ĳ��ְ��������������ļ���ʧ�ܵ�ʱ������ű���ֹ
	pcall(
	function()

	io.input(FileName)
	ReadContent = io.read("*a")
	io.close()
	
	end)
	
	return ReadContent
end

function QMPlugin.ReadLines(FileName)
	local Lines = {}
	
	pcall(
	function()

	io.input(FileName)
	while true do
		local ReadContent = io.read()
		--Ϊ�˺Ͱ���������﷨����һ�£�ע�� lua �е� nil ��ҪдΪ null
		if ReadContent == null then 
			break
		end
		ReadContent = string.gsub(ReadContent, "[\r\n]", "")
		table.insert(Lines, ReadContent)
	end
	io.close()
	
	end)
	
	return Lines
end

function QMPlugin.ReadLine(FileName, LineNum)
	local LineContent = ""
	pcall(
	function()
	local curLineNum = 0
	io.input(FileName)
	while true do
		local ReadContent = io.read()
		--Ϊ�˺Ͱ���������﷨����һ�£�ע�� lua �е� nil ��ҪдΪ null
		if ReadContent == null then 
			break
		end
		curLineNum = curLineNum + 1
		if curLineNum == LineNum then
			LineContent = ReadContent
		end

	end
		io.close()
	end)
	
	LineContent = string.gsub(LineContent, "[\r\n]", "")
	return LineContent
end

function QMPlugin.LinesNumber(FileName)
	local LinesAllNum = 0
	pcall(
	function()
	io.input(FileName)
	while true do
		local ReadContent = io.read()
		--Ϊ�˺Ͱ���������﷨����һ�£�ע�� lua �е� nil ��ҪдΪ null
		if ReadContent == null then 
			break
		end
		LinesAllNum = LinesAllNum + 1
	end
		io.close()
	end)
	
	return LinesAllNum
end

function QMPlugin.Write(FileName, ...)
	local arg={...}
	pcall(
	function()
		io.output(FileName)
		for i, v in ipairs(arg) do
			io.write(tostring(v))
		end
		io.close()
	end)
end

function QMPlugin.WriteLine(path,line,str)
	local t={}
	f = io.open(path,"r")
	for i in f:lines() do
		table.insert(t,i)
	end
	table.insert(t,line,str)
	f:close()
	f = io.open(path,"w")
	for _,v in ipairs(t) do 
		f:write(v.."\r\n")
	end 
	f:close()
end 

function QMPlugin.WriteLines(FileName, Lines)
	pcall(
	function()
	
		io.output(FileName)
		for i, v in ipairs(Lines) do
			io.write(tostring(v), '\r\n')
		end
		io.close()
		
	end)
end

function QMPlugin.Append(FileName, ...)
	local arg={...}
	pcall(
	function()
		local f = io.open(FileName, "a")
		if f == null then
		    return false
		end
		for i, v in ipairs(arg) do
			f:write(tostring(v))
		end
		f:close()
	end)
	return true
end

function QMPlugin.DeleteLine(FileName, LineNum)
	local Lines = {}
	
	pcall(
		function()
			local curLineNum = 0
			io.input(FileName)
			while true do
				local ReadContent = io.read()
				--Ϊ�˺Ͱ���������﷨����һ�£�ע�� lua �е� nil ��ҪдΪ null
				if ReadContent == null then 
					break
				end
				curLineNum = curLineNum + 1
				if curLineNum ~= LineNum then
					table.insert(Lines, ReadContent)
				end
			end
			--�˴����ܵ���io.close()�����ں���Ҫ�����������ļ�������رյĻ�����ᱨ����ʾ�������ѹرյ��ļ�
			--io.close()
			
			-- write all the lines
			io.output(FileName)
			for i, v in ipairs(Lines) do
				io.write(v, '\n')
			end
			io.close()
		end
	)
end

function QMPlugin.Bytes(FileName)
	local size = 0
	pcall(
	function()
		local f = io.open(FileName, "r")
		if f == null then
		    return null
		end
		size = f:seek("end")
		f:close()
	end)
	return size
end

function QMPlugin.Length(FileName)
	local fileLength = 0
	pcall(
		function()
			io.input(FileName)
			local ReadContent = io.read("*a")
			local strContent = tostring(ReadContent)
			strContent = string.gsub(strContent, "[\r\n]", "")
			
			--����strContent��UTF8��ʽ���ַ�����
			local len = #strContent
			local left = len
			local cnt = 0
			local arr={0,0xc0,0xe0,0xf0,0xf8,0xfc}
			while left ~= 0 do
				local tmp=string.byte(strContent,-left)
				local i=#arr
				while arr[i] do
					if tmp>=arr[i] then 
						left=left-i
						break
					end
					i=i-1
				end
				cnt=cnt+1
			end
			fileLength = cnt
			
		end
	)
	return fileLength
end