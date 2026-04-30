-- Made by Sovf!

local Module = {}

Module.WriteFile = function(FileName, FileContent)
	if writefile ~= nil then
		writefile(FileName, FileContent)
	end

	return FileContent
end

Module.ReadFile = function(FileName)
	if readfile ~= nil and (FileCheckSupported and isfile(FileName) or not FileCheckSupported) then
		local Status, Result = pcall(readfile, FileName)

		if Status and type(Result) == "string" then
			return Result
		end
	end

	return ""
end

return Module
