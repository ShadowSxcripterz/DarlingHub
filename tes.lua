-- Darling Hub UI (Zero Two Theme) [Universal] --
-- Fully touchscreen + smooth transitions --

local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "DarlingHubUI"
ScreenGui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 400, 0, 250)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -125)
mainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Visible = true
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", mainFrame)
UICorner.CornerRadius = UDim.new(0, 10)

local title = Instance.new("TextLabel", mainFrame)
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "Darling Hub"
title.Font = Enum.Font.GothamBold
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true

local partButton = Instance.new("TextButton", mainFrame)
partButton.Size = UDim2.new(0.8, 0, 0, 40)
partButton.Position = UDim2.new(0.1, 0, 0.3, 0)
partButton.Text = "Part Name"
partButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
partButton.TextColor3 = Color3.fromRGB(255, 255, 255)
partButton.Font = Enum.Font.Gotham
partButton.TextScaled = true
Instance.new("UICorner", partButton)

local detailText = Instance.new("TextLabel", mainFrame)
detailText.Position = UDim2.new(0.1, 0, 0.55, 0)
detailText.Size = UDim2.new(0.8, 0, 0, 40)
detailText.Text = "workspace.Model.Part"
detailText.Font = Enum.Font.Gotham
detailText.TextColor3 = Color3.fromRGB(255, 255, 255)
detailText.TextScaled = true
detailText.BackgroundTransparency = 1

local closeBtn = Instance.new("ImageButton", mainFrame)
closeBtn.Size = UDim2.new(0, 24, 0, 24)
closeBtn.Position = UDim2.new(0, 8, 0, 8)
closeBtn.BackgroundTransparency = 1
closeBtn.Image = "rbxassetid://3926305904" -- built-in X icon (white)

local iconZeroTwo = Instance.new("ImageButton", ScreenGui)
iconZeroTwo.Size = UDim2.new(0, 50, 0, 50)
iconZeroTwo.Position = UDim2.new(0, 10, 1, -60)
iconZeroTwo.BackgroundTransparency = 1
iconZeroTwo.Visible = false
-- No icon image assigned (removed on request)

-- Smooth transitions
local TweenService = game:GetService("TweenService")

local function fadeOutUI()
	TweenService:Create(mainFrame, TweenInfo.new(0.3), {Position = UDim2.new(0.5, -200, 1.5, 0)}):Play()
	task.wait(0.3)
	mainFrame.Visible = false
	iconZeroTwo.Visible = true
end

local function fadeInUI()
	mainFrame.Position = UDim2.new(0.5, -200, 1.5, 0)
	mainFrame.Visible = true
	iconZeroTwo.Visible = false
	TweenService:Create(mainFrame, TweenInfo.new(0.3), {Position = UDim2.new(0.5, -200, 0.5, -125)}):Play()
end

closeBtn.MouseButton1Click:Connect(fadeOutUI)
iconZeroTwo.MouseButton1Click:Connect(fadeInUI)

-- Touchscreen ready
partButton.AutoButtonColor = true
closeBtn.AutoButtonColor = true
iconZeroTwo.AutoButtonColor = true
