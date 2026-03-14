-- Made by Sovf!

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local RenderStepped = RunService.RenderStepped
local RenderSteppedF1 = RenderStepped.Wait

local ToolsScrollingFrames = {}
local PlayersTools = {}

local GUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Line = Instance.new("Frame")
local PlayerInfo = Instance.new("ImageLabel")
local Main = Instance.new("Frame")
local PlayersList_UIListLayout = Instance.new("UIListLayout")
local PlayersList = Instance.new("ScrollingFrame")
local PlayersTitle = Instance.new("TextLabel")
local ToolsTitle = Instance.new("TextLabel")

GUI.Name = "GUI"
GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = GUI
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.319335073, 0, 0.270833343, 0)
MainFrame.Size = UDim2.new(0, 350, 0, 350)

TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(15, 80, 100)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 350, 0, 30)

Close.Name = "Close"
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.942857146, 0, 0, 0)
Close.Size = UDim2.new(0, 20, 0, 30)
Close.Font = Enum.Font.Gotham
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(185, 185, 185)
Close.TextSize = 16

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(15, 80, 100)
Title.BackgroundTransparency = 1
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 350, 0, 30)
Title.Font = Enum.Font.Gotham
Title.Text = "Tools Viewer"
Title.TextColor3 = Color3.fromRGB(185, 185, 185)
Title.TextSize = 16

Line.Name = "Line"
Line.Parent = TopBar
Line.BackgroundColor3 = Color3.fromRGB(15, 40, 40)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0, 0, 0.985714197, 0)
Line.Size = UDim2.new(0, 350, 0, 2)

PlayerInfo.Name = "PlayerInfo"
PlayerInfo.Parent = TopBar
PlayerInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerInfo.BackgroundTransparency = 1
PlayerInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerInfo.BorderSizePixel = 0
PlayerInfo.Size = UDim2.new(0, 30, 0, 30)
PlayerInfo.Image = "rbxassetid://11413003234"

Main.Name = "Main"
Main.Parent = MainFrame
Main.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0257142857, 0, 0.108571425, 0)
Main.Size = UDim2.new(0, 332, 0, 302)

PlayersList.Name = "Players"
PlayersList.Parent = Main
PlayersList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayersList.BackgroundTransparency = 1
PlayersList.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayersList.BorderSizePixel = 0
PlayersList.Position = UDim2.new(0, 0, 0.125827819, 0)
PlayersList.Size = UDim2.new(0, 100, 0, 264)
PlayersList.CanvasSize = UDim2.new(0, 0, 999, 0)
PlayersList.ScrollBarThickness = 0

PlayersList_UIListLayout.Parent = PlayersList
PlayersList_UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

PlayersTitle.Name = "PlayersTitle"
PlayersTitle.Parent = Main
PlayersTitle.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
PlayersTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayersTitle.BorderSizePixel = 0
PlayersTitle.Size = UDim2.new(0, 100, 0, 32)
PlayersTitle.Font = Enum.Font.Gotham
PlayersTitle.Text = "Players"
PlayersTitle.TextColor3 = Color3.fromRGB(185, 185, 185)
PlayersTitle.TextSize = 15

ToolsTitle.Name = "ToolsTitle"
ToolsTitle.Parent = Main
ToolsTitle.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
ToolsTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToolsTitle.BorderSizePixel = 0
ToolsTitle.Position = UDim2.new(0.319277108, 0, 0, 0)
ToolsTitle.Size = UDim2.new(0, 226, 0, 32)
ToolsTitle.Font = Enum.Font.Gotham
ToolsTitle.Text = "Tools"
ToolsTitle.TextColor3 = Color3.fromRGB(185, 185, 185)
ToolsTitle.TextSize = 15

