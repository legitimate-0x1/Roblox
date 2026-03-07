-- Made by legitimate0x1! 

local LocalPlayer = game:GetService("Players").LocalPlayer   

local UserInputService = game:GetService("UserInputService") 
local TweenService = game:GetService("TweenService") 
local VirtualInputManager = game:GetService("VirtualInputManager")

local JumpHeightChangerV2 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local List = Instance.new("ScrollingFrame")
local NumberBox = Instance.new("TextBox")
local UIListLayout = Instance.new("UIListLayout")
local CWS = Instance.new("TextButton")
local Mtd = Instance.new("TextButton")
local SpfJH = Instance.new("TextButton")
local SpfOptionBox = Instance.new("TextBox")
local DWS = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")  

JumpHeightChangerV2.Name = "JumpHeightChangerV2" 
JumpHeightChangerV2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
JumpHeightChangerV2.ResetOnSpawn = false

Frame.Parent = JumpHeightChangerV2
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.587000012, 129, 0.38499999, -16)
Frame.Size = UDim2.new(0, 217, 0, 250)

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
Title.Text = "JumpHeight Changer V2"
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
List.Position = UDim2.new(0.0549999997, 0, 0.159999996, 0)
List.Size = UDim2.new(0, 193, 0, 180)
List.ScrollBarThickness = 1

NumberBox.Name = "NumberBox"
NumberBox.Parent = List
NumberBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
NumberBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
NumberBox.BorderSizePixel = 0
NumberBox.LayoutOrder = 1
NumberBox.Size = UDim2.new(0, 193, 0, 27)
NumberBox.Font = Enum.Font.SourceSans
NumberBox.PlaceholderText = "Number"
NumberBox.Text = ""
NumberBox.TextColor3 = Color3.fromRGB(197, 197, 197)
NumberBox.TextSize = 14.000

UIListLayout.Parent = List
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

CWS.Name = "CWS"
CWS.Parent = List
CWS.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CWS.BorderColor3 = Color3.fromRGB(0, 0, 0)
CWS.BorderSizePixel = 0
CWS.LayoutOrder = 3
CWS.Position = UDim2.new(0, 0, 1, 0)
CWS.Size = UDim2.new(0, 193, 0, 30)
CWS.Font = Enum.Font.SourceSans
CWS.Text = "Change JumpHeight"
CWS.TextColor3 = Color3.fromRGB(255, 255, 255)
CWS.TextSize = 15.000

Mtd.Name = "Mtd"
Mtd.Parent = List
Mtd.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Mtd.BorderColor3 = Color3.fromRGB(0, 0, 0)
Mtd.BorderSizePixel = 0
Mtd.LayoutOrder = 2
Mtd.Position = UDim2.new(0, 0, 1, 0)
Mtd.Size = UDim2.new(0, 193, 0, 30)
Mtd.Font = Enum.Font.SourceSans
Mtd.Text = "JumpHeight Mtd | Property"
Mtd.TextColor3 = Color3.fromRGB(255, 255, 255)
Mtd.TextSize = 15.000

SpfJH.Name = "SpfJH"
SpfJH.Parent = List
SpfJH.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SpfJH.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpfJH.BorderSizePixel = 0
SpfJH.LayoutOrder = 5
SpfJH.Position = UDim2.new(0, 0, 1, 0)
SpfJH.Size = UDim2.new(0, 193, 0, 30)
SpfJH.Font = Enum.Font.SourceSans
SpfJH.Text = "Spf JumpHeight"
SpfJH.TextColor3 = Color3.fromRGB(239, 0, 0)
SpfJH.TextSize = 15.000

SpfOptionBox.Name = "SpfOptionBox"
SpfOptionBox.Parent = List
SpfOptionBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SpfOptionBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpfOptionBox.BorderSizePixel = 0
SpfOptionBox.LayoutOrder = 4
SpfOptionBox.Size = UDim2.new(0, 193, 0, 27)
SpfOptionBox.Font = Enum.Font.SourceSans
SpfOptionBox.PlaceholderText = "Number"
SpfOptionBox.Text = "Auto"
SpfOptionBox.TextColor3 = Color3.fromRGB(197, 197, 197)
SpfOptionBox.TextSize = 14.000

DWS.Name = "DWS"
DWS.Parent = List
DWS.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
DWS.BorderColor3 = Color3.fromRGB(0, 0, 0)
DWS.BorderSizePixel = 0
DWS.LayoutOrder = 5
DWS.Position = UDim2.new(0, 0, 1, 0)
DWS.Size = UDim2.new(0, 193, 0, 30)
DWS.Font = Enum.Font.SourceSans
DWS.Text = "Default JumpHeight"
DWS.TextColor3 = Color3.fromRGB(255, 255, 255)
DWS.TextSize = 15.000

Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(-0.00100000005, 0, 0.899999976, 0)
Credits.Size = UDim2.new(0, 217, 0, 19)
Credits.Font = Enum.Font.Code
Credits.Text = "Made by legitimate0x1!"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextSize = 12.000    

local LPCWS = {}
local DJumpHeightNumber = 16

local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

if Humanoid == nil then 
	NumberBox.Text = "Char|Hum not loaded!"

	repeat task.wait() until LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	NumberBox.Text = ""
end 

