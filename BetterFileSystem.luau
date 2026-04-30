-- Made by Sovf!

local Module = {}
local isfile, readfile, writefile, makefolder, delfolder, select, pcall, tostring, string_split, math_random = isfile, readfile, writefile, makefolder, delfolder, select, pcall, tostring, string.split, math.random

if makefolder ~= nil then
	local FolderPath = tostring(math_random()).."/"..tostring(math_random())
	
	Module.MultiFoldersSupported = pcall(makefolder, FolderPath)
	
	if delfolder ~= nil then
		delfolder(FolderPath)
	end
end

Module.MakeFolder = function(FolderName, Debug, CustomMultiFolders)
	if makefolder ~= nil then
		if CustomMultiFolders == true or not Module.MultiFoldersSupported then
			local SeperatedFolderName = string_split(FolderName, "/")
			local CurrentSeperatedFolderName = SeperatedFolderName[1]
			
			for Index = 2, #SeperatedFolderName do
				CurrentSeperatedFolderName ..= "/"..SeperatedFolderName[Index]
				makefolder(CurrentSeperatedFolderName)
			end
		else
			makefolder(FolderName)
		end
				
		return Debug == true and isfolder ~= nil and isfolder(FolderName)
	end
end

Module.ReadFile = function(FileName, FileContent)
	FileContent = FileContent or ""

	return isfile and isfile(FileName) and readfile ~= nil and select(2, pcall(readfile, FileName)) or writefile ~= nil and writefile(FileName, FileContent) == nil and FileContent
end

Module.CompareFileContents = function(FileName, FileContent)
	return Module.ReadFile(FileName) == FileContent
end

Module.WriteFile = function(FileName, FileContent)
	FileContent = FileContent or ""

	if writefile ~= nil then
		pcall(writefile, FileName, FileContent)
	end
	
	return FileContent
end

return table.freeze(Module)
