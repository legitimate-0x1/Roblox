-- Made by Sovf!

local Workspace = game:GetService("Workspace")
local LocalPlayer = game:GetService("Players").LocalPlayer

local GUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local Main = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Visualize = Instance.new("Frame")
local VisualizeButton = Instance.new("TextButton")
local VisualizeInfo = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local LagSwitch = Instance.new("Frame")
local LagSwitchButton = Instance.new("TextButton")
local LagSwitchInfo = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local LagSwitchKey = Instance.new("TextBox")
local LagSwitchEnabled = false
local VisualizationEnabled = false
local VisualizationPos = nil

local FakeChar = nil

GUI.Name = "GUI"
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
GUI.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = GUI
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 200, 0, 139)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)

TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(15, 100, 150)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 200, 0, 30)

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 200, 0, 30)
Title.Font = Enum.Font.Gotham
Title.Text = "Lag Switch GUI"
Title.TextColor3 = Color3.fromRGB(185, 185, 185)
Title.TextSize = 16

CloseButton.Name = "CloseButton"
CloseButton.Parent = TopBar
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.850000024, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Font = Enum.Font.Gotham
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(185, 185, 185)
CloseButton.TextSize = 16

Main.Name = "Main"
Main.Parent = MainFrame
Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0279998779, 0, 0.259898245, 0)
Main.Size = UDim2.new(0, 187, 0, 95)

UIListLayout.Parent = Main
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

Visualize.Name = "Visualize"
Visualize.Parent = Main
Visualize.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
Visualize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visualize.BorderSizePixel = 0
Visualize.LayoutOrder = 2
Visualize.Size = UDim2.new(0, 187, 0, 27)

VisualizeButton.Name = "Visualize"
VisualizeButton.Parent = Visualize
VisualizeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VisualizeButton.BackgroundTransparency = 1
VisualizeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualizeButton.BorderSizePixel = 0
VisualizeButton.Size = UDim2.new(0, 187, 0, 27)
VisualizeButton.Font = Enum.Font.Gotham
VisualizeButton.Text = "Visualize"
VisualizeButton.TextColor3 = Color3.fromRGB(185, 185, 185)
VisualizeButton.TextSize = 14

VisualizeInfo.Name = "VisualizeInfo"
VisualizeInfo.Parent = Visualize
VisualizeInfo.BackgroundColor3 = Color3.fromRGB(223, 0, 0)
VisualizeInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
VisualizeInfo.BorderSizePixel = 0
VisualizeInfo.Position = UDim2.new(0.921925247, 0, 0.259259254, 0)
VisualizeInfo.Size = UDim2.new(0, 12, 0, 12)

UICorner.CornerRadius = UDim.new(0, 32)
UICorner.Parent = VisualizeInfo

LagSwitch.Name = "LagSwitch"
LagSwitch.Parent = Main
LagSwitch.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
LagSwitch.BorderColor3 = Color3.fromRGB(0, 0, 0)
LagSwitch.BorderSizePixel = 0
LagSwitch.LayoutOrder = 1
LagSwitch.Size = UDim2.new(0, 187, 0, 27)

LagSwitchButton.Name = "LagSwitch"
LagSwitchButton.Parent = LagSwitch
LagSwitchButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LagSwitchButton.BackgroundTransparency = 1
LagSwitchButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
LagSwitchButton.BorderSizePixel = 0
LagSwitchButton.Size = UDim2.new(0, 187, 0, 27)
LagSwitchButton.Font = Enum.Font.Gotham
LagSwitchButton.Text = "Lag Switch"
LagSwitchButton.TextColor3 = Color3.fromRGB(185, 185, 185)
LagSwitchButton.TextSize = 14

LagSwitchInfo.Name = "VisualizeInfo"
LagSwitchInfo.Parent = LagSwitch
LagSwitchInfo.BackgroundColor3 = Color3.fromRGB(223, 0, 0)
LagSwitchInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
LagSwitchInfo.BorderSizePixel = 0
LagSwitchInfo.Position = UDim2.new(0.921925247, 0, 0.259259254, 0)
LagSwitchInfo.Size = UDim2.new(0, 12, 0, 12)

UICorner_2.CornerRadius = UDim.new(0, 32)
UICorner_2.Parent = LagSwitchInfo