for Index = 1, 4 do
	LPCWS[Index] = Humanoid and Humanoid.WalkSpeed
	task.wait(0.1)
end

local DWSD = false

for Index, Value in pairs(LPCWS) do
	for Index2, Value2 in pairs(LPCWS) do
		if Value ~= Value2 then
			DWSD = true
			break
		end
	end
end  

local VirtualInputManager = game:GetService("VirtualInputManager")
local DJumpHeightNumber2 = {}  

local CheckKeyboardKey = function(Key)
	VirtualInputManager:SendKeyEvent(true, Enum.KeyCode[Key], false, game)

	if LPCWS[1] ~= Humanoid.JumpHeight then
		DJumpHeightNumber2 = {Enum.KeyCode[Key], Humanoid.JumpHeight} 

	end

	task.wait(0.1)

	if LPCWS[1] ~= Humanoid.JumpHeight then
		DJumpHeightNumber2 = {Enum.KeyCode[Key], Humanoid.JumpHeight}
	end

	VirtualInputManager:SendKeyEvent(false, Enum.KeyCode[Key], false, game)
end 

if not DWSD then
	CheckKeyboardKey("F")
	CheckKeyboardKey("Q")
	CheckKeyboardKey("LeftShift")  
	DJumpHeightNumber = LPCWS[1]
end

local LocalRootCFrameSpeed = 1

local PWSU = false
local SavedPWS = false

CWS.MouseButton1Click:Connect(function()
	local JumpHeightNumber = tonumber(NumberBox.Text)

	if JumpHeightNumber ~= nil and LocalPlayer.Character then
		local Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

		if Humanoid ~= nil then
			if Mtd.Text == "JumpHeight Mtd | Property" then
				Humanoid.JumpHeight = JumpHeightNumber
				SavedPWS = JumpHeightNumber
				PWSU = true
			else
				LocalRootCFrameSpeed = JumpHeightNumber 
			end  
		end
	end
end)

Mtd.MouseButton1Click:Connect(function()
	local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") 

	if Mtd.Text ~= "JumpHeight Mtd | Property" then
		Mtd.Text = "JumpHeight Mtd | Property"

		if Humanoid ~= nil and SavedPWS then
			Humanoid.JumpHeight = SavedPWS
			PWSU = true
		end
	else
		Mtd.Text = "JumpHeight Mtd | CFrame"

		if PWSU and Humanoid ~= nil then
			Humanoid.JumpHeight = DJumpHeightNumber
			PWSU = false
		end
	end
end) 

DWS.MouseButton1Click:Connect(function()
	local Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

	if Humanoid ~= nil then
		Humanoid.JumpHeight = DJumpHeightNumber
	end

	LocalRootCFrameSpeed = 0
	SavedPWS = 0
end)

local ClosingJumpHeightChangerV2 = false

Close.MouseButton1Click:Connect(function()
	ClosingJumpHeightChangerV2 = true
	JumpHeightChangerV2:Destroy() 
end)   

local SomeKeyboardKeys = {Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D} 

local GetLocalRoot = function()
	if LocalPlayer.Character then
		return LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or LocalPlayer.Character:FindFirstChild("UpperTorso") or LocalPlayer.Character:FindFirstChild("Torso") or LocalPlayer.Character:FindFirstChildOfClass("BasePart")
	end

	return nil
end

task.spawn(function()
	while true do
		if Mtd.Text == "JumpHeight Mtd | CFrame" then
			local LocalRoot = GetLocalRoot()
			local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")  

			if (UserInputService:IsKeyDown(SomeKeyboardKeys[1]) or UserInputService:IsKeyDown(SomeKeyboardKeys[2]) or UserInputService:IsKeyDown(SomeKeyboardKeys[3]) or UserInputService:IsKeyDown(SomeKeyboardKeys[4])) and Humanoid ~= nil and LocalRoot ~= nil and LocalRootCFrameSpeed ~= nil then
				LocalRoot.CFrame = LocalRoot.CFrame + Humanoid.MoveDirection * LocalRootCFrameSpeed
			end
		end

		if ClosingJumpHeightChangerV2 then
			break
		end

		task.wait()
	end
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

local SpfJHE = false

SpfJH.MouseButton1Click:Connect(function()
	SpfJHE = not SpfJHE
end) 

if hookmetamethod then        
	local HNCB = nil
	HNCB = hookmetamethod(game, "__index", function(Self, ...)  
		local Args = {...}
		local Prop = Args[1]		 

		if typeof(Self) == "Instance" and Self.ClassName == "Humanoid" and LocalPlayer.Character and SpfJHE and not checkcaller() then  
			local Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

			if Humanoid ~= nil and Self == Humanoid then
				if SpfOptionBox.Text ~= "Auto" then
					return tonumber(SpfOptionBox.Text) or 16
				else
					if UserInputService:IsKeyDown(DJumpHeightNumber2[1]) then
						return DJumpHeightNumber2[2]
					else
						return DJumpHeightNumber
					end 
				end
			end
		end

		return HNCB(Self, table.unpack(Args))
	end)
end

local P_1, P_2 = pcall(function()
	JumpHeightChangerV2.Parent = game:GetService("CoreGui")
end) 

if not P_1 then JumpHeightChangerV2.Parent = LocalPlayer:FindFirstChildOfClass("PlayerGui") end
