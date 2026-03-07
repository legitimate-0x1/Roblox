-- UI - Dishan#1745 | Scripting - ArasOfficial#8439

-- Instances:

local ChatHax = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local PlayerName = Instance.new("TextBox")
local FakeMessage = Instance.new("TextBox")
local Send = Instance.new("TextButton")
local FakeShutdownMessage = Instance.new("TextButton")
local FakeRobloxMessage = Instance.new("TextButton")
local FakeUpdateMessage = Instance.new("TextButton")
local RMToggle = Instance.new("TextButton")
local RandomMessages = Instance.new("TextLabel")
local YourMessage = Instance.new("TextBox")
local Send2 = Instance.new("TextButton")
local TopBar = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Version = Instance.new("TextLabel")
local Line1 = Instance.new("TextLabel")
local RandomMessages_2 = Instance.new("TextLabel")
local Background = Instance.new("ImageLabel")
local Scripts = Instance.new("Folder")

--Properties:

ChatHax.Name = "ChatHax"
ChatHax.Parent = game.CoreGui
ChatHax.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ChatHax
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.Position = UDim2.new(0.5, -129, 0.5, -150)
Main.Selectable = true
Main.Size = UDim2.new(0, 258, 0, 302)
Main.Image = "rbxassetid://3570695787"
Main.ImageColor3 = Color3.fromRGB(45, 45, 45)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120
Instance.new("BoolValue",game.CoreGui.ChatHax.Main).Name = "RM"

PlayerName.Name = "PlayerName"
PlayerName.Parent = Main
PlayerName.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PlayerName.BorderColor3 = Color3.fromRGB(74, 74, 74)
PlayerName.Position = UDim2.new(0.0426356606, 0, 0.110480227, 0)
PlayerName.Size = UDim2.new(0, 234, 0, 23)
PlayerName.Font = Enum.Font.SourceSans
PlayerName.PlaceholderText = "Enter Player Name..."
PlayerName.Text = ""
PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.TextSize = 15.000

FakeMessage.Name = "FakeMessage"
FakeMessage.Parent = Main
FakeMessage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
FakeMessage.BorderColor3 = Color3.fromRGB(74, 74, 74)
FakeMessage.Position = UDim2.new(0.0431673527, 0, 0.210033223, 0)
FakeMessage.Size = UDim2.new(0, 234, 0, 23)
FakeMessage.Font = Enum.Font.SourceSans
FakeMessage.PlaceholderText = "Enter Fake Message..."
FakeMessage.Text = ""
FakeMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
FakeMessage.TextSize = 15.000

Send.Name = "Send"
Send.Parent = Main
Send.BackgroundColor3 = Color3.fromRGB(162, 46, 48)
Send.BorderColor3 = Color3.fromRGB(34, 34, 34)
Send.Position = UDim2.new(0.0431673527, 0, 0.410033166, 0)
Send.Size = UDim2.new(0, 234, 0, 22)
Send.Font = Enum.Font.SourceSans
Send.Text = "Send Message"
Send.TextColor3 = Color3.fromRGB(255, 255, 255)
Send.TextSize = 18.000

FakeShutdownMessage.Name = "FakeShutdownMessage"
FakeShutdownMessage.Parent = Main
FakeShutdownMessage.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
FakeShutdownMessage.BorderColor3 = Color3.fromRGB(0, 0, 0)
FakeShutdownMessage.ClipsDescendants = true
FakeShutdownMessage.Position = UDim2.new(0.0431673527, 0, 0.51003319, 0)
FakeShutdownMessage.Size = UDim2.new(0, 234, 0, 27)
FakeShutdownMessage.Font = Enum.Font.SourceSansBold
FakeShutdownMessage.Text = "Fake Shutdown Message"
FakeShutdownMessage.TextColor3 = Color3.fromRGB(225, 127, 15)
FakeShutdownMessage.TextSize = 20.000
FakeShutdownMessage.TextWrapped = true

