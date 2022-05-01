local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local s = VLib:Window("Warrior Hub", "Booga Booga", "W")
getgenv().notifColor = Color3.fromRGB(80, 80, 80)


-- Main


local Main = s:Tab("Main")
Main:Label("Welcome to WarriorHub")
Main:Label("Credits: Vep UI dev, all included scripts devs and me")
Main:Label("Toggle GUI with RCTRL")
Main:Button("Destroy GUI",function()
    game:GetService("CoreGui").Library:Destroy()
end)
Main:Colorpicker("Notification Color",Color3.fromRGB(80, 80, 80),function(t)
    getgenv().notifColor = t
end)


-- Movement


getgenv().GJumpPower = 50
Movement:Button("Infinity Jump",function()
    local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
    function Action(Object, Function) if Object ~= nil then Function(Object); end end
    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, getgenv().GJumpPower, 0);
                    end)
                end
            end)
        end
    end)
end)
Movement:Slider("Jump Power", 0,300,50, function(t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
    getgenv().GJumpPower = t
end)
Movement:Slider("Walkspeed", 0,300,16, function(t)
    game.Players.LocalPlayer.Character.Humanoid.Waklspeed = t
end)
Movement:Slider("Gravity", 0,300,192.2, function(t)
    game.Players.LocalPlayer.Character.Humanoid.Gravity = t
end)


--Render


local Render = s:Tab("Render")
Render:Slider("Fov", 0,120,70, function(t)
    game:GetService'Workspace'.Camera.FieldOfView = t
end)


-- Other Scripts

local OS = s:Tab("Other Scripts")
OS:Button("R15 and R6 Fling",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/sPGjz7HK'))()
end)
OS:Button("Infinity Yield",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
OS:Button("Telekinesis",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/icbjxDsM'))()
end)
OS:Button("AmongUs/Pickaxe/Crusified",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/D7i5YxM4'))()
end)
OS:Button("UnnamedESP",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
end)