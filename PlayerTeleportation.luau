-- Made by Sovf!

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayersTable = {}
local RBXSignals = {}

local TeleportationMethodNames = {"CFrame", "Tween"}
local TeleportationMethodNumber = 1
local TeleportationMethodMNumber = #TeleportationMethodNames

local BlankFolder = Instance.new("Folder")
local BlankFolder_ChildAdded = BlankFolder.ChildAdded
local RBXSignalF1 = BlankFolder_ChildAdded.Connect
local BlankFunc = function() end
local BlankFolder_ChildAddedConnection = RBXSignalF1(BlankFolder_ChildAdded, BlankFunc)
local RBXSignalF2 = BlankFolder_ChildAddedConnection.Disconnect
RBXSignalF2(BlankFolder_ChildAddedConnection)
BlankFolder:Destroy()

local AddConnection = function(Connection, Func)
	local RBXSignal = RBXSignalF1(Connection, Func)
	table.insert(RBXSignals, RBXSignal)
	return RBXSignal
end

Players.PlayerAdded:Connect(function(Player)
	table.insert(PlayersTable, Player)
end)

Players.PlayerRemoving:Connect(function(Player)
	PlayersTable[Player] = nil
end)

for Index, Value in pairs(Players:GetPlayers()) do
	table.insert(PlayersTable, Value)
end

local GPlayer = function(PlayerN)
	local LoweredPlayerN = string.lower(PlayerN)
	
	for Index, Value in pairs(PlayersTable) do
		if string.sub(string.lower(Value.Name), 1, #PlayerN) == LoweredPlayerN then
			return Value
		end
	end
	
	return nil
end

local GUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local Logo = Instance.new("ImageLabel")
local Main = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local UsernameBox = Instance.new("TextBox")
local Line = Instance.new("Frame")
local TeleportationSpeed = Instance.new("TextBox")
local TeleportationMethod = Instance.new("TextButton")
local Teleport = Instance.new("TextButton")

GUI.Name = "GUI"
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
GUI.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = GUI
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 300, 0, 300)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)

TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(15, 100, 150)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 300, 0, 26)

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 300, 0, 26)
Title.Font = Enum.Font.Gotham
Title.Text = "Player Teleportation"
Title.TextColor3 = Color3.fromRGB(185, 185, 185)
Title.TextSize = 16

CloseButton.Name = "CloseButton"
CloseButton.Parent = TopBar
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.913333356, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 26, 0, 26)
CloseButton.Font = Enum.Font.Gotham
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(185, 185, 185)
CloseButton.TextSize = 16

Logo.Name = "Logo"
Logo.Parent = TopBar
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.0199999996, 0, 0.15384616, 0)
Logo.Size = UDim2.new(0, 18, 0, 18)
Logo.Image = "rbxassetid://12941020168"

Main.Name = "Main"
Main.Parent = MainFrame
Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0199999996, 0, 0.106666669, 0)
Main.Size = UDim2.new(0, 288, 0, 262)

UIListLayout.Parent = Main
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

UsernameBox.Name = "UsernameBox"
UsernameBox.Parent = Main
UsernameBox.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
UsernameBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
UsernameBox.BorderSizePixel = 0
UsernameBox.LayoutOrder = 2
UsernameBox.Position = UDim2.new(0.0347222239, 0, 0.0229007639, 0)
UsernameBox.Size = UDim2.new(0, 272, 0, 32)
UsernameBox.Font = Enum.Font.Gotham
UsernameBox.PlaceholderColor3 = Color3.fromRGB(185, 185, 185)
UsernameBox.PlaceholderText = "Username"
UsernameBox.Text = ""
UsernameBox.TextColor3 = Color3.fromRGB(185, 185, 185)
UsernameBox.TextSize = 14

Line.Name = "Line"
Line.Parent = Main
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.LayoutOrder = 1
Line.Size = UDim2.new(0, 0, 0, 5)

