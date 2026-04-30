-- Made by Sovf!

local Module = {}

Module.Config = function(FileName, FileContent)
	FileContent = FileContent or ""

	return isfile and isfile(FileName) and readfile ~= nil and select(2, pcall(readfile, FileName)) or writefile ~= nil and writefile(FileName, FileContent) == nil and FileContent
end

return Module