FakeRobloxMessage.Name = "FakeRobloxMessage"
FakeRobloxMessage.Parent = Main
FakeRobloxMessage.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
FakeRobloxMessage.BorderColor3 = Color3.fromRGB(0, 0, 0)
FakeRobloxMessage.ClipsDescendants = true
FakeRobloxMessage.Position = UDim2.new(0.0430000015, 0, 0.600000024, 0)
FakeRobloxMessage.Size = UDim2.new(0, 234, 0, 27)
FakeRobloxMessage.Font = Enum.Font.SourceSansBold
FakeRobloxMessage.Text = "Fake Roblox Message"
FakeRobloxMessage.TextColor3 = Color3.fromRGB(225, 127, 15)
FakeRobloxMessage.TextSize = 20.000
FakeRobloxMessage.TextWrapped = true

FakeUpdateMessage.Name = "FakeUpdateMessage"
FakeUpdateMessage.Parent = Main
FakeUpdateMessage.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
FakeUpdateMessage.BorderColor3 = Color3.fromRGB(0, 0, 0)
FakeUpdateMessage.ClipsDescendants = true
FakeUpdateMessage.Position = UDim2.new(0.0430000015, 0, 0.689999998, 0)
FakeUpdateMessage.Size = UDim2.new(0, 234, 0, 27)
FakeUpdateMessage.Font = Enum.Font.SourceSansBold
FakeUpdateMessage.Text = "Fake Update Message"
FakeUpdateMessage.TextColor3 = Color3.fromRGB(225, 127, 15)
FakeUpdateMessage.TextSize = 20.000
FakeUpdateMessage.TextWrapped = true

RMToggle.Name = "RMToggle"
RMToggle.Parent = Main
RMToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
RMToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
RMToggle.Position = UDim2.new(0.456999987, 0, 0.800000012, 0)
RMToggle.Size = UDim2.new(0, 20, 0, 19)
RMToggle.Font = Enum.Font.SourceSans
RMToggle.Text = "✔"
RMToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
RMToggle.TextSize = 1.000
RMToggle.TextTransparency = 1.000

RandomMessages.Name = "RandomMessages"
RandomMessages.Parent = Main
RandomMessages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RandomMessages.BackgroundTransparency = 1.000
RandomMessages.Position = UDim2.new(0.0430000015, 0, 0.800000012, 0)
RandomMessages.Size = UDim2.new(0, 97, 0, 15)
RandomMessages.Font = Enum.Font.SourceSans
RandomMessages.Text = "Random Messages"
RandomMessages.TextColor3 = Color3.fromRGB(255, 255, 255)
RandomMessages.TextSize = 15.000

YourMessage.Name = "YourMessage"
YourMessage.Parent = Main
YourMessage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
YourMessage.BorderColor3 = Color3.fromRGB(74, 74, 74)
YourMessage.Position = UDim2.new(0.0431673527, 0, 0.310033232, 0)
YourMessage.Size = UDim2.new(0, 234, 0, 23)
YourMessage.Font = Enum.Font.SourceSans
YourMessage.PlaceholderText = "Enter Random Message..."
YourMessage.Text = ""
YourMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
YourMessage.TextSize = 15.000

Send2.Name = "Send2"
Send2.Parent = Main
Send2.BackgroundColor3 = Color3.fromRGB(162, 46, 48)
Send2.BorderColor3 = Color3.fromRGB(34, 34, 34)
Send2.Position = UDim2.new(0.0431673527, 0, 0.410033166, 0)
Send2.Size = UDim2.new(0, 234, 0, 22)
Send2.Font = Enum.Font.SourceSans
Send2.Text = "Send Message"
Send2.TextColor3 = Color3.fromRGB(255, 255, 255)
Send2.TextSize = 18.000

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopBar.BackgroundTransparency = 1.000
TopBar.Size = UDim2.new(0, 257, 0, 22)
TopBar.Image = "rbxassetid://3570695787"
TopBar.ImageColor3 = Color3.fromRGB(38, 38, 38)
TopBar.ScaleType = Enum.ScaleType.Slice
TopBar.SliceCenter = Rect.new(100, 100, 100, 100)
TopBar.SliceScale = 0.120

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0428015552, 0, 0, 0)
Title.Size = UDim2.new(0, 128, 0, 22)
Title.Font = Enum.Font.Highway
Title.Text = "FE Chat Hax"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = TopBar
Close.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.922178864, 0, 0, 0)
Close.Size = UDim2.new(0, 20, 0, 22)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 18.000

