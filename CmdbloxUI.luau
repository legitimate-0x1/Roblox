-- Made by ScientistM!          

return function(SLib)
	local CmdbloxGUI = SLib.GenerateGUI()
	local CmdbloxMFrame = Instance.new("Frame")
	local CmdbloxTFrame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local CmdbloxListFrame = Instance.new("Frame")
	local CmdbloxGPlugins = Instance.new("Frame")
	local CmdbloxGPlugins_2 = Instance.new("ScrollingFrame")
	local TextLabel_2 = Instance.new("TextLabel")
	local TextButton = Instance.new("TextButton")
	local UIListLayout = Instance.new("UIListLayout")
	local CmdbloxPluginEF = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local TextBox = Instance.new("TextBox")
	local ChgCPN = Instance.new("TextButton")
	local RemoveCBP = Instance.new("TextButton")
	local Cmdblox_ = Instance.new("ScrollingFrame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local CmdbloxGKeybinds = Instance.new("Frame")
	local CmdbloxGKeybinds_2 = Instance.new("ScrollingFrame")
	local TextLabel_3 = Instance.new("TextLabel")
	local TextButton_2 = Instance.new("TextButton")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local CmdbloxCMDNTB = Instance.new("TextBox")
	local GKeybindTB = Instance.new("TextBox")
	local TextButton_3 = Instance.new("TextButton")
	local CmdbloxCMDNBTB = Instance.new("TextBox")
	local CmdbloxList = Instance.new("ScrollingFrame")
	local UIListLayout_5 = Instance.new("UIListLayout")
	local Cmdblox__2 = Instance.new("TextButton")
	local CmdbloxGPlugins_3 = Instance.new("TextButton")
	local CmdbloxGKeybinds_3 = Instance.new("TextButton")
	local CmdbloxBar = Instance.new("Frame")
	local UIGradient_4 = Instance.new("UIGradient")
	local CmdbloxBarTB = Instance.new("TextBox")
	local CmdbloxNotificationBar = Instance.new("Frame")
	local UIListLayout_6 = Instance.new("UIListLayout")

	CmdbloxGUI.Name = "Cmdblox"
	CmdbloxGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	CmdbloxGUI.DisplayOrder = 2147483647
	CmdbloxGUI.ResetOnSpawn = false

	CmdbloxMFrame.Name = "CmdbloxMFrame"
	CmdbloxMFrame.Parent = CmdbloxGUI
	CmdbloxMFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	CmdbloxMFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	CmdbloxMFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxMFrame.BorderSizePixel = 0
	CmdbloxMFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	CmdbloxMFrame.Size = UDim2.new(0, 228, 0, 248)
	CmdbloxMFrame.Visible = false

	CmdbloxTFrame.Name = "CmdbloxTFrame"
	CmdbloxTFrame.Parent = CmdbloxMFrame
	CmdbloxTFrame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	CmdbloxTFrame.BackgroundTransparency = 0.900
	CmdbloxTFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxTFrame.BorderSizePixel = 0
	CmdbloxTFrame.Size = UDim2.new(0, 228, 0, 35)

	TextLabel.Parent = CmdbloxTFrame
	TextLabel.BackgroundColor3 = Color3.fromRGB(72, 153, 182)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 228, 0, 35)
	TextLabel.Font = Enum.Font.Unknown
	TextLabel.Text = "Cmdblox"
	TextLabel.TextColor3 = Color3.fromRGB(223, 223, 223)
	TextLabel.TextSize = 16.000

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.44, Color3.fromRGB(217, 217, 217)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
	UIGradient.Parent = CmdbloxMFrame

	CmdbloxListFrame.Name = "CmdbloxListFrame"
	CmdbloxListFrame.Parent = CmdbloxMFrame
	CmdbloxListFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CmdbloxListFrame.BackgroundTransparency = 1.000
	CmdbloxListFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxListFrame.BorderSizePixel = 0
	CmdbloxListFrame.Position = UDim2.new(0.0570175424, 0, 0.17741935, 0)
	CmdbloxListFrame.Size = UDim2.new(0, 202, 0, 188)

	CmdbloxGPlugins.Name = "CmdbloxGPlugins"
	CmdbloxGPlugins.Parent = CmdbloxListFrame
	CmdbloxGPlugins.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CmdbloxGPlugins.BackgroundTransparency = 1.000
	CmdbloxGPlugins.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxGPlugins.BorderSizePixel = 0
	CmdbloxGPlugins.Size = UDim2.new(0, 202, 0, 188)
	CmdbloxGPlugins.Visible = false

	CmdbloxGPlugins_2.Name = "CmdbloxGPlugins"
	CmdbloxGPlugins_2.Parent = CmdbloxGPlugins
	CmdbloxGPlugins_2.Active = true
	CmdbloxGPlugins_2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	CmdbloxGPlugins_2.BackgroundTransparency = 0.900
	CmdbloxGPlugins_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxGPlugins_2.BorderSizePixel = 0
	CmdbloxGPlugins_2.Size = UDim2.new(0, 202, 0, 188)
	CmdbloxGPlugins_2.ScrollBarThickness = 1

	TextLabel_2.Parent = CmdbloxGPlugins_2
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	TextLabel_2.BackgroundTransparency = 0.900
	TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.BorderSizePixel = 0
	TextLabel_2.Size = UDim2.new(0, 202, 0, 28)
	TextLabel_2.Font = Enum.Font.Code
	TextLabel_2.Text = "Exampleplugin.lua"
	TextLabel_2.TextColor3 = Color3.fromRGB(223, 223, 223)
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true

	TextButton.Parent = TextLabel_2
	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BackgroundTransparency = 1.000
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.925742567, 0, -0.0182342529, 0)
	TextButton.Size = UDim2.new(0, 15, 0, 28)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.Text = "_"
	TextButton.TextColor3 = Color3.fromRGB(223, 223, 223)
	TextButton.TextSize = 14.000

	UIListLayout.Parent = CmdbloxGPlugins_2
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	CmdbloxPluginEF.Name = "CmdbloxPluginEF"
	CmdbloxPluginEF.Parent = CmdbloxGPlugins
	CmdbloxPluginEF.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	CmdbloxPluginEF.BackgroundTransparency = 0.900
	CmdbloxPluginEF.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxPluginEF.BorderSizePixel = 0
	CmdbloxPluginEF.Size = UDim2.new(0, 202, 0, 188)
	CmdbloxPluginEF.Visible = false

	UIListLayout_2.Parent = CmdbloxPluginEF
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	TextBox.Parent = CmdbloxPluginEF
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Size = UDim2.new(0, 202, 0, 38)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.Gotham
	TextBox.PlaceholderText = "New Cmdblox Plugin Name"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(223, 223, 223)
	TextBox.TextSize = 12.000
	TextBox.TextWrapped = true

	ChgCPN.Name = "ChgCPN"
	ChgCPN.Parent = CmdbloxPluginEF
	ChgCPN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ChgCPN.BackgroundTransparency = 1.000
	ChgCPN.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ChgCPN.BorderSizePixel = 0
	ChgCPN.Position = UDim2.new(0, 0, 0.202127665, 0)
	ChgCPN.Size = UDim2.new(0, 202, 0, 28)
	ChgCPN.Font = Enum.Font.SourceSans
	ChgCPN.Text = "Change Cmdblox Plugin Name"
	ChgCPN.TextColor3 = Color3.fromRGB(223, 223, 223)
	ChgCPN.TextSize = 15.000

	RemoveCBP.Name = "RemoveCBP"
	RemoveCBP.Parent = CmdbloxPluginEF
	RemoveCBP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RemoveCBP.BackgroundTransparency = 1.000
	RemoveCBP.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RemoveCBP.BorderSizePixel = 0
	RemoveCBP.Position = UDim2.new(0, 0, 0.202127665, 0)
	RemoveCBP.Size = UDim2.new(0, 202, 0, 28)
	RemoveCBP.Font = Enum.Font.SourceSans
	RemoveCBP.Text = "Remove Cmdblox Plugin"
	RemoveCBP.TextColor3 = Color3.fromRGB(223, 223, 223)
	RemoveCBP.TextSize = 15.000

	Cmdblox_.Name = "Cmdblox_"
	Cmdblox_.Parent = CmdbloxListFrame
	Cmdblox_.Active = true
	Cmdblox_.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	Cmdblox_.BackgroundTransparency = 0.900
	Cmdblox_.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Cmdblox_.BorderSizePixel = 0
	Cmdblox_.Size = UDim2.new(0, 202, 0, 188)
	Cmdblox_.Visible = false
	Cmdblox_.ScrollBarThickness = 1
	Cmdblox_.CanvasSize = Cmdblox_.Size

	UIListLayout_3.Parent = Cmdblox_
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_3.Padding = UDim.new(0, 4)

	CmdbloxGKeybinds.Name = "CmdbloxGKeybinds"
	CmdbloxGKeybinds.Parent = CmdbloxListFrame
	CmdbloxGKeybinds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CmdbloxGKeybinds.BackgroundTransparency = 1.000
	CmdbloxGKeybinds.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxGKeybinds.BorderSizePixel = 0
	CmdbloxGKeybinds.Size = UDim2.new(0, 202, 0, 188)
	CmdbloxGKeybinds.Visible = false

	CmdbloxGKeybinds_2.Name = "CmdbloxGKeybinds"
	CmdbloxGKeybinds_2.Parent = CmdbloxGKeybinds
	CmdbloxGKeybinds_2.Active = true
	CmdbloxGKeybinds_2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	CmdbloxGKeybinds_2.BackgroundTransparency = 0.900
	CmdbloxGKeybinds_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxGKeybinds_2.BorderSizePixel = 0
	CmdbloxGKeybinds_2.Size = UDim2.new(0, 202, 0, 118)
	CmdbloxGKeybinds_2.ScrollBarThickness = 1

	TextLabel_3.Parent = CmdbloxGKeybinds_2
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	TextLabel_3.BackgroundTransparency = 0.900
	TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_3.BorderSizePixel = 0
	TextLabel_3.Size = UDim2.new(0, 202, 0, 28)
	TextLabel_3.Font = Enum.Font.Code
	TextLabel_3.Text = "F | fly / unfly"
	TextLabel_3.TextColor3 = Color3.fromRGB(223, 223, 223)
	TextLabel_3.TextSize = 14.000
	TextLabel_3.TextWrapped = true

	TextButton_2.Parent = TextLabel_3
	TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.BackgroundTransparency = 1.000
	TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.BorderSizePixel = 0
	TextButton_2.Position = UDim2.new(0.925742567, 0, -0.0182342529, 0)
	TextButton_2.Size = UDim2.new(0, 15, 0, 28)
	TextButton_2.Font = Enum.Font.SourceSans
	TextButton_2.Text = "X"
	TextButton_2.TextColor3 = Color3.fromRGB(223, 223, 223)
	TextButton_2.TextSize = 14.000

	UIListLayout_4.Parent = CmdbloxGKeybinds_2
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.Padding = UDim.new(0, 4)

	CmdbloxCMDNTB.Name = "CmdbloxCMDNTB"
	CmdbloxCMDNTB.Parent = CmdbloxGKeybinds
	CmdbloxCMDNTB.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	CmdbloxCMDNTB.BackgroundTransparency = 0.900
	CmdbloxCMDNTB.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxCMDNTB.BorderSizePixel = 0
	CmdbloxCMDNTB.Position = UDim2.new(0.110908434, 0, 0.712766111, 0)
	CmdbloxCMDNTB.Size = UDim2.new(0, 118, 0, 16)
	CmdbloxCMDNTB.Font = Enum.Font.Gotham
	CmdbloxCMDNTB.PlaceholderText = "CmdbloxCMDN"
	CmdbloxCMDNTB.Text = ""
	CmdbloxCMDNTB.TextColor3 = Color3.fromRGB(223, 223, 223)
	CmdbloxCMDNTB.TextSize = 12.000
	CmdbloxCMDNTB.TextWrapped = true

	GKeybindTB.Name = "GKeybindTB"
	GKeybindTB.Parent = CmdbloxGKeybinds
	GKeybindTB.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	GKeybindTB.BackgroundTransparency = 0.900
	GKeybindTB.BorderColor3 = Color3.fromRGB(0, 0, 0)
	GKeybindTB.BorderSizePixel = 0
	GKeybindTB.Position = UDim2.new(0.110908434, 0, 0.882978857, 0)
	GKeybindTB.Size = UDim2.new(0, 118, 0, 16)
	GKeybindTB.Font = Enum.Font.Gotham
	GKeybindTB.PlaceholderText = "GKeybind"
	GKeybindTB.Text = ""
	GKeybindTB.TextColor3 = Color3.fromRGB(223, 223, 223)
	GKeybindTB.TextSize = 12.000
	GKeybindTB.TextWrapped = true

	TextButton_3.Parent = CmdbloxGKeybinds
	TextButton_3.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	TextButton_3.BackgroundTransparency = 0.900
	TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_3.BorderSizePixel = 0
	TextButton_3.Position = UDim2.new(0.693069279, 0, 0.712766111, 0)
	TextButton_3.Size = UDim2.new(0, 39, 0, 48)
	TextButton_3.Font = Enum.Font.SourceSans
	TextButton_3.Text = "GKeyb"
	TextButton_3.TextColor3 = Color3.fromRGB(228, 228, 228)
	TextButton_3.TextSize = 15.000

	CmdbloxCMDNBTB.Name = "CmdbloxCMDNBTB"
	CmdbloxCMDNBTB.Parent = CmdbloxGKeybinds
	CmdbloxCMDNBTB.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	CmdbloxCMDNBTB.BackgroundTransparency = 0.900
	CmdbloxCMDNBTB.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxCMDNBTB.BorderSizePixel = 0
	CmdbloxCMDNBTB.Position = UDim2.new(0.110908434, 0, 0.797872484, 0)
	CmdbloxCMDNBTB.Size = UDim2.new(0, 118, 0, 16)
	CmdbloxCMDNBTB.Font = Enum.Font.Gotham
	CmdbloxCMDNBTB.PlaceholderText = "CmdbloxCMDNB"
	CmdbloxCMDNBTB.Text = ""
	CmdbloxCMDNBTB.TextColor3 = Color3.fromRGB(223, 223, 223)
	CmdbloxCMDNBTB.TextSize = 12.000
	CmdbloxCMDNBTB.TextWrapped = true

	CmdbloxList.Name = "CmdbloxList"
	CmdbloxList.Parent = CmdbloxListFrame
	CmdbloxList.Active = true
	CmdbloxList.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	CmdbloxList.BackgroundTransparency = 0.900
	CmdbloxList.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxList.BorderSizePixel = 0
	CmdbloxList.Size = UDim2.new(0, 202, 0, 188)
	CmdbloxList.ScrollBarThickness = 1

	UIListLayout_5.Parent = CmdbloxList
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_5.Padding = UDim.new(0, 4)

	Cmdblox__2.Name = "Cmdblox_"
	Cmdblox__2.Parent = CmdbloxList
	Cmdblox__2.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	Cmdblox__2.BackgroundTransparency = 0.900
	Cmdblox__2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Cmdblox__2.BorderSizePixel = 0
	Cmdblox__2.LayoutOrder = 1
	Cmdblox__2.Size = UDim2.new(0, 202, 0, 28)
	Cmdblox__2.Font = Enum.Font.Code
	Cmdblox__2.Text = "Cmdblox_"
	Cmdblox__2.TextColor3 = Color3.fromRGB(223, 223, 223)
	Cmdblox__2.TextSize = 14.000

	CmdbloxGPlugins_3.Name = "CmdbloxGPlugins"
	CmdbloxGPlugins_3.Parent = CmdbloxList
	CmdbloxGPlugins_3.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	CmdbloxGPlugins_3.BackgroundTransparency = 0.900
	CmdbloxGPlugins_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxGPlugins_3.BorderSizePixel = 0
	CmdbloxGPlugins_3.LayoutOrder = 2
	CmdbloxGPlugins_3.Size = UDim2.new(0, 202, 0, 28)
	CmdbloxGPlugins_3.Font = Enum.Font.Code
	CmdbloxGPlugins_3.Text = "Cmdblox Plugins"
	CmdbloxGPlugins_3.TextColor3 = Color3.fromRGB(223, 223, 223)
	CmdbloxGPlugins_3.TextSize = 14.000

	CmdbloxGKeybinds_3.Name = "CmdbloxGKeybinds"
	CmdbloxGKeybinds_3.Parent = CmdbloxList
	CmdbloxGKeybinds_3.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	CmdbloxGKeybinds_3.BackgroundTransparency = 0.900
	CmdbloxGKeybinds_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxGKeybinds_3.BorderSizePixel = 0
	CmdbloxGKeybinds_3.LayoutOrder = 3
	CmdbloxGKeybinds_3.Size = UDim2.new(0, 202, 0, 28)
	CmdbloxGKeybinds_3.Font = Enum.Font.Code
	CmdbloxGKeybinds_3.Text = "Cmdblox GKeybinds"
	CmdbloxGKeybinds_3.TextColor3 = Color3.fromRGB(223, 223, 223)
	CmdbloxGKeybinds_3.TextSize = 14

	CmdbloxBar.Name = "CmdbloxBar"
	CmdbloxBar.Parent = CmdbloxGUI
	CmdbloxBar.AnchorPoint = Vector2.new(0.5, 0.5)
	CmdbloxBar.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	CmdbloxBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxBar.BorderSizePixel = 0
	CmdbloxBar.Position = UDim2.new(0.5, 0, 0.800000012, 0)
	CmdbloxBar.Size = UDim2.new(0, 228, 0, 42)
	CmdbloxBar.Visible = false

	UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.44, Color3.fromRGB(217, 217, 217)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
	UIGradient_4.Parent = CmdbloxBar

	CmdbloxBarTB.Parent = CmdbloxBar
	CmdbloxBarTB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CmdbloxBarTB.BackgroundTransparency = 1.000
	CmdbloxBarTB.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxBarTB.BorderSizePixel = 0
	CmdbloxBarTB.Position = UDim2.new(0.0614035092, 0, 0, 0)
	CmdbloxBarTB.Size = UDim2.new(0, 214, 0, 42)
	CmdbloxBarTB.ClearTextOnFocus = false
	CmdbloxBarTB.Font = Enum.Font.Gotham
	CmdbloxBarTB.PlaceholderText = "CMD.luau"
	CmdbloxBarTB.Text = ""
	CmdbloxBarTB.TextColor3 = Color3.fromRGB(223, 223, 223)
	CmdbloxBarTB.TextSize = 12.000
	CmdbloxBarTB.TextWrapped = true
	CmdbloxBarTB.TextXAlignment = Enum.TextXAlignment.Left

	CmdbloxNotificationBar.Name = "CmdbloxNotificationBar"
	CmdbloxNotificationBar.Parent = CmdbloxGUI
	CmdbloxNotificationBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CmdbloxNotificationBar.BackgroundTransparency = 1.000
	CmdbloxNotificationBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CmdbloxNotificationBar.BorderSizePixel = 0
	CmdbloxNotificationBar.Position = UDim2.new(0.00999999978, 0, 0.316000015, 0)
	CmdbloxNotificationBar.Size = UDim2.new(0, 170, 0, 459)
	CmdbloxNotificationBar.Visible = true

	UIListLayout_6.Parent = CmdbloxNotificationBar
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_6.Padding = UDim.new(0, 4)

	CmdbloxBarTB.FocusLost:Connect(function() 
		local CmdbloxBarTBInpAnsw = string.split(CmdbloxBarTB.Text, ` `)
		local CmdbloxCMDF = Cmdblox.CmdbloxCMDT[CmdbloxBarTBInpAnsw[1]]
		table.remove(CmdbloxBarTBInpAnsw, 1)

		if CmdbloxCMDF ~= nil then
			CmdbloxCMDF(table.unpack(CmdbloxBarTBInpAnsw))
		end

		CmdbloxBar.Visible = false
	end)   

	SLib.UserInputService.InputEnded:Connect(function(GInp, RBXTBF)
		if not RBXTBF and GInp.KeyCode == Cmdblox.CmdbloxGKey then 
			CmdbloxBarTB:CaptureFocus()
			CmdbloxBar.Visible = true
			CmdbloxBarTB.Text = ``
		end
	end)    

	for Index, Val in pairs(CmdbloxList:GetChildren()) do 
		if Val.ClassName == `TextButton` then
			Val.MouseButton1Click:Connect(function()
				for IndexB, ValB in pairs(CmdbloxListFrame:GetChildren()) do 
					ValB.Visible = false
				end

				CmdbloxListFrame[Val.Name].Visible = true
			end)
		end
	end

	CmdbloxGUI.Parent = SLib.CoreGui
	
	local CmdbloxT = nil
	 
	CmdbloxT = {
		Cmdblox = CmdbloxGUI, 

		GNotify = function(CmdbloxNBodyT, CmdbloxNDuration)  
			local CmdbloxNotification = Instance.new("Frame")
			local CmdbloxNTFrame = Instance.new("Frame")
			local UIGradient_2 = Instance.new("UIGradient")
			local CmdbloxNBody = Instance.new("TextLabel")
			local CmdbloxNTitle = Instance.new("TextLabel")
			local CmdbloxNotificationDurationBar = Instance.new("Frame")
			local UIGradient_3 = Instance.new("UIGradient")

			CmdbloxNotification.Name = "CmdbloxNotification"
			CmdbloxNotification.Parent = CmdbloxNotificationBar
			CmdbloxNotification.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			CmdbloxNotification.BorderColor3 = Color3.fromRGB(17, 170, 255)
			CmdbloxNotification.Position = UDim2.new(0, 9, 0, -1)
			CmdbloxNotification.Size = UDim2.new(0, 170, 0, 140)

			CmdbloxNTFrame.Name = "CmdbloxNTFrame"
			CmdbloxNTFrame.Parent = CmdbloxNotification
			CmdbloxNTFrame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
			CmdbloxNTFrame.BackgroundTransparency = 0.900
			CmdbloxNTFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CmdbloxNTFrame.BorderSizePixel = 0
			CmdbloxNTFrame.Size = UDim2.new(0, 170, 0, 30)

			UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.44, Color3.fromRGB(217, 217, 217)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
			UIGradient_2.Parent = CmdbloxNotification

			CmdbloxNBody.Name = "CmdbloxNBody"
			CmdbloxNBody.Parent = CmdbloxNotification
			CmdbloxNBody.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
			CmdbloxNBody.BackgroundTransparency = 0.900
			CmdbloxNBody.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CmdbloxNBody.BorderSizePixel = 0
			CmdbloxNBody.Position = UDim2.new(0.0352941193, 0, 0.214285716, 0)
			CmdbloxNBody.Size = UDim2.new(0, 157, 0, 104)
			CmdbloxNBody.Font = Enum.Font.Code
			CmdbloxNBody.Text = CmdbloxNBodyT
			CmdbloxNBody.TextColor3 = Color3.fromRGB(223, 223, 223)
			CmdbloxNBody.TextSize = 14.000
			CmdbloxNBody.TextWrapped = true
			CmdbloxNBody.TextXAlignment = Enum.TextXAlignment.Left
			CmdbloxNBody.TextYAlignment = Enum.TextYAlignment.Top

			CmdbloxNTitle.Name = "CmdbloxNTitle"
			CmdbloxNTitle.Parent = CmdbloxNotification
			CmdbloxNTitle.BackgroundColor3 = Color3.fromRGB(72, 153, 182)
			CmdbloxNTitle.BackgroundTransparency = 1.000
			CmdbloxNTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CmdbloxNTitle.BorderSizePixel = 0
			CmdbloxNTitle.Size = UDim2.new(0, 170, 0, 30)
			CmdbloxNTitle.Font = Enum.Font.Code
			CmdbloxNTitle.Text = "> Cmdblox Notification"
			CmdbloxNTitle.TextColor3 = Color3.fromRGB(17, 170, 255)
			CmdbloxNTitle.TextSize = 15.000

			CmdbloxNotificationDurationBar.Name = "CmdbloxNotificationDurationBar"
			CmdbloxNotificationDurationBar.Parent = CmdbloxNotification
			CmdbloxNotificationDurationBar.BackgroundColor3 = Color3.fromRGB(72, 153, 182)
			CmdbloxNotificationDurationBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CmdbloxNotificationDurationBar.BorderSizePixel = 0
			CmdbloxNotificationDurationBar.Position = UDim2.new(0.0411764719, 0, 0.921428561, 0)
			CmdbloxNotificationDurationBar.Size = UDim2.new(0, 155, 0, 5)

			UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(17, 170, 255)), ColorSequenceKeypoint.new(0.44, Color3.fromRGB(217, 217, 217)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
			UIGradient_3.Parent = CmdbloxNotificationDurationBar

			SLib.TweenService:Create(CmdbloxNotificationDurationBar, TweenInfo.new(CmdbloxNDuration, Enum.EasingStyle.Linear), {Size = UDim2.new(0, 1, 0, 5)}):Play()
			task.wait(CmdbloxNDuration)

			CmdbloxNotification:Destroy()
		end,

		NCmdbloxCMDN = function(NCmdbloxCMDN)
			local CmdbloxCN = Instance.new("TextLabel")

			CmdbloxCN.Name = "CmdbloxCN"
			CmdbloxCN.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
			CmdbloxCN.BackgroundTransparency = 0.900
			CmdbloxCN.BorderColor3 = Color3.fromRGB(0, 0, 0)
			CmdbloxCN.BorderSizePixel = 0
			CmdbloxCN.Size = UDim2.new(0, 202, 0, 28)
			CmdbloxCN.Font = Enum.Font.Code
			CmdbloxCN.Text = NCmdbloxCMDN
			CmdbloxCN.TextColor3 = Color3.fromRGB(223, 223, 223)
			CmdbloxCN.TextSize = 14.000
			CmdbloxCN.TextWrapped = true
			CmdbloxCN.Parent = Cmdblox_
		end,

		ClearCmdbloxCMDN = function()
			for Index, Val in pairs(Cmdblox_:GetChildren()) do 
				if Val.ClassName ~= `UIListLayout` then
					Val:Destroy()
				end
			end
		end,

		SetCmdbloxCMDTNS = function()
			for Index, Val in pairs(Cmdblox.CmdbloxCMDT) do 
				CmdbloxT.NCmdbloxCMDN(Index)
			end
		end,

		SetCmdbloxUITabVisibilities = function()
			for Index, Val in pairs(CmdbloxListFrame:GetChildren()) do 
				Val.Visible = false
			end

			CmdbloxList.Visible = true
		end,

		SetCmdbloxUIVisibility = function(Val)
			CmdbloxMFrame.Visible = Val
		end
	}

	return CmdbloxT
end
