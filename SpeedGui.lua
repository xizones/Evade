gameName = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://games.roblox.com/v1/games?universeIds=3647333358"))

print(gameName.data[1].name)
getgenv().WalkSpeed = 12
getgenv().JumpPower = 3

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local WS = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local JP = Instance.new("TextLabel")
local TextBox_2 = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.354872316, 0, 0.285185188, 0)
Frame.Size = UDim2.new(0, 277, 0, 256)


local Drag = Frame
gsCoreGui = game:GetService("CoreGui")
gsTween = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		local dragTime = 0.04
		local SmoothDrag = {}
		SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		local dragSmoothFunction = gsTween:Create(Drag, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
		dragSmoothFunction:Play()
	end
	Drag.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Drag.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	Drag.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging and Drag.Size then
			update(input)
		end
	end)


UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 277, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = gameName.data[1].name
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 40.000
TextLabel.TextWrapped = true

WS.Name = "WS"
WS.Parent = Frame
WS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WS.BackgroundTransparency = 1.000
WS.BorderSizePixel = 0
WS.Position = UDim2.new(0.0425531901, 0, 0.1953125, 0)
WS.Size = UDim2.new(0, 184, 0, 50)
WS.Font = Enum.Font.SourceSansBold
WS.Text = "WalkSpeed"
WS.TextColor3 = Color3.fromRGB(255, 255, 255)
WS.TextScaled = true
WS.TextSize = 14.000
WS.TextWrapped = true
WS.TextXAlignment = Enum.TextXAlignment.Left

TextBox.Parent = WS
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(79, 79, 79)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(1.0380435, 0, 0, 0)
TextBox.Size = UDim2.new(0, 62, 0, 50)
TextBox.Font = Enum.Font.SourceSansBold
TextBox.Text = "12"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = TextBox

JP.Name = "JP"
JP.Parent = Frame
JP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JP.BackgroundTransparency = 1.000
JP.BorderSizePixel = 0
JP.Position = UDim2.new(0.0425531901, 0, 0.43359375, 0)
JP.Size = UDim2.new(0, 184, 0, 50)
JP.Font = Enum.Font.SourceSansBold
JP.Text = "JumpPower"
JP.TextColor3 = Color3.fromRGB(255, 255, 255)
JP.TextScaled = true
JP.TextSize = 14.000
JP.TextWrapped = true
JP.TextXAlignment = Enum.TextXAlignment.Left

TextBox_2.Parent = JP
TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.BackgroundTransparency = 1.000
TextBox_2.BorderColor3 = Color3.fromRGB(79, 79, 79)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(1.0380435, 0, 0, 0)
TextBox_2.Size = UDim2.new(0, 62, 0, 50)
TextBox_2.Font = Enum.Font.SourceSansBold
TextBox_2.Text = "3"
TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 14.000
TextBox_2.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = TextBox_2

-- Scripts:

local function WJJGG_fake_script() -- TextBox.LocalScript 
	local script = Instance.new('LocalScript', TextBox)

    while wait(1) do
        if tonumber(TextBox.Text) then
            getgenv().WalkSpeed = tonumber(TextBox.Text)
        end
    end
	
end
coroutine.wrap(WJJGG_fake_script)()
local function IIUG_fake_script() -- TextBox_2.LocalScript 
	local script = Instance.new('LocalScript', TextBox_2)
    while wait(1) do
        if tonumber(TextBox_2.Text) then
            getgenv().JumpPower = tonumber(TextBox_2.Text)
        end
    end
	
	
end
coroutine.wrap(IIUG_fake_script)()
local old = nil
old =  hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
    if getnamecallmethod() == "InvokeServer" then
       return  getgenv().WalkSpeed, getgenv().JumpPower
    end
    return old(self, ...)
end))
