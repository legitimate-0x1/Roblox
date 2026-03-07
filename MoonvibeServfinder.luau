-- Made by ScientistM!          
 
local GMoonvibe = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local GMoonvibeList = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TextLabel = Instance.new("TextLabel")
local GRandom = Instance.new("TextButton")
local GExport = Instance.new("TextButton")
local GLeave = Instance.new("TextButton")
local RBXPlayers = game:GetService(`Players`)
local RBXReplicatedStorage = game:GetService(`ReplicatedStorage`)
local GServRemote = RBXReplicatedStorage.Remotes.SearchServers
local GJoinRemote = RBXReplicatedStorage.Remotes:FindFirstChild(`Dat`..`a`)
   
local GAddServ = function(GPlayerUserId, GInvitationtxt, Val, ValB)
	local GMoonvibeServ = Instance.new("Frame")
	local GPlayerImg = Instance.new("ImageLabel")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local GPlayerN = Instance.new("TextLabel")
	local GLine = Instance.new("Frame")
	local GJoin = Instance.new("TextButton")
	 
	GMoonvibeServ.Name = "GMoonvibeServ"
	GMoonvibeServ.BackgroundColor3 = Color3.fromRGB(17, 17, 52)
	GMoonvibeServ.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GMoonvibeServ.BorderSizePixel = 0
	GMoonvibeServ.Position = UDim2.new(0, 0, -1.56500406e-07, 0)
	GMoonvibeServ.Size = UDim2.new(0, 252, 0, 30)

	GPlayerImg.Name = "GPlayerImg"
	GPlayerImg.Parent = GMoonvibeServ
	GPlayerImg.BackgroundColor3 = Color3.fromRGB(17, 17, 58)
	GPlayerImg.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GPlayerImg.BorderSizePixel = 0
	GPlayerImg.LayoutOrder = 1
	GPlayerImg.Size = UDim2.new(0, 30, 0, 30)
	GPlayerImg.Image = RBXPlayers:GetUserThumbnailAsync(GPlayerUserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)

	UIListLayout_2.Parent = GMoonvibeServ
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	GPlayerN.Name = "GPlayerN"
	GPlayerN.Parent = GMoonvibeServ
	GPlayerN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GPlayerN.BackgroundTransparency = 1.000
	GPlayerN.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GPlayerN.BorderSizePixel = 0
	GPlayerN.LayoutOrder = 3
	GPlayerN.Position = UDim2.new(0.150793657, 0, 0, 0)
	GPlayerN.Size = UDim2.new(0, 72, 0, 30)
	GPlayerN.Font = Enum.Font.SourceSans
	GPlayerN.Text = RBXPlayers:GetNameFromUserIdAsync(GPlayerUserId)
	GPlayerN.TextColor3 = Color3.fromRGB(185, 185, 185)
	GPlayerN.TextSize = 14.000
	GPlayerN.TextStrokeColor3 = Color3.fromRGB(185, 185, 185)
	GPlayerN.TextWrapped = true
	GPlayerN.TextXAlignment = Enum.TextXAlignment.Left

	GLine.Name = "GLine"
	GLine.Parent = GMoonvibeServ
	GLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GLine.BackgroundTransparency = 1.000
	GLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GLine.BorderSizePixel = 0
	GLine.LayoutOrder = 2
	GLine.Position = UDim2.new(0.119047619, 0, 0, 0)
	GLine.Size = UDim2.new(0, 8, 0, 30)

	GJoin.Name = "GJoin"
	GJoin.Parent = GMoonvibeServ
	GJoin.BackgroundColor3 = Color3.fromRGB(17, 17, 48)
	GJoin.BackgroundTransparency = 1.000
	GJoin.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GJoin.BorderSizePixel = 0
	GJoin.LayoutOrder = 4
	GJoin.Position = UDim2.new(0.674603164, 0, 0, 0)
	GJoin.Size = UDim2.new(0, 72, 0, 30)
	GJoin.Font = Enum.Font.SourceSans
	GJoin.Text = GInvitationtxt
	GJoin.TextColor3 = Color3.fromRGB(185, 185, 185)
	GJoin.TextSize = 14.000 
	
	GJoin.MouseButton1Click:Connect(function()
		GJoinRemote:FireServer("JoinServer", Val, ValB)
	end)
	
	GMoonvibeServ.Parent = GMoonvibeList
end
 
GMoonvibe.Name = "GMoonvibe"
GMoonvibe.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Frame.Parent = GMoonvibe
Frame.BackgroundColor3 = Color3.fromRGB(17, 17, 34)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.466681361, 0, 0.290524423, 0)
Frame.Size = UDim2.new(0, 280, 0, 280)

