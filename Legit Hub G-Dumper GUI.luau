-- Made by legitimate0x1

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/legitimate-0x1/__0x1/main/Libraries/Material.lua"))()

local X =
	Material.Load(
		{
			Title = "Legit-GDumper",
			Style = 1,
			SizeX = 210,
			SizeY = 200,
			Theme = "Dark"
		}
	)

local Page1 =
	X.New(
		{
			Title = "Menu"
		}
	)

local Page2 =
	X.New(
		{
			Title = "Settings"
		}
	)

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

local PlaceId = tostring(game.PlaceId)

local Folders = function()
	if not isfolder("Legit-GDumper") then
		makefolder("Legit-GDumper")
	end

	if not isfolder("Legit-GDumper/"..PlaceId) then
		makefolder("Legit-GDumper/"..PlaceId)
	end
end

Folders()

local Path = "Legit-GDumper/"..PlaceId.."/"

local IsRobloxFile = function(Ins, Table)
	for Index, Value in pairs(Table) do
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

local WFile = function(FileName, Content)
	writefile(Path..FileName, Content)
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

Page1.Button(
		{
			Text = "Dump",
			Callback = function()
				Folders()
				DecompiledCount = 0
				
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
				
				local Instances = game:GetDescendants()
				local LSM = {}

				for Index, Value in pairs(Instances) do
					if (Value:IsA("LocalScript") or Value:IsA("ModuleScript")) then
						if Settings.RobloxFiles then
							table.insert(LSM, Value)
						else
							if not IsRobloxFile(Value, RobloxFiles) and not Value:IsDescendantOf(CoreGui) and not Value:IsDescendantOf(CorePackages) and not Value:IsDescendantOf(Chat) then
								table.insert(LSM, Value)
							end
						end
					end
				end

				local Count = #LSM

				for Index, Value in pairs(LSM) do
					DecompFunc(Value, Count)
				end
			end
		}
	)

Page2.Toggle(
		{
			Text = "Roblox Files",
			Callback = function(Value)
				Settings.RobloxFiles = Value
			end
		}
	)

Page2.Toggle(
		{
			Text = "Notifications",
			Callback = function(Value)
				Settings.Notifications.Enabled = Value
			end
		}
	)
