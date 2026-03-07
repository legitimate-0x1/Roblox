-- Made by ArasOfficial#8439

-- Instances:

local ChatHax = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Line1 = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local PlayerName = Instance.new("TextBox")
local FakeMessage = Instance.new("TextBox")
local Send = Instance.new("TextButton")
local Line2 = Instance.new("TextLabel")
local Version = Instance.new("TextLabel")
local Credits2 = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local Cost = Instance.new("TextLabel")
local WorkStatus = Instance.new("TextLabel")
local FakeShutdownMessage = Instance.new("TextButton")
local FakeRobloxMessage = Instance.new("TextButton")
local Line3 = Instance.new("TextLabel")
local FakeUpdateMessage = Instance.new("TextButton")
local RMToggle = Instance.new("TextButton")
local RandomMessages = Instance.new("TextLabel")
local YourMessage = Instance.new("TextBox")
local Send2 = Instance.new("TextButton")
local Scripts = Instance.new("Folder")

--Properties:

ChatHax.Name = "ChatHax"
ChatHax.Parent = game.CoreGui
ChatHax.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ChatHax.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ChatHax
Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Main.BorderSizePixel = 0
Main.Draggable = true
Main.Position = UDim2.new(0.591207743, -26, 0.303605288, 19)
Main.Selectable = true
Main.Size = UDim2.new(0, 258, 0, 220)
Instance.new("BoolValue",game.CoreGui.ChatHax.Main).Name = "RM"

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(0, 257, 0, 22)

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.023346303, 0, 0, 0)
Title.Size = UDim2.new(0, 251, 0, 22)
Title.Font = Enum.Font.SourceSans
Title.Text = "FE Chat Hax"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20.000
Title.TextXAlignment = Enum.TextXAlignment.Left

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

PlayerName.Name = "PlayerName"
PlayerName.Parent = Main
PlayerName.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PlayerName.BorderColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.Position = UDim2.new(0.0426356606, 0, 0.163636357, 0)
PlayerName.Size = UDim2.new(0, 161, 0, 18)
PlayerName.Font = Enum.Font.SourceSans
PlayerName.PlaceholderText = "Player Name"
PlayerName.Text = ""
PlayerName.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerName.TextSize = 15.000

FakeMessage.Name = "FakeMessage"
FakeMessage.Parent = Main
FakeMessage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
FakeMessage.BorderColor3 = Color3.fromRGB(255, 255, 255)
FakeMessage.Position = UDim2.new(0.0426356606, 0, 0.313636363, 0)
FakeMessage.Size = UDim2.new(0, 161, 0, 18)
FakeMessage.Font = Enum.Font.SourceSans
FakeMessage.PlaceholderText = "Fake Message"
FakeMessage.Text = ""
FakeMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
FakeMessage.TextSize = 15.000

Send.Name = "Send"
Send.Parent = Main
Send.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Send.BorderColor3 = Color3.fromRGB(255, 255, 255)
Send.Position = UDim2.new(0.0426356606, 0, 0.604545474, 0)
Send.Size = UDim2.new(0, 161, 0, 19)
Send.Font = Enum.Font.SourceSans
Send.Text = "Send Message"
Send.TextColor3 = Color3.fromRGB(255, 255, 255)
Send.TextSize = 18.000

Line2.Name = "Line2"
Line2.Parent = Main
Line2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Line2.Position = UDim2.new(0.709302306, 0, 0.100000001, 0)
Line2.Size = UDim2.new(0, 0, 0, 198)
Line2.Font = Enum.Font.SourceSans
Line2.Text = ""
Line2.TextColor3 = Color3.fromRGB(0, 0, 0)
Line2.TextSize = 14.000

Version.Name = "Version"
Version.Parent = Main
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.Position = UDim2.new(0.717054248, 0, 0.795454562, 0)
Version.Size = UDim2.new(0, 74, 0, 15)
Version.Font = Enum.Font.SourceSans
Version.Text = "Version - 3.0"
Version.TextColor3 = Color3.fromRGB(255, 170, 0)
Version.TextSize = 14.000

Credits2.Name = "Credits2"
Credits2.Parent = Main
Credits2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits2.BackgroundTransparency = 1.000
Credits2.Position = UDim2.new(3.7252903e-09, 0, 0.931818187, 0)
Credits2.Size = UDim2.new(0, 139, 0, 15)
Credits2.Font = Enum.Font.SourceSansItalic
Credits2.Text = "Made by ArasOfficial#8439"
Credits2.TextColor3 = Color3.fromRGB(255, 255, 127)
Credits2.TextSize = 14.000

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(3.7252903e-09, 0, 0.931818187, 0)
Credits.Size = UDim2.new(0, 139, 0, 15)
Credits.Font = Enum.Font.SourceSansItalic
Credits.Text = "Made by ArasOfficial#8439"
Credits.TextColor3 = Color3.fromRGB(255, 255, 127)
Credits.TextSize = 14.000

Cost.Name = "Cost"
Cost.Parent = Main
Cost.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cost.BackgroundTransparency = 1.000
Cost.Position = UDim2.new(0.713178277, 0, 0.863636374, 0)
Cost.Size = UDim2.new(0, 74, 0, 15)
Cost.Font = Enum.Font.SourceSans
Cost.Text = "Free Chat Hax"
Cost.TextColor3 = Color3.fromRGB(255, 170, 0)
Cost.TextSize = 14.000

WorkStatus.Name = "WorkStatus"
WorkStatus.Parent = Main
WorkStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WorkStatus.BackgroundTransparency = 1.000
WorkStatus.Position = UDim2.new(0.717054248, 0, 0.931818247, 0)
WorkStatus.Size = UDim2.new(0, 73, 0, 15)
WorkStatus.Font = Enum.Font.SourceSans
WorkStatus.Text = "Status: Working"
WorkStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
WorkStatus.TextSize = 13.000

