if game.Players.LocalPlayer.PlayerGui:FindFirstChild("EMOTEPLAYER") then
    game.Players.LocalPlayer.PlayerGui:FindFirstChild("EMOTEPLAYER"):Destroy()
end

local player = game.Players.LocalPlayer
local gui = player.PlayerGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = gui
screenGui.Name = "EMOTEPLAYER"
screenGui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 20)
frame.Position = UDim2.new(0.5, -100, 0.9, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Parent = screenGui

local ID1 = Instance.new("TextBox")
ID1.Size = UDim2.new(0, 150, 0, 20)
ID1.Position = UDim2.new(0, 25, 0, 40)
ID1.PlaceholderText = "Enter Emote ID"
ID1.Parent = screenGui

local ID2 = Instance.new("TextBox")
ID2.Size = UDim2.new(0, 150, 0, 20)
ID2.Position = UDim2.new(0, 25, 0, 55)
ID2.PlaceholderText = "1"
ID2.Parent = screenGui

local ID3 = Instance.new("TextBox")
ID3.Size = UDim2.new(0, 150, 0, 20)
ID3.Position = UDim2.new(0, 25, 0, 65)
ID3.PlaceholderText = "2"
ID3.Parent = screenGui

local ID4 = Instance.new("TextBox")
ID4.Size = UDim2.new(0, 150, 0, 20)
ID4.Position = UDim2.new(0, 25, 0, 75)
ID4.PlaceholderText = "speed"
ID4.Parent = screenGui

local playButton = Instance.new("TextButton")
playButton.Size = UDim2.new(0, 50, 0, 20)
playButton.Position = UDim2.new(0, 180, 0, 40)
playButton.Text = "Play"
playButton.Parent = screenGui

local Anim = Instance.new("Animation")

playButton.MouseButton1Click:Connect(function()
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
if playButton.Text == "Play" then
      Anim.AnimationId = "rbxassetid://" .. tostring(ID1.Text)
      track:Play(ID2.Text,ID3.Text,ID4.Text)
      playButton.Text = "Stop"
elseif playButton.Text == "Stop" then
      track:Stop()
      playButton.Text = "Play"
    end
end)