Minimize.Name = "Minimize"
Minimize.Parent = TopBar
Minimize.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Minimize.BackgroundTransparency = 1.000
Minimize.Position = UDim2.new(0.844357848, 0, 0, 0)
Minimize.Size = UDim2.new(0, 20, 0, 22)
Minimize.Font = Enum.Font.SourceSans
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextSize = 30.000

Version.Name = "Version"
Version.Parent = TopBar
Version.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Version.BackgroundTransparency = 1.000
Version.Position = UDim2.new(0.378369749, 0, 0, 0)
Version.Size = UDim2.new(0, 40, 0, 22)
Version.ZIndex = 2
Version.Font = Enum.Font.SourceSans
Version.Text = "v3.5"
Version.TextColor3 = Color3.fromRGB(255, 170, 0)
Version.TextSize = 14.000
Version.TextXAlignment = Enum.TextXAlignment.Left

Line1.Name = "Line1"
Line1.Parent = TopBar
Line1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line1.BorderColor3 = Color3.fromRGB(255, 255, 255)
Line1.Position = UDim2.new(0, 0, 1, 0)
Line1.Size = UDim2.new(0, 257, 0, 0)
Line1.Font = Enum.Font.SourceSans
Line1.Text = ""
Line1.TextColor3 = Color3.fromRGB(0, 0, 0)
Line1.TextSize = 14.000

RandomMessages_2.Name = "Credits"
RandomMessages_2.Parent = Main
RandomMessages_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RandomMessages_2.BackgroundTransparency = 1.000
RandomMessages_2.Position = UDim2.new(0.0429999791, 0, 0.926245809, 0)
RandomMessages_2.Size = UDim2.new(0, 234, 0, 15)
RandomMessages_2.Font = Enum.Font.SourceSans
RandomMessages_2.Text = "UI - Dishan#1745 | Scripting - ArasOfficial#8439"
RandomMessages_2.TextColor3 = Color3.fromRGB(201, 204, 26)
RandomMessages_2.TextSize = 14.000

Background.Name = "Background"
Background.Parent = Main
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.Position = UDim2.new(0.5, -131, 0.5, -153)
Background.Selectable = true
Background.Size = UDim2.new(0, 262, 0, 306)
Background.ZIndex = 0
Background.Image = "rbxassetid://3570695787"
Background.ScaleType = Enum.ScaleType.Slice
Background.SliceCenter = Rect.new(100, 100, 100, 100)
Background.SliceScale = 0.120

Scripts.Name = "Scripts"
Scripts.Parent = ChatHax

-- Scripts:

local function YLDKJ_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Parent.ChatHax:Destroy()
	end)
end
coroutine.wrap(YLDKJ_fake_script)()
local function VPIE_fake_script() -- Minimize.LocalScript 
	local script = Instance.new('LocalScript', Minimize)

	local Frame = game.CoreGui.ChatHax.Main
	local Minimize = false

	script.Parent.MouseButton1Click:Connect(function()	
		if Minimize == false then
			script.Parent.Parent.Parent.YourMessage.Visible = false
			script.Parent.Parent.Parent.FakeMessage.Visible = false
			script.Parent.Parent.Parent.FakeRobloxMessage.Visible = false
			script.Parent.Parent.Parent.FakeShutdownMessage.Visible = false
			script.Parent.Parent.Parent.FakeUpdateMessage.Visible = false
			script.Parent.Parent.Parent.PlayerName.Visible = false
			script.Parent.Parent.Parent.RMToggle.Visible = false
			script.Parent.Parent.Parent.Send.Visible = false
			script.Parent.Parent.Parent.Send2.Visible = false
			script.Parent.Parent.Parent.Cost.Visible = false
			script.Parent.Parent.Parent.Credits.Visible = false
			script.Parent.Parent.Parent.RandomMessages.Visible = false
			script.Parent.Parent.Parent.Background.Visible = false
			Frame:TweenSize(UDim2.new(0, 257, 0, 22), "Out", "Quint", 1, true)
			Minimize = true
		else
			Frame:TweenSize(UDim2.new(0, 258, 0, 220), "Out", "Quint", 1, true)

			script.Parent.Parent.Parent.YourMessage.Visible = true
			script.Parent.Parent.Parent.FakeMessage.Visible = true
			script.Parent.Parent.Parent.FakeRobloxMessage.Visible = true
			script.Parent.Parent.Parent.FakeShutdownMessage.Visible = true
			script.Parent.Parent.Parent.FakeUpdateMessage.Visible = true
			script.Parent.Parent.Parent.PlayerName.Visible = true
			script.Parent.Parent.Parent.RMToggle.Visible = true
			script.Parent.Parent.Parent.Send.Visible = true
			script.Parent.Parent.Parent.Send2.Visible = true
			script.Parent.Parent.Parent.Cost.Visible = true
			script.Parent.Parent.Parent.Credits.Visible = true
			script.Parent.Parent.Parent.RandomMessages.Visible = true
			script.Parent.Parent.Parent.Background.Visible = true

			if game.CoreGui.ChatHax.Main.RM.Value == false then
				script.Parent.Parent.Parent.YourMessage.Visible = true
				script.Parent.Parent.Parent.Send.Visible = true
			else
				script.Parent.Parent.Parent.Send2.Visible = true
			end

			Minimize = false
		end
	end)
