--[[ 
  ABT V1's Black Hat Special
  Kali Terminal Edition
  Galaxy Purple Edition
]]

local GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TitleBar = Instance.new("Frame")
local TitleText = Instance.new("TextLabel")
local CloseBtn = Instance.new("TextButton")
local Terminal = Instance.new("ScrollingFrame")
local Output = Instance.new("TextLabel")
local InputBox = Instance.new("TextBox")
local ExecuteBtn = Instance.new("TextButton")
local TabHolder = Instance.new("Frame")
local ESPTab = Instance.new("TextButton")
local AimbotTab = Instance.new("TextButton")
local MiscTab = Instance.new("TextButton")

-- Properties
GUI.Name = "ABT_V1_GUI"
GUI.Parent = game.CoreGui
GUI.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = GUI
Main.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Main.BorderColor3 = Color3.fromRGB(106, 0, 255)
Main.BorderSizePixel = 2
Main.Position = UDim2.new(0.3, 0, 0.2, 0)
Main.Size = UDim2.new(0, 700, 0, 500)
Main.Active = true
Main.Draggable = true

TitleBar.Name = "TitleBar"
TitleBar.Parent = Main
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 30)

TitleText.Name = "TitleText"
TitleText.Parent = TitleBar
TitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0, 5, 0, 0)
TitleText.Size = UDim2.new(0, 200, 1, 0)
TitleText.Font = Enum.Font.Code
TitleText.Text = "root@kali:~# ABT_V1_GALAXY"
TitleText.TextColor3 = Color3.fromRGB(106, 0, 255)
TitleText.TextXAlignment = Enum.TextXAlignment.Left

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = TitleBar
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
CloseBtn.Position = UDim2.new(1, -25, 0, 5)
CloseBtn.Size = UDim2.new(0, 20, 0, 20)
CloseBtn.Font = Enum.Font.Code
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.TextSize = 14
CloseBtn.MouseButton1Click:Connect(function() GUI:Destroy() end)

local asciiArt = [[
    ╔══════════════════════════════════════╗
    ║   ░█████╗░██████╗░████████╗██╗░░░██╗░║
    ║   ██╔══██╗██╔══██╗╚══██╔══╝██║░░░██║░║
    ║   ███████║██████╦╝░░░██║░░░██║░░░██║░║
    ║   ██╔══██║██╔══██╗░░░██║░░░██║░░░██║░║
    ║   ██║░░██║██████╦╝░░░██║░░░╚██████╔╝░║
    ║   ╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░░╚═════╝░░║
    ║         [ BLACK HAT EDITION ]         ║
    ╚══════════════════════════════════════╝
]]

local AsciiLabel = Instance.new("TextLabel")
AsciiLabel.Parent = Main
AsciiLabel.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
AsciiLabel.BorderColor3 = Color3.fromRGB(106, 0, 255)
AsciiLabel.Position = UDim2.new(0, 10, 0, 40)
AsciiLabel.Size = UDim2.new(0, 680, 0, 120)
AsciiLabel.Font = Enum.Font.Code
AsciiLabel.Text = asciiArt
AsciiLabel.TextColor3 = Color3.fromRGB(170, 0, 255)
AsciiLabel.TextSize = 14
AsciiLabel.TextXAlignment = Enum.TextXAlignment.Left

TabHolder.Name = "TabHolder"
TabHolder.Parent = Main
TabHolder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TabHolder.BorderColor3 = Color3.fromRGB(106, 0, 255)
TabHolder.Position = UDim2.new(0, 10, 0, 170)
TabHolder.Size = UDim2.new(0, 680, 0, 30)

ESPTab.Name = "ESPTab"
ESPTab.Parent = TabHolder
ESPTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ESPTab.Position = UDim2.new(0, 5, 0, 5)
ESPTab.Size = UDim2.new(0, 100, 0, 20)
ESPTab.Font = Enum.Font.Code
ESPTab.Text = "[ ESP ]"
ESPTab.TextColor3 = Color3.fromRGB(255, 255, 255)

AimbotTab.Name = "AimbotTab"
AimbotTab.Parent = TabHolder
AimbotTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
AimbotTab.Position = UDim2.new(0, 110, 0, 5)
AimbotTab.Size = UDim2.new(0, 100, 0, 20)
AimbotTab.Font = Enum.Font.Code
AimbotTab.Text = "[ AIMBOT ]"
AimbotTab.TextColor3 = Color3.fromRGB(255, 255, 255)

MiscTab.Name = "MiscTab"
MiscTab.Parent = TabHolder
MiscTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MiscTab.Position = UDim2.new(0, 215, 0, 5)
MiscTab.Size = UDim2.new(0, 100, 0, 20)
MiscTab.Font = Enum.Font.Code
MiscTab.Text = "[ MISC ]"
MiscTab.TextColor3 = Color3.fromRGB(255, 255, 255)

