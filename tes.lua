-- Darling Hub UI (Versi Update)
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

-- UI utama
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "DarlingHub"
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 300, 0, 200)
MainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BackgroundTransparency = 0.3
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true

-- Ujung kiri atas tombol X
local closeBtn = Instance.new("TextButton", MainFrame)
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(0, 5, 0, 5)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1,1,1)
closeBtn.BackgroundTransparency = 1
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 18

-- Icon Zero Two
local iconBtn = Instance.new("TextButton", ScreenGui)
iconBtn.Size = UDim2.new(0, 50, 0, 50)
iconBtn.Position = UDim2.new(0, 20, 0, 20)
iconBtn.Text = "Z"
iconBtn.TextColor3 = Color3.fromRGB(255, 105, 180) -- Pink Zero Two
iconBtn.TextSize = 26
iconBtn.Font = Enum.Font.GothamBlack
iconBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
iconBtn.Visible = false
iconBtn.BorderSizePixel = 0

-- Tombol fitur
local features = {"Fly", "No Clip", "Part Name"}
for i, name in ipairs(features) do
	local btn = Instance.new("TextButton", MainFrame)
	btn.Size = UDim2.new(0, 260, 0, 30)
	btn.Position = UDim2.new(0, 20, 0, 40 + (i - 1) * 40)
	btn.Text = name
	btn.TextColor3 = Color3.new(1,1,1)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 14
	btn.BackgroundTransparency = 1
	btn.BorderSizePixel = 2
	btn.BorderColor3 = Color3.fromRGB(255, 0, 0)
end

-- Transisi ke icon
local function hideMain()
	local tween = TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -150, 1, 100)})
	tween:Play()
	tween.Completed:Wait()
	MainFrame.Visible = false
	iconBtn.Visible = true
end

-- Transisi ke UI utama
local function showMain()
	MainFrame.Visible = true
	local tween = TweenService:Create(MainFrame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -150, 0.5, -100)})
	tween:Play()
	iconBtn.Visible = false
end

closeBtn.MouseButton1Click:Connect(hideMain)
iconBtn.MouseButton1Click:Connect(showMain)

-- Drag iconBtn (touch-friendly)
local dragging, dragInput, dragStart, startPos
local function dragify(gui)
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)
end

dragify(iconBtn)