LagSwitchKey.Name = "LagSwitchKey"
LagSwitchKey.Parent = Main
LagSwitchKey.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
LagSwitchKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
LagSwitchKey.BorderSizePixel = 0
LagSwitchKey.LayoutOrder = 3
LagSwitchKey.Size = UDim2.new(0, 187, 0, 27)
LagSwitchKey.ClearTextOnFocus = false
LagSwitchKey.Font = Enum.Font.Gotham
LagSwitchKey.PlaceholderText = "Lag Switch Key"
LagSwitchKey.Text = ""
LagSwitchKey.TextColor3 = Color3.fromRGB(185, 185, 185)
LagSwitchKey.TextSize = 14
LagSwitchKey.ClearTextOnFocus = true

local FakeCharF = function()
	LocalPlayer.Character.Archivable = true
	FakeChar = LocalPlayer.Character:Clone()
	LocalPlayer.Character.Archivable = false

	local CloneCharHumanoid = FakeChar:FindFirstChildOfClass("Humanoid")

	if CloneCharHumanoid ~= nil then
		CloneCharHumanoid:Destroy()
	end
	
	local CloneCharHumanoidRootPart = FakeChar:FindFirstChild("HumanoidRootPart")
	
	if VisualizationPos ~= nil and CloneCharHumanoidRootPart ~= nil then
		CloneCharHumanoidRootPart.CFrame = VisualizationPos
	end

	for Index, Value in pairs(FakeChar:GetDescendants()) do
		if Value:IsA("BasePart") or Value:IsA("MeshPart") then
			Value.CanCollide = false
			Value.Transparency = 0.5
			Value.Material = Enum.Material.ForceField
		end
	end
	
	FakeChar.Parent = Workspace
	
	if CloneCharHumanoidRootPart ~= nil then
		CloneCharHumanoidRootPart.Anchored = true
	end
end

local LagSwitchF = function()
	LagSwitchEnabled = not LagSwitchEnabled

	local S2PhysicsSenderRate, DataSenderRate = 15, 60

	if LagSwitchEnabled then
		LagSwitchInfo.BackgroundColor3 = Color3.fromRGB(0, 223, 0)
		S2PhysicsSenderRate, DataSenderRate = 0, -1
	else
		LagSwitchInfo.BackgroundColor3 = Color3.fromRGB(223, 0, 0)
	end

	if setfflag ~= nil then
		setfflag('S2PhysicsSenderRate', S2PhysicsSenderRate)
		setfflag('DataSenderRate', DataSenderRate)

		if FakeChar ~= nil then
			FakeChar:Destroy()
		end

		VisualizationPos = nil

		local HumanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

		if HumanoidRootPart ~= nil then
			VisualizationPos = HumanoidRootPart.CFrame
		end

		if LagSwitchEnabled and VisualizationEnabled and LocalPlayer.Character then
			FakeCharF()
		end
	end
end

local IsMessageBlank = function(Message)
	if Message == "" then return true end

	local MessageCount = string.len(Message)
	local Count = 0

	for Index, Value in string.split(Message, "") do		
		if Value == "" or Value == " " then
			Count += 1
		end
	end

	return MessageCount == Count
end

VisualizeButton.MouseButton1Click:Connect(function()
	VisualizationEnabled = not VisualizationEnabled
	VisualizeInfo.BackgroundColor3 = VisualizationEnabled and Color3.fromRGB(0, 223, 0) or Color3.fromRGB(223, 0, 0)
	
	if FakeChar ~= nil then
		FakeChar:Destroy()
	end
	
	if not LagSwitchEnabled then
		VisualizationPos = nil
		return
	end
	
	if not VisualizationEnabled then
		return
	end
	
	FakeCharF()
end)

LagSwitchButton.MouseButton1Click:Connect(LagSwitchF)

CloseButton.MouseButton1Click:Connect(function()
	if FakeChar ~= nil then
		FakeChar:Destroy()
	end
	
	if setfflag ~= nil then
		setfflag("S2PhysicsSenderRate", 15)
		setfflag("DataSenderRate", 60)
	end
	
	GUI:Destroy()
end)

print(getfflag("S2PhysicsSenderRate"), getfflag("DataSenderRate"))

game:GetService("UserInputService").InputBegan:Connect(function(Inp, RBXTF)
	if not RBXTF and not IsMessageBlank(LagSwitchKey.Text) and Inp.KeyCode == Enum.KeyCode[string.upper(LagSwitchKey.Text)] then
		LagSwitchF()
	end
end)

Instance.new("UIDragDetector").Parent = MainFrame
GUI.Parent = game:GetService("CoreGui")