GMoonvibeList.Name = "GMoonvibeList"
GMoonvibeList.Parent = Frame
GMoonvibeList.Active = true
GMoonvibeList.BackgroundColor3 = Color3.fromRGB(17, 17, 48)
GMoonvibeList.BorderColor3 = Color3.fromRGB(0, 0, 0)
GMoonvibeList.BorderSizePixel = 0
GMoonvibeList.Position = UDim2.new(0.0488242023, 0, 0.145934731, 0)
GMoonvibeList.Size = UDim2.new(0, 252, 0, 195)
GMoonvibeList.ScrollBarThickness = 1
GMoonvibeList.CanvasSize = UDim2.new(0, 999, 0, 999)
 
UIListLayout.Parent = GMoonvibeList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
 
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(17, 17, 48)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 280, 0, 30)
TextLabel.Font = Enum.Font.RobotoMono
TextLabel.Text = "Moonvibe GServ"
TextLabel.TextColor3 = Color3.fromRGB(185, 185, 185)
TextLabel.TextSize = 16.000

GRandom.Parent = Frame
GRandom.BackgroundColor3 = Color3.fromRGB(17, 17, 48)
GRandom.BorderColor3 = Color3.fromRGB(0, 0, 0)
GRandom.BorderSizePixel = 0
GRandom.Position = UDim2.new(0.0464285724, 0, 0.885714293, 0)
GRandom.Size = UDim2.new(0, 72, 0, 15)
GRandom.Font = Enum.Font.SourceSans
GRandom.Text = "GRandom"
GRandom.TextColor3 = Color3.fromRGB(185, 185, 185)
GRandom.TextSize = 14.000

GExport.Parent = Frame
GExport.BackgroundColor3 = Color3.fromRGB(17, 17, 48)
GExport.BorderColor3 = Color3.fromRGB(0, 0, 0)
GExport.BorderSizePixel = 0
GExport.Position = UDim2.new(0.371428579, 0, 0.885714293, 0)
GExport.Size = UDim2.new(0, 72, 0, 15)
GExport.Font = Enum.Font.SourceSans
GExport.Text = "Export GServ"
GExport.TextColor3 = Color3.fromRGB(185, 185, 185)
GExport.TextSize = 14.000

GLeave.Parent = Frame
GLeave.BackgroundColor3 = Color3.fromRGB(17, 17, 48)
GLeave.BorderColor3 = Color3.fromRGB(0, 0, 0)
GLeave.BorderSizePixel = 0
GLeave.Position = UDim2.new(0.689285696, 0, 0.885714293, 0)
GLeave.Size = UDim2.new(0, 72, 0, 15)
GLeave.Font = Enum.Font.SourceSans
GLeave.Text = "GLeave"
GLeave.TextColor3 = Color3.fromRGB(185, 185, 185)
GLeave.TextSize = 14.000

GRandom.MouseButton1Click:Connect(function()
	local GServT = GServRemote:InvokeServer()
	local GServInvtxtList = {}
	local GServInvtxtListCount = 0
	
	for Index, Val in pairs(GServT) do 
		if Val.value.InviteCode ~= nil then
			table.insert(GServInvtxtList, Val.value.InviteCode)
			GServInvtxtListCount += 1
		end
	end
	
	GJoinRemote:InvokeServer(GServInvtxtList[math.random(1, GServInvtxtListCount)])
end)

GExport.MouseButton1Click:Connect(function()
	local GServTS = ``

	for Index, Val in pairs(GServRemote:InvokeServer()) do 
		GServTS ..= `\nGServTNum - ` .. Index .. `, GServT` .. tostring(Val) .. `\n\n`

		for Index2, Val2 in pairs(Val) do 
			GServTS ..= Index2 .. ` - ` .. tostring(Val2) .. `\n`

			if type(Val2) == `table` then
				for Index3, Val3 in pairs(Val2) do 
					GServTS ..= Index2 .. `.` .. Index3 .. ` = ` .. tostring(Val3) .. `\n `
				end
			end
		end
	end  

	setclipboard(GServTS)
end)

GLeave.MouseButton1Click:Connect(function()
	game:Shutdown()
end)

for Index, Val in pairs(GServRemote:InvokeServer()) do 
	GAddServ(Val.value.UserId, Val.value.InviteCode or `GPublic`, Val.value.SID, Val.value.Code)
end
   
GMoonvibe.Parent = game:GetService(`CoreGui`)