FakeShutdownMessage.Name = "FakeShutdownMessage"
FakeShutdownMessage.Parent = Main
FakeShutdownMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FakeShutdownMessage.BackgroundTransparency = 1.000
FakeShutdownMessage.ClipsDescendants = true
FakeShutdownMessage.Position = UDim2.new(0.717054248, 0, 0.122727275, 0)
FakeShutdownMessage.Size = UDim2.new(0, 72, 0, 42)
FakeShutdownMessage.Font = Enum.Font.SourceSans
FakeShutdownMessage.Text = "Fake Shutdown Message"
FakeShutdownMessage.TextColor3 = Color3.fromRGB(255, 0, 0)
FakeShutdownMessage.TextScaled = true
FakeShutdownMessage.TextSize = 14.000
FakeShutdownMessage.TextWrapped = true

FakeRobloxMessage.Name = "FakeRobloxMessage"
FakeRobloxMessage.Parent = Main
FakeRobloxMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FakeRobloxMessage.BackgroundTransparency = 1.000
FakeRobloxMessage.ClipsDescendants = true
FakeRobloxMessage.Position = UDim2.new(0.72868216, 0, 0.349999994, 0)
FakeRobloxMessage.Size = UDim2.new(0, 66, 0, 42)
FakeRobloxMessage.Font = Enum.Font.SourceSans
FakeRobloxMessage.Text = "Fake Roblox Message"
FakeRobloxMessage.TextColor3 = Color3.fromRGB(255, 0, 0)
FakeRobloxMessage.TextScaled = true
FakeRobloxMessage.TextSize = 14.000
FakeRobloxMessage.TextWrapped = true

Line3.Name = "Line3"
Line3.Parent = Main
Line3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line3.BorderColor3 = Color3.fromRGB(255, 255, 255)
Line3.Position = UDim2.new(0.717054248, 0, 0.76818186, 0)
Line3.Size = UDim2.new(0, 74, 0, 0)
Line3.Font = Enum.Font.SourceSans
Line3.Text = ""
Line3.TextColor3 = Color3.fromRGB(0, 0, 0)
Line3.TextSize = 14.000

FakeUpdateMessage.Name = "FakeUpdateMessage"
FakeUpdateMessage.Parent = Main
FakeUpdateMessage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FakeUpdateMessage.BackgroundTransparency = 1.000
FakeUpdateMessage.ClipsDescendants = true
FakeUpdateMessage.Position = UDim2.new(0.717054248, 0, 0.577272773, 0)
FakeUpdateMessage.Size = UDim2.new(0, 72, 0, 42)
FakeUpdateMessage.Font = Enum.Font.SourceSans
FakeUpdateMessage.Text = "Fake Update Message"
FakeUpdateMessage.TextColor3 = Color3.fromRGB(255, 0, 0)
FakeUpdateMessage.TextScaled = true
FakeUpdateMessage.TextSize = 14.000
FakeUpdateMessage.TextWrapped = true

RMToggle.Name = "RMToggle"
RMToggle.Parent = Main
RMToggle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
RMToggle.BorderColor3 = Color3.fromRGB(83, 83, 83)
RMToggle.Position = UDim2.new(0.457364351, 0, 0.768181741, 0)
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
RandomMessages.Position = UDim2.new(0.0930232555, 0, 0.76818186, 0)
RandomMessages.Size = UDim2.new(0, 73, 0, 15)
RandomMessages.Font = Enum.Font.SourceSans
RandomMessages.Text = "Random Messages"
RandomMessages.TextColor3 = Color3.fromRGB(255, 255, 255)
RandomMessages.TextSize = 15.000

YourMessage.Name = "YourMessage"
YourMessage.Parent = Main
YourMessage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
YourMessage.BorderColor3 = Color3.fromRGB(255, 255, 255)
YourMessage.Position = UDim2.new(0.0426356606, 0, 0.459090889, 0)
YourMessage.Size = UDim2.new(0, 161, 0, 18)
YourMessage.Font = Enum.Font.SourceSans
YourMessage.PlaceholderText = "Your Message"
YourMessage.Text = ""
YourMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
YourMessage.TextSize = 15.000

Send2.Name = "Send2"
Send2.Parent = Main
Send2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Send2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Send2.Position = UDim2.new(0.0426356606, 0, 0.454545468, 0)
Send2.Size = UDim2.new(0, 161, 0, 19)
Send2.Visible = false
Send2.Font = Enum.Font.SourceSans
Send2.Text = "Send Message"
Send2.TextColor3 = Color3.fromRGB(255, 255, 255)
Send2.TextSize = 18.000

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
			script.Parent.Parent.Parent.Credits2.Visible = false
			script.Parent.Parent.Parent.Line2.Visible = false
			script.Parent.Parent.Parent.Line3.Visible = false
			script.Parent.Parent.Parent.RandomMessages.Visible = false
			script.Parent.Parent.Parent.Version.Visible = false
			script.Parent.Parent.Parent.WorkStatus.Visible = false
	
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
			script.Parent.Parent.Parent.Cost.Visible = true
			script.Parent.Parent.Parent.Credits.Visible = true
			script.Parent.Parent.Parent.Credits2.Visible = true
			script.Parent.Parent.Parent.Line2.Visible = true
			script.Parent.Parent.Parent.Line3.Visible = true
			script.Parent.Parent.Parent.RandomMessages.Visible = true
			script.Parent.Parent.Parent.Version.Visible = true
			script.Parent.Parent.Parent.WorkStatus.Visible = true
			
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
