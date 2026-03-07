-- Made by legitimate0x1! 

local LocalPlayer = game:GetService("Players").LocalPlayer   

local UserInputService = game:GetService("UserInputService") 
local TweenService = game:GetService("TweenService")

local JumpHeightChanger = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local List = Instance.new("ScrollingFrame")
local NumberBox = Instance.new("TextBox")
local UIListLayout = Instance.new("UIListLayout")
local Button = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

JumpHeightChanger.Name = "JumpHeightChanger" 
JumpHeightChanger.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
JumpHeightChanger.ResetOnSpawn = false

Frame.Parent = JumpHeightChanger
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.587169647, 0, 0.362038136, 0)
Frame.Size = UDim2.new(0, 217, 0, 146)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 217, 0, 29)

Title.Name = "Title"
Title.Parent = Frame_2
Title.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0460829511, 0, 0, 0)
Title.Size = UDim2.new(0, 207, 0, 29)
Title.Font = Enum.Font.SourceSans
Title.Text = "JumpHeight Changer"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = Frame_2
Close.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.820276499, 0, 0, 0)
Close.Size = UDim2.new(0, 39, 0, 29)
Close.Font = Enum.Font.SourceSans
Close.Text = "Close "
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 15.000

List.Name = "List"
List.Parent = Frame
List.Active = true
List.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
List.BorderColor3 = Color3.fromRGB(0, 0, 0)
List.BorderSizePixel = 0
List.Position = UDim2.new(0.0552995391, 0, 0.285849154, 0)
List.Size = UDim2.new(0, 193, 0, 62)
List.ScrollBarThickness = 1

NumberBox.Name = "NumberBox"
NumberBox.Parent = List
NumberBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
NumberBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumberBox.BorderSizePixel = 0
NumberBox.Size = UDim2.new(0, 193, 0, 27)
NumberBox.Font = Enum.Font.SourceSans
NumberBox.PlaceholderText = "Number"
NumberBox.Text = ""
NumberBox.TextColor3 = Color3.fromRGB(197, 197, 197)
NumberBox.TextSize = 14.000

UIListLayout.Parent = List
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

Button.Name = "Button"
Button.Parent = List
Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 0, 1, 0)
Button.Size = UDim2.new(0, 193, 0, 30)
Button.Font = Enum.Font.SourceSans
Button.Text = "Change JumpHeight"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 15.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.00138243218, 0, 0.794520557, 0)
TextLabel.Size = UDim2.new(0, 217, 0, 19)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "Made by legitimate0x1!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 12.000
TextLabel.FontFace.Style = Enum.FontStyle.Italic

Button.MouseButton1Click:Connect(function()
	local JumpHeightNumber = tonumber(NumberBox.Text)

	if JumpHeightNumber ~= nil and LocalPlayer.Character then
		local Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

		if Humanoid ~= nil then
			if Humanoid.UseJumpPower then
				Humanoid.JumpPower = JumpHeightNumber
			else
				Humanoid.JumpHeight = JumpHeightNumber
			end 
		end
	end
end)

Close.MouseButton1Click:Connect(function()
	JumpHeightChanger:Destroy()
end)   

local DragToggle = nil
local DragSpeed = 0.25
local DragST = nil
local DragSP = nil

local UpdateInput = function(Input)
	local Delta = Input.Position - DragST
	local Pos = UDim2.new(DragSP.X.Scale, DragSP.X.Offset + Delta.X, DragSP.Y.Scale, DragSP.Y.Offset + Delta.Y)
	TweenService:Create(Frame, TweenInfo.new(DragSpeed), {Position = Pos}):Play()
end

Frame.InputBegan:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
		DragToggle = true
		DragST = Input.Position
		DragSP = Frame.Position
		Input.Changed:Connect(function()
			if Input.UserInputState == Enum.UserInputState.End then
				DragToggle = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
		if DragToggle then
			UpdateInput(Input)
		end
	end
end)

local P_1, P_2 = pcall(function()
	JumpHeightChanger.Parent = game:GetService("CoreGui")
end) 

if not P_1 then JumpHeightChanger.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui") end