end
coroutine.wrap(VPIE_fake_script)()
local function UCKLWM_fake_script() -- Send.LocalScript 
	local script = Instance.new('LocalScript', Send)

	RandomMessages = {
		"Welcome!",
		"Hi!",
		"Kill Him!",
		"Finish Him!",
		"Stop killing me.",
		"AAAAA!",
		"Follow me!",
		"My friend is coming.",
		"She is coming!",
		"Wow, My favorite type of ice cream.",
		"May I join you guys?",
		"I'm level 126 on Clockwork's Level Calculator",
		"This game is honestly so bad, don't know why people play it.",
		"Anyone else play Roblox here?",
		"Please stop trolling!",
		"You aren't cool! stop trying to kill me.",
		"Why are you so mean?",
		"Stop!!!!!!!",
		"_____________________",
		"Please leave me alone?",
		"Sources say David Baszucki is looking at a 20 year sentence for fiddling with kids.",
		"Why do people even hate on Fortnite?",
		"Welcome to Roblox!",
		"Everyone hates me. :(",
		"I am going to the cave.",
		"Why is no one talking to me?",
		"Come here for alive.",
		"Take it!",
		"RUN!",
		"He is in the smoke, be careful!",
		"He is back.",
		"Thanks for help!",
		"Hi Youtube today we are playing this game.",
		"Why are you taking so long?",
		"Can you be quiet? Stop talking.",
		"This game is nice.",
		"OMG!",
		"...",
		"Nice car.",
		"STOP!",
		"Guys, take the guns!",
		"BRUH!"
	}

	script.Parent.MouseButton1Click:Connect(function()
		if game.CoreGui.ChatHax.Main.RM.Value == false then
			player =  script.Parent.Parent.PlayerName.Text
			fakemsg = script.Parent.Parent.FakeMessage.Text
			message = ""..script.Parent.Parent.YourMessage.Text.."                                                                                                                                                             ["..tostring(player).."]: "..tostring(fakemsg)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
		else
			local Value = math.random(1,#RandomMessages)
			local PickedValue = RandomMessages[Value]

			player =  script.Parent.Parent.PlayerName.Text
			fakemsg = script.Parent.Parent.FakeMessage.Text
			message = ""..PickedValue.."                                                                                                                                                             ["..tostring(player).."]: "..tostring(fakemsg)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
		end
	end)
end
coroutine.wrap(UCKLWM_fake_script)()
local function QKZJKBX_fake_script() -- FakeShutdownMessage.LocalScript 
	local script = Instance.new('LocalScript', FakeShutdownMessage)

	script.Parent.MouseButton1Click:Connect(function()
		player =  "Server"
		fakemsg = "Server will shutdown in 1 min!"
		message = "k                                                                                                                                                             ["..tostring(player).."]: "..tostring(fakemsg)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
	end)
end
coroutine.wrap(QKZJKBX_fake_script)()
local function EWIQU_fake_script() -- FakeRobloxMessage.LocalScript 
	local script = Instance.new('LocalScript', FakeRobloxMessage)

	script.Parent.MouseButton1Click:Connect(function()
		player =  "ROBLOX"
		fakemsg = "Hi!"
		message = "k                                                                                                                                                             ["..tostring(player).."]: "..tostring(fakemsg)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
	end)
end
coroutine.wrap(EWIQU_fake_script)()
local function OCKCPG_fake_script() -- FakeUpdateMessage.LocalScript 
	local script = Instance.new('LocalScript', FakeUpdateMessage)

	script.Parent.MouseButton1Click:Connect(function()
		player =  "Server"
		fakemsg = "Updating Game..."
		message = "k                                                                                                                                                             ["..tostring(player).."]: "..tostring(fakemsg)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
	end)
end
coroutine.wrap(OCKCPG_fake_script)()
local function MPLUCA_fake_script() -- RMToggle.LocalScript 
	local script = Instance.new('LocalScript', RMToggle)

	local Toggle = script.Parent.Parent.RMToggle

	script.Parent.MouseButton1Click:Connect(function()
		if Toggle.Text == "" then
			Toggle.Text = "✔"
			Toggle.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			script.Parent.Parent.YourMessage.Visible = false
			script.Parent.Parent.Send.Visible = false
			script.Parent.Parent.Send2.Visible = true
			game.CoreGui.ChatHax.Main.RM.Value = true
		elseif Toggle.Text == "✔" then
			Toggle.Text = ""
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			script.Parent.Parent.Send2.Visible = false
			script.Parent.Parent.Send.Visible = true
			script.Parent.Parent.YourMessage.Visible = true
			game.CoreGui.ChatHax.Main.RM.Value = false
		end
	end)
end
coroutine.wrap(MPLUCA_fake_script)()
local function ZVVFBGB_fake_script() -- Send2.LocalScript 
	local script = Instance.new('LocalScript', Send2)

	RandomMessages = {
		"Welcome!",
		"Hi!",
		"Kill Him!",
		"Finish Him!",
		"Stop killing me.",
		"AAAAA!",
		"Follow me!",
		"My friend is coming.",
		"She is coming!",
		"Wow, My favorite type of ice cream.",
		"May I join you guys?",
		"I'm level 126 on Clockwork's Level Calculator",
		"This game is honestly so bad, don't know why people play it.",
		"Anyone else play Roblox here?",
		"Please stop trolling!",
		"You aren't cool! stop trying to kill me.",
		"Why are you so mean?",
		"Stop!!!!!!!",
		"_____________________",
		"Please leave me alone?",
		"Sources say David Baszucki is looking at a 20 year sentence for fiddling with kids.",
		"Why do people even hate on Fortnite?",
		"Welcome to Roblox!",
		"Everyone hates me. :(",
		"I am going to the cave.",
		"Why is no one talking to me?",
		"Come here for alive.",
		"Take it!",
		"RUN!",
		"He is in the smoke, be careful!",
		"He is back.",
		"Thanks for help!",
		"Hi Youtube today we are playing this game.",
		"Why are you taking so long?",
		"Can you be quiet? Stop talking.",
		"This game is nice.",
		"OMG!",
		"...",
		"Nice car.",
		"STOP!",
		"Guys, take the guns!",
		"BRUH!"
	}

	script.Parent.MouseButton1Click:Connect(function()
		if game.CoreGui.ChatHax.Main.RM.Value == false then
			player =  script.Parent.Parent.PlayerName.Text
			fakemsg = script.Parent.Parent.FakeMessage.Text
			message = ""..script.Parent.Parent.YourMessage.Text.."                                                                                                                                                             ["..tostring(player).."]: "..tostring(fakemsg)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
		else
			local Value = math.random(1,#RandomMessages)
			local PickedValue = RandomMessages[Value]

			player =  script.Parent.Parent.PlayerName.Text
			fakemsg = script.Parent.Parent.FakeMessage.Text
			message = ""..PickedValue.."                                                                                                                                                             ["..tostring(player).."]: "..tostring(fakemsg)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
		end
	end)
end
coroutine.wrap(ZVVFBGB_fake_script)()
local function ADWJRK_fake_script() -- Scripts.LocalScript 
	local script = Instance.new('LocalScript', Scripts)

	local lplayer = game:GetService('Players').LocalPlayer
	local UIS = game:GetService("UserInputService")
	wait(1)


	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 1
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.05), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				if UIS:GetFocusedTextBox() == nil then
					dragToggle = true
					dragStart = input.Position
					startPos = Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(script.Parent.Parent.Main)
end
coroutine.wrap(ADWJRK_fake_script)()
