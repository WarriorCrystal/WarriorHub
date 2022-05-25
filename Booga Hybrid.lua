local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local inviteModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
local s = VLib:Window("Warrior Hub", "Booga Hybrid", "W")
getgenv().notifColor = Color3.fromRGB(80, 80, 80)


--Main


local Main = s:Tab("Main")
Main:Label("Welcome to WarriorHub")
Main:Label("Toggle GUI with RCTRL")
Main:Button("Destroy GUI",function()
    game:GetService("CoreGui").Library:Destroy()
end)
Main:Button("Join Discord",function()
    inviteModule.Join("https://discord.gg/EdHhqP7TzZ")
end)
Main:Colorpicker("Notification Color",Color3.fromRGB(80, 80, 80),function(t)
    getgenv().notifColor = t
end)
Main:Button("Credits",function()
    Notification:Notify(
        {Title = "Credits", Description = "Vinyxu for Discord Prompt, BocusLuke for Notifications, Engo/Future and me lol"},
        {OutlineColor = getgenv().notifColor,Time = 5, Type = "default"}
    )
end)


--Combat


local Combat = s:Tab("Combat")
getgenv().killing = false
--thx to engo future for isAlive and canBeTargeted functions :) i'm too lazy to make something like this lol
local function isAlive(plr)
    local plr = plr or game:GetService("Players").LocalPlayer
    if plr and plr.Character and ((plr.Character:FindFirstChild("Humanoid")) and (plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0) and (plr.Character:FindFirstChild("HumanoidRootPart")) and (plr.Character:FindFirstChild("Head"))) then
        return true
    end
end
local function canBeTargeted(plr, doTeamCheck) 
    if isAlive(plr) and plr ~= game:GetService("Players").LocalPlayer and (doTeamCheck and plr.Team ~= game:GetService("Players").LocalPlayer.Team or not doTeamCheck) and plr.Name ~= "valensoysantijajaja" and plr.Name ~= "SusLordCV" then 
        return true
    end
    return false
end
local function useAura()
    spawn(function()
        while getgenv().killing == true and wait(0.1) do
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if isAlive() and canBeTargeted(v, false) and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude < 20 then
                    local attackTable = {
                        [1] = game:GetService("Workspace")[v.Name].LeftUpperLeg,
                    }
                    game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(attackTable)
                end
            end
        end
    end)
end
Combat:Toggle("Kill Aura",function(t)
    getgenv().killing = t
    useAura()
end)
getgenv().HealItem = nil
getgenv().HealthCheck = false
getgenv().Health = nil
local function checkHealth()
    spawn(function()
        while getgenv().HealthCheck == true and wait() do
            getgenv().Health = game:GetService("Players").LocalPlayer.Character.Humanoid.Health
            --print(Health)
        end
    end)
end
local function heal()
    spawn(function()
        while wait(1) and getgenv().HealthCheck == true do
            if getgenv().Health ~= 100 and getgenv().HealItem ~= nil then
                repeat
                    game:GetService("ReplicatedStorage").Events.Consume:FireServer(getgenv().HealItem)
                    wait(0.15)
                until getgenv().Health == 100
            end
        end
    end)
end
Combat:Toggle("Auto Heal",function(t)
    getgenv().HealthCheck = t
    checkHealth()
    heal()
end)
Combat:Textbox("Auto Heal Item", true,function(t)
    getgenv().HealItem = t
    Notification:Notify(
        {Title = "Auto Heal", Description = "Item set to ".. t},
        {OutlineColor = getgenv().notifColor,Time = 3, Type = "default"}
    )
end)


--Movement


