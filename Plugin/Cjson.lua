
--����תjson
function QMPlugin.Encode(tab)
	local cjson = require("cjson")
	local jsonData = cjson.encode(tab)
	return jsonData
end

--jsonת����
function QMPlugin.Decode(jsonData)
	local cjson = require("cjson")
	local tableData = cjson.decode(jsonData)
	return tableData
end