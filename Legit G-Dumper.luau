-- Made by legitimate0x1!

local Settings = {
	Cooldown = 0,
	RobloxFiles = false,
	Notifications = {
		Enabled = true,
		OutputFunction = print
	}
}

local Chat = game:GetService("Chat")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local PlayerScripts = game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerScripts")
local StarterPlayer = game:GetService("StarterPlayer")
local StarterPlayerScripts = StarterPlayer:FindFirstChildOfClass("StarterPlayerScripts")
local HttpService = game:GetService("HttpService")

local RandomID = function()
	return "A"..string.upper(string.sub(HttpService:GenerateGUID(false), 1, 5))
end

if not isfolder("Legit-GDumper") then
	makefolder("Legit-GDumper")
end

local PlaceId = tostring(game.PlaceId)

if not isfolder("Legit-GDumper/"..PlaceId) then
	makefolder("Legit-GDumper/"..PlaceId)
end

local Path = "Legit-GDumper/"..PlaceId.."/"

local WFile = function(FileName, Content)
	writefile(Path..FileName, Content)
end

local RobloxFileNames = {
	"RbxCharacterSounds",
	"PlayerModule",
	"PlayerScriptsLoader",
	"ChatScript",
	"BubbleChat"
}

local RobloxFiles = {}

for Index, Value in pairs(RobloxFileNames) do
	local Object = PlayerScripts:FindFirstChild(Value)
	local Object2 = StarterPlayerScripts:FindFirstChild(Value)
	
	table.insert(RobloxFiles, Object)
	table.insert(RobloxFiles, Object2)
end

for Index, Value in pairs(RobloxFiles) do
	for Index2, Value2 in pairs(Value:GetDescendants()) do
		table.insert(RobloxFiles, Value2)
	end
end

local IsRobloxFile = function(Ins)
	for Index, Value in pairs(RobloxFiles) do
		if Ins == Value then
			return true
		end
	end
	
	--if RobloxFiles[Ins] then -- return RobloxFiles[Ins]
	--	return true
	--end
	
	--for Index, Value in pairs(RobloxFiles) do
	--	if Ins:IsDescendantOf(Value) then
	--		return true
	--	end
	--end
	
	return false
end

local DecompiledCount = 0

local DecompFunc = function(Value, Count)
	local Decompiled = decompile(Value)
	local FileName = Value.Name .. " - " .. Value.ClassName .. ".txt"
	
	if not isfile(Path..FileName) then
		WFile(Value.Name.." - " .. Value.ClassName .. ".txt", "-- Legit-GDumper by legitimate0x1!\n\n-- Path --> "..Value:GetFullName().."\n"..Decompiled)
	else
		if readfile(Path..FileName) ~= Decompiled then
			WFile(Value.Name.." - " .. Value.ClassName .. " - " .. RandomID() .. ".txt", "-- Legit-GDumper by legitimate0x1!\n\n-- Path --> "..Value:GetFullName().."\n"..Decompiled)
		end
	end
	
	DecompiledCount += 1
	
	if Settings.Notifications.Enabled then
		Settings.Notifications.OutputFunction("Legit-GDumper --> " .. DecompiledCount .. "/" .. Count)
	end
	
	if Settings.Cooldown ~= 0 then -- task.wait(Settings.Cooldown)
		task.wait(Settings.Cooldown)
	end
end

local Instances = game:GetDescendants()
local LSM = {}

for Index, Value in pairs(Instances) do
	if (Value:IsA("LocalScript") or Value:IsA("ModuleScript")) then
		if Settings.RobloxFiles then
			table.insert(LSM, Value)
		else
			if not IsRobloxFile(Value) and not Value:IsDescendantOf(CoreGui) and not Value:IsDescendantOf(CorePackages) and not Value:IsDescendantOf(Chat) then
				table.insert(LSM, Value)
			end
		end
	end
end

local Count = #LSM

for Index, Value in pairs(LSM) do
	DecompFunc(Value, Count)
end