local Movement = s:Tab("Movement")
getgenv().GJumpPower = 50
Movement:Button("Infinity Jump",function()
    local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
    local function Action(Object, Function) if Object ~= nil then Function(Object); end end
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


--Misc


local Misc = s:Tab("Misc")
getgenv().abKey = "v"
getgenv().breaking = false
getgenv().abState = false
Misc:Toggle("Auto Break (Aim and Hold Key)",function(t)
    getgenv().abState = t
    spawn(function()
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == getgenv().abKey and getgenv().abState then
                getgenv().breaking = true
                while getgenv().breaking and wait(0.01) do
                    local part = game:GetService("Players").LocalPlayer:GetMouse().Target
                    local two = {part,part,part,part}
                    game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(two)
                end
            end
        end)
        mouse.KeyUp:connect(function(key)
            if key == getgenv().abKey then
                getgenv().breaking = false
            end
        end)
    end)
end)
Misc:Textbox("Auto Break Key", true,function(t)
    getgenv().abKey = t:lower()
    Notification:Notify(
        {Title = "Auto Break", Description = "Key set to ".. t},
        {OutlineColor = getgenv().notifColor,Time = 3, Type = "default"}
    )
end)
getgenv().autoPickUpPicking = false
local function useAutoPickUp()
    spawn(function()
        while getgenv().autoPickUpPicking == true do
            for _, v in pairs(game:GetService("Workspace").Items:GetChildren()) do
                if v ~= nil and v.ClassName == "Model" then
                    if v.PrimaryPart ~= nil and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 20 then
                        game:GetService("ReplicatedStorage").Events.Pickup:InvokeServer(v)
                    end
                elseif v ~= nil and v.ClassName == "Part" then
                    if (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude < 20 then
                        game:GetService("ReplicatedStorage").Events.Pickup:InvokeServer(v)
                    end
                end
            end
            game:GetService("RunService").RenderStepped:wait()
        end
    end)
end
Misc:Toggle("Auto Pick Up",function(t)
    getgenv().autoPickUpPicking = t
    useAutoPickUp()
end)
getgenv().adItem = nil
getgenv().adKey = "f"
getgenv().dropping = false
getgenv().autoDropState = false
Misc:Toggle("Auto Drop (Hold Key)",function(t)
    getgenv().autoDropState = t
    spawn(function()
        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == getgenv().adKey and getgenv().autoDropState then
                getgenv().dropping = true
                while getgenv().dropping and wait() do
                    local asd = getgenv().adItem
                    game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(asd)
                end
            end
        end)
        mouse.KeyUp:connect(function(key)
            if key == getgenv().adKey then
                getgenv().dropping = false
            end
        end)
    end)
end)
Misc:Textbox("Auto Drop Item", true, function(t)
    getgenv().adItem = t
    Notification:Notify(
        {Title = "Auto Drop", Description = "Item set to ".. t},
        {OutlineColor = getgenv().notifColor,Time = 3, Type = "default"}
    )
end)
Misc:Textbox("Auto Drop Key", true, function(t)
    getgenv().adKey = t
    Notification:Notify(
        {Title = "Auto Drop", Description = "Key set to ".. t},
        {OutlineColor = getgenv().notifColor,Time = 3, Type = "default"}
    )
end)
getgenv().EatItem = nil
getgenv().HungerCheck = false
getgenv().Hunger = nil
getgenv().EatUnderSlider = 80
getgenv().EatUnder = getgenv().EatUnderSlider .. "%"
local function checkHunger()
    spawn(function()
        while getgenv().HungerCheck == true and wait() do
            getgenv().Hunger = game:GetService("Players").LocalPlayer.PlayerGui["MainGui-Hybrid"].Panels.Stats.List.Food.NumberLabel.Text
        end
    end)
end
local function eat()
    spawn(function()
        while wait(1) and getgenv().HungerCheck == true do
            if getgenv().Hunger <= getgenv().EatUnder and getgenv().EatItem ~= nil then
                repeat
                    game:GetService("ReplicatedStorage").Events.Consume:FireServer(getgenv().EatItem)
                    wait(0.15)
                until getgenv().Hunger >= getgenv().EatUnder
            end
        end
    end)
end
Misc:Toggle("Auto Eat",function(t)
    getgenv().HungerCheck = t
    checkHunger()
    eat()
end)
Misc:Textbox("Auto Eat Item", true,function(t)
    getgenv().EatItem = t
    Notification:Notify(
        {Title = "Auto Eat", Description = "Item set to ".. t},
        {OutlineColor = getgenv().notifColor,Time = 3, Type = "default"}
    )
end)
Misc:Slider("Auto Eat Hunger",1,100,80,function(t)
    getgenv().EatUnderSlider = t
end)
Misc:Button("Infinity Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


--Render


local Render = s:Tab("Render")
Render:Slider("Fov", 0,120,70, function(t)
    game:GetService'Workspace'.Camera.FieldOfView = t
end)
Render:Button("UnnamedESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
end)
