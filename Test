-- UNIVERSAL UI SCRIPT FOR KRNL (Zero Two Theme) -- Fully Touchscreen Friendly, Animated, Clean Dark Style

local player = game.Players.LocalPlayer local gui = Instance.new("ScreenGui") gui.Name = "DarlingHubUI" gui.ResetOnSpawn = false gui.Parent = game.CoreGui

-- UI Colors local bgColor = Color3.fromRGB(0, 0, 0) local whiteText = Color3.fromRGB(255, 255, 255) local redText = Color3.fromRGB(255, 0, 0)

-- Utility: Tweening local TweenService = game:GetService("TweenService") local function tween(obj, props, time) local t = TweenService:Create(obj, TweenInfo.new(time, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), props) t:Play() end

-- MAIN FRAME local mainFrame = Instance.new("Frame") mainFrame.Size = UDim2.new(0, 250, 0, 150) mainFrame.Position = UDim2.new(0.5, -125, 0.4, 0) mainFrame.BackgroundColor3 = bgColor mainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0) mainFrame.BorderSizePixel = 2 mainFrame.Visible = true mainFrame.Parent = gui

-- TITLE local title = Instance.new("TextLabel") title.Text = "DARLING HUB" title.Font = Enum.Font.GothamBold title.TextColor3 = whiteText title.BackgroundTransparency = 1 title.TextSize = 18 title.Size = UDim2.new(1, 0, 0, 25) title.Parent = mainFrame

-- WELCOME local welcome = Instance.new("TextLabel") welcome.Text = "WELCOME DARLING" welcome.Font = Enum.Font.Gotham title.TextColor3 = whiteText welcome.BackgroundTransparency = 1 welcome.TextSize = 16 welcome.Position = UDim2.new(0, 0, 0, 25) welcome.Size = UDim2.new(1, 0, 0, 20) welcome.Parent = mainFrame

-- BUTTONS local function createButton(text, yPos, callback) local btn = Instance.new("TextButton") btn.Text = text btn.Font = Enum.Font.Gotham btn.TextColor3 = whiteText btn.BackgroundColor3 = bgColor btn.BorderColor3 = Color3.fromRGB(0, 0, 0) btn.TextSize = 16 btn.Size = UDim2.new(1, -20, 0, 30) btn.Position = UDim2.new(0, 10, 0, yPos) btn.AutoButtonColor = true btn.Parent = mainFrame btn.MouseButton1Click:Connect(callback) end

-- Detail UI local detailFrame = mainFrame:Clone() detailFrame.Visible = false detailFrame.Parent = gui

for _, child in ipairs(detailFrame:GetChildren()) do if child:IsA("TextLabel") then child.Text = "PartName" end end

local detailText = Instance.new("TextLabel") detailText.Text = "workspace.Model.Part" detailText.Font = Enum.Font.Gotham detailText.TextColor3 = redText detailText.BackgroundTransparency = 1 detailText.TextSize = 16 detailText.Position = UDim2.new(0, 0, 0.7, 0) detailText.Size = UDim2.new(1, 0, 0, 30) detailText.Parent = detailFrame

-- Toggle to Detail UI createButton("PartName [·]", 55, function() tween(mainFrame, {Position = UDim2.new(0.5, -125, 1.2, 0)}, 0.3) wait(0.3) mainFrame.Visible = false detailFrame.Position = UDim2.new(0.5, -125, -0.5, 0) detailFrame.Visible = true tween(detailFrame, {Position = UDim2.new(0.5, -125, 0.4, 0)}, 0.3) end)

-- Noclip Placeholder createButton("Noclip [·]", 90, function() print("Noclip function placeholder") end)

-- Close Button (X) local closeBtn = Instance.new("ImageButton") closeBtn.Size = UDim2.new(0, 24, 0, 24) closeBtn.Position = UDim2.new(0, -8, 0, -8) closeBtn.BackgroundTransparency = 1 closeBtn.Image = "rbxassetid://7072725342" -- X icon image closeBtn.Parent = mainFrame

-- Icon Button (Zero Two Chibi) local iconBtn = Instance.new("ImageButton") iconBtn.Size = UDim2.new(0, 60, 0, 60) iconBtn.Position = UDim2.new(0, 10, 1, -70) iconBtn.BackgroundTransparency = 1 iconBtn.Image = "rbxasset://textures/zero_two_chibi.png" iconBtn.Visible = false iconBtn.Parent = gui

closeBtn.MouseButton1Click:Connect(function() tween(mainFrame, {Position = UDim2.new(0.5, -125, 1.2, 0)}, 0.3) wait(0.3) mainFrame.Visible = false iconBtn.Visible = true end)

iconBtn.MouseButton1Click:Connect(function() iconBtn.Visible = false mainFrame.Position = UDim2.new(0.5, -125, -0.5, 0) mainFrame.Visible = true tween(mainFrame, {Position = UDim2.new(0.5, -125, 0.4, 0)}, 0.3) end)

-- Zero Two Laughing Image (Top Right) local image = Instance.new("ImageLabel") image.Size = UDim2.new(0, 60, 0, 60) image.Position = UDim2.new(1, -70, 0, 10) image.BackgroundTransparency = 1 image.Image = "rbxasset://textures/zero_two_transparent.png" image.Parent = mainFrame