TeleportationSpeed.Name = "TeleportationSpeed"
TeleportationSpeed.Parent = Main
TeleportationSpeed.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TeleportationSpeed.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportationSpeed.BorderSizePixel = 0
TeleportationSpeed.LayoutOrder = 3
TeleportationSpeed.Position = UDim2.new(0.0347222239, 0, 0.0229007639, 0)
TeleportationSpeed.Size = UDim2.new(0, 272, 0, 32)
TeleportationSpeed.Visible = false
TeleportationSpeed.Font = Enum.Font.Gotham
TeleportationSpeed.PlaceholderColor3 = Color3.fromRGB(185, 185, 185)
TeleportationSpeed.PlaceholderText = "Teleportation Speed"
TeleportationSpeed.Text = ""
TeleportationSpeed.TextColor3 = Color3.fromRGB(185, 185, 185)
TeleportationSpeed.TextSize = 14

TeleportationMethod.Name = "TeleportationMethod"
TeleportationMethod.Parent = Main
TeleportationMethod.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
TeleportationMethod.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleportationMethod.BorderSizePixel = 0
TeleportationMethod.LayoutOrder = 2
TeleportationMethod.Position = UDim2.new(0.149305552, 0, 0.389312983, 0)
TeleportationMethod.Size = UDim2.new(0, 272, 0, 32)
TeleportationMethod.Font = Enum.Font.Gotham
TeleportationMethod.Text = "< Teleportation Method: " .. TeleportationMethodNames[TeleportationMethodNumber] .. " >"
TeleportationMethod.TextColor3 = Color3.fromRGB(185, 185, 185)
TeleportationMethod.TextSize = 14

Teleport.Name = "Teleport"
Teleport.Parent = Main
Teleport.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Teleport.BorderColor3 = Color3.fromRGB(0, 0, 0)
Teleport.BorderSizePixel = 0
Teleport.LayoutOrder = 4
Teleport.Position = UDim2.new(0.149305552, 0, 0.389312983, 0)
Teleport.Size = UDim2.new(0, 272, 0, 32)
Teleport.Font = Enum.Font.Gotham
Teleport.Text = "Teleport"
Teleport.TextColor3 = Color3.fromRGB(185, 185, 185)
Teleport.TextSize = 14

local TeleportFuncs = {
	["CFrame"] = function(HumanoidRootPart, TargetHumanoidRootPart)
		HumanoidRootPart.CFrame = TargetHumanoidRootPart.CFrame
	end,

	["Tween"] = function(HumanoidRootPart, TargetHumanoidRootPart)
		TweenService:Create(HumanoidRootPart, TweenInfo.new(tonumber(TeleportationSpeed.Text) or 1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {CFrame = TargetHumanoidRootPart.CFrame}):Play()
	end
}

local TeleportFunc = TeleportFuncs[TeleportationMethodNames[TeleportationMethodNumber]]

TeleportationMethod.MouseButton1Click:Connect(function()
	if TeleportationMethodMNumber == TeleportationMethodNumber then
		TeleportationMethodNumber = 1
		TeleportationSpeed.Visible = false
	else
		TeleportationMethodNumber += 1
		TeleportationSpeed.Visible = true
	end
	
	TeleportFunc = TeleportFuncs[TeleportationMethodNames[TeleportationMethodNumber]]
	TeleportationMethod.Text = "< Teleportation Method: " .. TeleportationMethodNames[TeleportationMethodNumber] .. " >"
end)

Teleport.MouseButton1Click:Connect(function()
	local TargetPlayer = GPlayer(UsernameBox.Text)
	
	if TargetPlayer ~= nil and TargetPlayer.Character and LocalPlayer.Character then
		local HumanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or LocalPlayer.Character:FindFirstChild("Torso") or LocalPlayer.Character:FindFirstChild("UpperTorso")
		local TargetHumanoidPart = TargetPlayer.Character:FindFirstChild("HumanoidRootPart") or TargetPlayer.Character:FindFirstChild("Torso") or TargetPlayer.Character:FindFirstChild("UpperTorso")
		
		if HumanoidRootPart ~= nil and TargetHumanoidPart ~= nil then
			TeleportFunc(HumanoidRootPart, TargetHumanoidPart)
		end
	end
end)

CloseButton.MouseButton1Click:Connect(function()
	for Index, Value in pairs(RBXSignals) do
		RBXSignalF2(Value)
	end
	
	GUI:Destroy()
end)

Instance.new("UIDragDetector").Parent = MainFrame
GUI.Parent = game:GetService("CoreGui")