local AddTool = function(Player, Value)	
	if Value.ClassName == "Tool" or Value.ClassName == "HopperBin" then
		local Tool = Instance.new("TextLabel")

		Tool.Name = "Tool"
		Tool.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
		Tool.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Tool.BorderSizePixel = 0
		Tool.LayoutOrder = 1
		Tool.Position = UDim2.new(0.0258620698, 0, 0, 0)
		Tool.Size = UDim2.new(0, 226, 0, 30)
		Tool.Font = Enum.Font.Gotham
		Tool.Text = Value.Name
		Tool.TextColor3 = Color3.fromRGB(185, 185, 185)
		Tool.TextSize = 14

		Tool.Parent = ToolsScrollingFrames[Player]
		
		local AncestryChanged_Connection = nil
		
		AncestryChanged_Connection = Value.AncestryChanged:Connect(function(Child, NParent)
			RenderSteppedF1(RenderStepped)
			Tool:Destroy()
			AncestryChanged_Connection:Disconnect()
		end)
	end
end

local PlayerF = function(Player)
	PlayersTools[Player] = {}
	
	local PlayerSelection = Instance.new("TextButton")
	local ToolsList_UIListLayout = Instance.new("UIListLayout")
	local ToolsList = Instance.new("ScrollingFrame")
	
	ToolsList_UIListLayout.Parent = ToolsList
	ToolsList_UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ToolsList_UIListLayout.Padding = UDim.new(0, 3)
	
	ToolsList.Name = "Tools"
	ToolsList.Parent = Main
	ToolsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToolsList.BackgroundTransparency = 1
	ToolsList.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ToolsList.BorderSizePixel = 0
	ToolsList.Position = UDim2.new(0.319277108, 0, 0.125827819, 0)
	ToolsList.Size = UDim2.new(0, 226, 0, 264)
	ToolsList.CanvasSize = UDim2.new(0, 0, 999, 0)
	ToolsList.ScrollBarThickness = 0
	ToolsList.Visible = false
	
	ToolsScrollingFrames[Player] = ToolsList
	
	PlayerSelection.Name = "PlayerSelection"
	PlayerSelection.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	PlayerSelection.BorderColor3 = Color3.fromRGB(0, 0, 0)
	PlayerSelection.BorderSizePixel = 0
	PlayerSelection.LayoutOrder = 1
	PlayerSelection.Size = UDim2.new(0, 100, 0, 30)
	PlayerSelection.Font = Enum.Font.Gotham
	PlayerSelection.Text = Player.Name
	PlayerSelection.TextColor3 = Color3.fromRGB(185, 185, 185)
	PlayerSelection.TextSize = 14
	
	PlayerSelection.MouseButton1Click:Connect(function()
		for Index, Value in pairs(ToolsScrollingFrames) do
			Value.Visible = false
		end
		
		ToolsList.Visible = true
	end)
	
	local Backpack = Player:FindFirstChildOfClass("Backpack")
	
	if Backpack ~= nil then
		Backpack.DescendantAdded:Connect(function(Descendant)
			RenderSteppedF1(RenderStepped)
			AddTool(Player, Descendant)
		end)
		
		for Index, Value in pairs(Backpack:GetDescendants()) do
			AddTool(Player, Value)
		end
	end
	
	Player.CharacterAdded:Connect(function(Character)
		for Index, Value in pairs(ToolsScrollingFrames[Player]:GetChildren()) do
			Value:Destroy()
		end
		
		Character.DescendantAdded:Connect(function(Descendant)
			RenderSteppedF1(RenderStepped)
			AddTool(Player, Descendant)
		end)

		for Index, Value in pairs(Character:GetDescendants()) do
			AddTool(Player, Value)
		end
	end)
	
	if Player.Character then
		Player.Character.DescendantAdded:Connect(function(Descendant)
			RenderSteppedF1(RenderStepped)
			AddTool(Player, Descendant)
		end)
		
		for Index, Value in pairs(Player.Character:GetDescendants()) do
			AddTool(Player, Value)
		end
	end
	
	PlayerSelection.Parent = PlayersList
end

Close.MouseButton1Click:Connect(function()
	GUI:Destroy()
end)

Players.PlayerAdded:Connect(PlayerF)

Players.PlayerRemoving:Connect(function(Player)
	ToolsScrollingFrames[Player]:Destroy()
	ToolsScrollingFrames[Player] = nil
end)

for Index, Value in pairs(Players:GetPlayers()) do
	PlayerF(Value)
end

Instance.new("UIDragDetector").Parent = MainFrame
GUI.Parent = game:GetService("CoreGui")
