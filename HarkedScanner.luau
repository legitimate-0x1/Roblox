-- Made by Sovf!

local GUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local Main = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Line = Instance.new("Frame")
local ScanButton = Instance.new("TextButton")
local HarkedStatus = Instance.new("TextLabel")

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
Title.Text = "Harked Scanner"
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

Line.Name = "Line"
Line.Parent = Main
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.LayoutOrder = 1
Line.Size = UDim2.new(0, 0, 0, 5)

ScanButton.Name = "ScanButton"
ScanButton.Parent = Main
ScanButton.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
ScanButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScanButton.BorderSizePixel = 0
ScanButton.LayoutOrder = 1
ScanButton.Position = UDim2.new(0.149305552, 0, 0.389312983, 0)
ScanButton.Size = UDim2.new(0, 272, 0, 32)
ScanButton.Font = Enum.Font.Gotham
ScanButton.Text = "Scan"
ScanButton.TextColor3 = Color3.fromRGB(185, 185, 185)
ScanButton.TextSize = 14

HarkedStatus.Parent = Main
HarkedStatus.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
HarkedStatus.BorderColor3 = Color3.fromRGB(0, 0, 0)
HarkedStatus.BorderSizePixel = 0
HarkedStatus.LayoutOrder = 2
HarkedStatus.Size = UDim2.new(0, 272, 0, 32)
HarkedStatus.Font = Enum.Font.Gotham
HarkedStatus.Text = "Status: Not Scanned"
HarkedStatus.TextColor3 = Color3.fromRGB(185, 185, 185)
HarkedStatus.TextSize = 14

ScanButton.MouseButton1Click:Connect(function()
	local HarkedFound = false
	
	for Index, Value in pairs(game:GetDescendants()) do
		if Value.Name == "DestroySegway" and Value.ClassName == "RemoteEvent" then
			HarkedFound = true
		end
	end
	
	if HarkedFound then
		HarkedStatus.Text = "Status: Found"
		HarkedStatus.TextColor3 = Color3.fromRGB(0, 223, 0)
		
	else
		HarkedStatus.Text = "Status: Not Found"
		HarkedStatus.TextColor3 = Color3.fromRGB(223, 0, 0)
	end
end)

CloseButton.MouseButton1Click:Connect(function()
	GUI:Destroy()
end)

Instance.new("UIDragDetector").Parent = MainFrame
GUI.Parent = game:GetService("CoreGui")
