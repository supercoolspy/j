local Gui = Instance.new("ScreenGui")
Gui.Parent = game.Players.LocalPlayer.PlayerGui
local Frame = Instance.new("Frame")
Frame.Parent = Gui
Frame.Position = UDim2.new(0.887, 0, 0.204, 0)
Frame.Size = UDim2.new(0, 132, 0, 230)
local TeamerChecker = Instance.new("TextButton")
TeamerChecker.Text = "Send System Checking for teamer message"
TeamerChecker.TextColor3 = Color3.new(0, 0.666667, 1)
TeamerChecker.TextScaled = true
TeamerChecker.Position = UDim2.new(0.045, 0, 0, 0)
TeamerChecker.Size = UDim2.new(0, 120 ,0, 50)
TeamerChecker.BackgroundTransparency = 1
TeamerChecker.BorderColor3 = Color3.new(0, 170, 255)
TeamerChecker.Parent = Frame
local Teamer = Instance.new("TextButton")
Teamer.Text = "Send System That teamer was found"
Teamer.TextScaled = true
Teamer.Position = UDim2.new(0.045, 0 , 0.243, 0)
Teamer.Size = UDim2.new(0, 120 ,0, 50)
Teamer.BackgroundTransparency = 1
Teamer.TextColor3 = Color3.new(1, 0, 0)
Teamer.BorderColor3 = Color3.new(0, 170, 255)
Teamer.Parent = Frame
local ggui = Instance.new("TextButton")
ggui.Text = "Open Exploit Gui (Not My script)"
ggui.TextScaled = true
ggui.Position = UDim2.new(0.053, 0, 0.613, 0)
ggui.Size = UDim2.new(0, 120 ,0, 50)
ggui.BackgroundTransparency = 1
ggui.TextColor3 = Color3.new(0.666667, 1, 0)
ggui.BorderColor3 = Color3.new(0, 170, 255)
ggui.Parent = Frame

TeamerChecker.MouseButton1Click:Connect(function(player)
	local args = {
		[1] = "####                                                                                                                                                 System: Searching For Teamers",
		[2] = "normalchat"
	}

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)

Teamer.MouseButton1Click:Connect(function(player)
	local args = {
		[1] = "######                                                                                                                                                 System: Teamers Found Eliminating",
		[2] = "normalchat"
	}

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)

ggui.MouseButton1Click:Connect(function(player)
	loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
end)
