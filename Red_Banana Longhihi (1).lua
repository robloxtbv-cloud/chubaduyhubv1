-- KEY SYSTEM
local correctKey = "TBV-KEY-2026"

-- GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local Check = Instance.new("TextButton")
local Status = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0,300,0,170)
Frame.Position = UDim2.new(0.5,-150,0.5,-85)
Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)

Title.Parent = Frame
Title.Size = UDim2.new(1,0,0,40)
Title.Text = "TBV KEY SYSTEM"
Title.TextColor3 = Color3.new(1,1,1)
Title.BackgroundTransparency = 1
Title.TextScaled = true

KeyBox.Parent = Frame
KeyBox.Size = UDim2.new(0.8,0,0,35)
KeyBox.Position = UDim2.new(0.1,0,0.35,0)
KeyBox.PlaceholderText = "Enter Key..."
KeyBox.Text = ""
KeyBox.BackgroundColor3 = Color3.fromRGB(40,40,40)
KeyBox.TextColor3 = Color3.new(1,1,1)

Check.Parent = Frame
Check.Size = UDim2.new(0.6,0,0,35)
Check.Position = UDim2.new(0.2,0,0.6,0)
Check.Text = "CHECK KEY"
Check.BackgroundColor3 = Color3.fromRGB(0,170,255)
Check.TextColor3 = Color3.new(1,1,1)

Status.Parent = Frame
Status.Size = UDim2.new(1,0,0,20)
Status.Position = UDim2.new(0,0,0.85,0)
Status.Text = ""
Status.BackgroundTransparency = 1
Status.TextColor3 = Color3.new(1,1,1)

-- Animation
Frame.Size = UDim2.new(0,0,0,0)
Frame:TweenSize(UDim2.new(0,300,0,170),"Out","Back",0.6,true)

-- Check Key
Check.MouseButton1Click:Connect(function()
	if KeyBox.Text == correctKey then
		Status.Text = "Key Correct! Loading..."
		wait(1)
		
		loadstring(game:HttpGet("https://raw.githubusercontent.com/robloxtbv-cloud/chubaduyhubv1/refs/heads/main/Red_Banana%20Longhihi%20(1).lua"))()
		
		ScreenGui:Destroy()
	else
		Status.Text = "Wrong Key!"
	end
end)