Terminal.Name = "Terminal"
Terminal.Parent = Main
Terminal.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Terminal.BorderColor3 = Color3.fromRGB(106, 0, 255)
Terminal.Position = UDim2.new(0, 10, 0, 210)
Terminal.Size = UDim2.new(0, 680, 0, 200)
Terminal.CanvasSize = UDim2.new(0, 0, 0, 0)
Terminal.ScrollBarThickness = 10
Terminal.ScrollBarImageColor3 = Color3.fromRGB(106, 0, 255)

Output.Name = "Output"
Output.Parent = Terminal
Output.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Output.BackgroundTransparency = 1
Output.Size = UDim2.new(1, 0, 0, 0)
Output.Font = Enum.Font.Code
Output.Text = "root@kali:~# System initialized...\nroot@kali:~# Loading modules...\nroot@kali:~# Galaxy cheat ready.\n"
Output.TextColor3 = Color3.fromRGB(0, 255, 0)
Output.TextXAlignment = Enum.TextXAlignment.Left
Output.TextYAlignment = Enum.TextYAlignment.Top
Output.TextWrapped = true
Output.RichText = true

InputBox.Name = "InputBox"
InputBox.Parent = Main
InputBox.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
InputBox.BorderColor3 = Color3.fromRGB(106, 0, 255)
InputBox.Position = UDim2.new(0, 10, 0, 420)
InputBox.Size = UDim2.new(0, 590, 0, 30)
InputBox.Font = Enum.Font.Code
InputBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
InputBox.PlaceholderText = "Enter command..."
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(0, 255, 0)
InputBox.TextSize = 14
InputBox.ClearTextOnFocus = false

ExecuteBtn.Name = "ExecuteBtn"
ExecuteBtn.Parent = Main
ExecuteBtn.BackgroundColor3 = Color3.fromRGB(106, 0, 255)
ExecuteBtn.BorderColor3 = Color3.fromRGB(255, 255, 255)
ExecuteBtn.Position = UDim2.new(0, 610, 0, 420)
ExecuteBtn.Size = UDim2.new(0, 80, 0, 30)
ExecuteBtn.Font = Enum.Font.Code
ExecuteBtn.Text = "EXEC"
ExecuteBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteBtn.TextSize = 14

-- Function to update terminal output
local function UpdateOutput(text)
    Output.Text = Output.Text .. "\n" .. text
    Terminal.CanvasSize = UDim2.new(0, 0, 0, Output.TextBounds.Y + 20)
    Terminal.CanvasPosition = Vector2.new(0, Terminal.CanvasSize.Y.Offset)
end

-- Execute button functionality
ExecuteBtn.MouseButton1Click:Connect(function()
    local cmd = InputBox.Text
    if cmd ~= "" then
        UpdateOutput("root@kali:~# " .. cmd)
        
        -- Basic command handling
        if cmd:lower() == "help" then
            UpdateOutput("Available commands: help, clear, esp, aimbot, fly, speed")
        elseif cmd:lower() == "clear" then
            Output.Text = "root@kali:~# Terminal cleared."
            Terminal.CanvasSize = UDim2.new(0, 0, 0, Output.TextBounds.Y + 20)
        elseif cmd:lower() == "esp" then
            UpdateOutput("[*] ESP toggled (simulated)")
        elseif cmd:lower() == "aimbot" then
            UpdateOutput("[*] Aimbot toggled (simulated)")
        elseif cmd:lower() == "fly" then
            UpdateOutput("[*] Fly mode activated (simulated)")
        elseif cmd:lower() == "speed" then
            UpdateOutput("[*] Speed hack set to 50 (simulated)")
        else
            UpdateOutput("Command not recognized: " .. cmd)
        end
        
        InputBox.Text = ""
    end
end)

-- Tab functionality
ESPTab.MouseButton1Click:Connect(function()
    ESPTab.BackgroundColor3 = Color3.fromRGB(106, 0, 255)
    AimbotTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    MiscTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    UpdateOutput("[*] ESP Tab Selected")
end)

AimbotTab.MouseButton1Click:Connect(function()
    ESPTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    AimbotTab.BackgroundColor3 = Color3.fromRGB(106, 0, 255)
    MiscTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    UpdateOutput("[*] Aimbot Tab Selected")
end)

MiscTab.MouseButton1Click:Connect(function()
    ESPTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    AimbotTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    MiscTab.BackgroundColor3 = Color3.fromRGB(106, 0, 255)
    UpdateOutput("[*] Misc Tab Selected")
end)

-- Enter key in input box
InputBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        ExecuteBtn.MouseButton1Click:Fire()
    end
end)

UpdateOutput("System ready. Type 'help' for commands.")
