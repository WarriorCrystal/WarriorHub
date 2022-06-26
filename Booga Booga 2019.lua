local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local inviteModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
local s = VLib:Window("Warrior Hub", "Booga 2019", "W")
local playerService = game:GetService("Players")
local localPlayer = playerService.LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")
getgenv().notifColor = Color3.fromRGB(255, 0, 0)
local function notif(text, duration)
    local notifModule = getsenv(localPlayer.PlayerScripts["Local Handler"])
    notifModule.functionBank.CreateNotification(text, getgenv().notifColor, duration)
end


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
Main:Colorpicker("Notification Color",Color3.fromRGB(255, 0, 0),function(t)
    getgenv().notifColor = t
end)
Main:Button("Credits",function()
    Notification:Notify(
        {Title = "Credits", Description = "Vinyxu for Discord Prompt, Engo/Future and me lol"},
        {OutlineColor = getgenv().notifColor,Time = 5, Type = "default"}
    )
end)


--Combat


local Combat = s:Tab("Combat")
getgenv().killing = false
getgenv().killAuraRange = 20
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
        game:GetService("RunService").RenderStepped:Connect(function()
            if getgenv().killing then
                for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                    if isAlive() and canBeTargeted(v, false) and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude < getgenv().killAuraRange then
                        local attackTable = {
                            [1] = game:GetService("Workspace")[v.Name].HumanoidRootPart,
                        }
                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(attackTable)
                    end
                end
            end
        end)
    end)
end
Combat:Toggle("Kill Aura",function(t)
    getgenv().killing = t
    useAura()
end)
Combat:Slider("Kill Aura Range",1,100,20,function(t)
    getgenv().killAuraRange = t
end)
Combat:Button("Anti Kill Aura (Won't work against the WarriorHub's one)",function()
    for i,v in pairs(localPlayer.Character:GetChildren()) do
        if v.Name:find("Arm") then
            v:Destroy()
        end
    end
end)
getgenv().HealItem = nil
getgenv().HealthCheck = false
getgenv().Health = nil
local function checkHealth()
    spawn(function()
        while getgenv().HealthCheck == true and wait() do
            getgenv().Health = game:GetService("Players").LocalPlayer.Character.Humanoid.Health
        end
    end)
end
local function heal()
    spawn(function()
        while wait(0.5) and getgenv().HealthCheck == true do
            if getgenv().Health ~= 100 and getgenv().HealItem ~= nil then
                repeat
                    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(getgenv().HealItem)
                    wait(0.05)
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
    notif("Item set to " .. t, 3)
end)
Combat:Label("Only works with equipped things")
getgenv().equipment = "God"
Combat:Dropdown("Equipment",{"God", "Void", "Pink Diamond", "Emerald", "Magnetite", "Crystal", "Adurite", "Iron", "Steel"},function(t)
    getgenv().equipment = t
end)
Combat:Button("Find Players with equipment",function()
    spawn(function()
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if isAlive() and canBeTargeted(v, false) then
                for i, v2 in pairs(v.Character:GetChildren()) do
                    if v2.Name:find(getgenv().equipment) and not v2.Name:find("Bag") then
                        notif(v.Name .. " Has a " .. v2.Name, 3)
                    end
                end
            end
        end
    end)
end)


--Movement


local Movement = s:Tab("Movement")
Movement:Button("Set Speed to 18.5",function()
    localPlayer.Character.Humanoid.Walkspeed = 18.5
end)


--Misc


local Misc = s:Tab("Misc")
getgenv().crystalBridge = false
Misc:Toggle("Crystal Bridge",function(t)
    getgenv().crystalBridge = t
    spawn(function()
        if getgenv().crystalBridge then
            workspace.CrystalBridge.Transparency = 0
            workspace.CrystalBridge.CanCollide = true
        elseif not getgenv().crystalBridge then
            workspace.CrystalBridge.Transparency = 1
            workspace.CrystalBridge.CanCollide = false
        end
    end)
end)
getgenv().autoSwing = false
Misc:Toggle("Auto Swing (Breaks things around you)",function(t)
    getgenv().autoSwing = t
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if getgenv().autoSwing then
                for i,v in pairs(game:GetService("Workspace").Resources:GetChildren()) do
                    if v ~= nil and v.Name ~= "Barley" and v.Name ~= "Corn" and v.PrimaryPart ~= nil and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 10 then
                        local attackTable = {
                        [1] = v.PrimaryPart
                        }
                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(attackTable)
                    end
                end
            end
        end)
    end)
end)
getgenv().mobAura = false
Misc:Toggle("Mob Aura",function(t)
    getgenv().mobAura = t
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if getgenv().mobAura then
                for i,v in pairs(game:GetService("Workspace").Critters:GetChildren()) do
                    if v ~= nil and v.PrimaryPart ~= nil and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 10 then
                        local attackTable = {
                        [1] = v.PrimaryPart
                        }
                        game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(attackTable)
                    end
                end
            end
        end)
    end)
end)
getgenv().autoPickUpPicking = false
getgenv().autoPickUpMode = "Normal"
getgenv().aPUMWhitelist1 = nil
getgenv().aPUMWhitelist2 = nil
getgenv().aPUMWhitelist3 = nil
local function useAutoPickUp()
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if getgenv().autoPickUpPicking then
                if getgenv().autoPickUpMode == "Normal" then
                    for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v ~= nil and v:FindFirstChild("Pickup") and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude < 15 then
                            game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                        end
                    end
                else do
                    for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                        if v ~= nil and v:FindFirstChild("Pickup") and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude < 15 then
                            if v.Name == getgenv().aPUMWhitelist1 or v.Name == getgenv().aPUMWhitelist2 or v.Name == getgenv().aPUMWhitelist3 then
                                game:GetService("ReplicatedStorage").Events.Pickup:FireServer(v)
                            end
                        end
                    end
                end
                end
            end
        end)
    end)
end
Misc:Toggle("Auto Pick Up",function(t)
    getgenv().autoPickUpPicking = t
    useAutoPickUp()
end)
Misc:Dropdown("Auto Pick Up Mode",{"Normal", "Whitelist"},function(t)
    getgenv().autoPickUpMode = t
end)
Misc:Textbox("Auto Pick Up Whitelist 1", true,function(t)
    getgenv().aPUMWhitelist1 = t
    notif("Whitelisted Item " .. t, 3)
end)
Misc:Textbox("Auto Pick Up Whitelist 2", true,function(t)
    getgenv().aPUMWhitelist2 = t
    notif("Whitelisted Item " .. t, 3)
end)
Misc:Textbox("Auto Pick Up Whitelist 3", true,function(t)
    getgenv().aPUMWhitelist3 = t
    notif("Whitelisted Item " .. t, 3)
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
    notif("Item set to " .. t, 3)
end)
Misc:Textbox("Auto Drop Key", true, function(t)
    getgenv().adKey = t
    notif("Key set to " .. t, 3)
end)
getgenv().EatItem = nil
getgenv().HungerCheck = false
getgenv().Hunger = nil
getgenv().EatUnderSlider = 80
getgenv().EatUnder = getgenv().EatUnderSlider
local function checkHunger()
    spawn(function()
        while getgenv().HungerCheck == true and wait() do
            getgenv().Hunger = game:GetService("Players").valensoysantijajaja.PlayerGui.MainGui.Panels.Stats.List.Food.TextLabel.Text
        end
    end)
end
local function eat()
    spawn(function()
        while wait(1) and getgenv().HungerCheck == true do
            if getgenv().Hunger <= getgenv().EatUnder and getgenv().EatItem ~= nil then
                repeat
                    game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(getgenv().EatItem)
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
    notif("Item set to " .. t, 3)
end)
Misc:Slider("Auto Eat Hunger",1,100,80,function(t)
    getgenv().EatUnderSlider = t
end)


--AutoFarm


local AutoFarm = s:Tab("Auto Farm")
AutoFarm:Label("For Auto Plant item don't write the plant name")
AutoFarm:Label("Write the name of the item you use to plant it")
getgenv().autoPlantPlant = nil
getgenv().planting = false
AutoFarm:Toggle("Auto Plant",function(t)
    getgenv().planting = t
    spawn(function()
        while getgenv().planting == true and wait() do
            for _, v in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 60 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, getgenv().autoPlantPlant)
                end
            end
        end
    end)
end)
AutoFarm:Textbox("Auto Plant Item", true,function(t)
    getgenv().autoPlantPlant = t
    notif("Item set to " .. t, 3)
end)
getgenv().coins = false
getgenv().coinsMaterial = "Gold Bar"
AutoFarm:Toggle("Auto Make Coins",function(t)
    getgenv().coins = t
    spawn(function()
        while getgenv().coins and wait() do
            for _, v in pairs(game:GetService("Workspace").Deployables:GetChildren()) do
                if v.Name == "Coin Press" and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 60 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, getgenv().coinsMaterial)
                end
            end
        end
    end)
end)
AutoFarm:Dropdown("Material",{"Gold Bar", "Silver Bar", "Log", "Stick"},function(t)
    getgenv().coinsMaterial = t
end)


--Render


local Render = s:Tab("Render")
Render:Slider("Fov", 0,120,70, function(t)
    game:GetService'Workspace'.Camera.FieldOfView = t
end)
Render:Button("UnnamedESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
end)
getgenv().changingArmor = false
getgenv().armorColor = Color3.fromRGB(255, 0, 0)
Render:Toggle("Change Armor Color (Not FE)",function(t)
    getgenv().changingArmor = t
    spawn(function()
        while wait() and getgenv().changingArmor do
            for i, v in pairs(localPlayer.Character:GetChildren()) do
                if v.Name:find("Greaves") or v.Name:find("Chestplate") or v.Name:find("Mask") or v.Name:find("Helmet") or v.Name:find("Crown") or v.Name:find("Shoulder") then
                    for i, v2 in pairs(v:GetChildren()) do
                        if v2.ClassName == "Part" then
                            v2.Color = getgenv().armorColor
                        end
                    end
                end
            end
        end
    end)
end)
Render:Colorpicker("Armor Color",Color3.fromRGB(255, 0, 0),function(t)
    getgenv().armorColor = t
end)
getgenv().changingBag = false
getgenv().bagColor = Color3.fromRGB(255, 0, 0)
Render:Toggle("Change Bag Color (Not FE)",function(t)
    getgenv().changingBag = t
    spawn(function()
        while wait() and getgenv().changingBag do
            for i, v in pairs(localPlayer.Character:GetChildren()) do
                if v.Name:find("Bag") then
                    for i, v2 in pairs(v:GetChildren()) do
                        if v2.ClassName == "Part" then
                            v2.Color = getgenv().bagColor
                        end
                    end
                end
            end
        end
    end)
end)
Render:Colorpicker("Bag Color",Color3.fromRGB(255, 0, 0),function(t)
    getgenv().bagColor = t
end)
getgenv().changingTools = false
getgenv().toolsColor = Color3.fromRGB(255, 0, 0)
Render:Toggle("Change Tools Color (Not FE)",function(t)
    getgenv().changingTools = t
    spawn(function()
        while wait() and getgenv().changingTools do
            for i, v in pairs(localPlayer.Character:GetChildren()) do
                if v.Name:find("Stick") or v.Name:find("Pick") or v.Name:find("Axe") or v.Name:find("Hammer") or v.Name:find("Bow") or v.Name:find("Crossbow") or v.Name:Find("Rock") then
                    for i, v2 in pairs(v:GetChildren()) do
                        if v2.Name == "Handle" or v2.Name == "Rod" or v2.Name == "Color" then
                            v2.Color = getgenv().toolsColor
                        end
                    end
                end
            end
        end
    end)
end)
Render:Colorpicker("Tools Color",Color3.fromRGB(255, 0, 0),function(t)
    getgenv().toolsColor = t
end)


--Building


local Building = s:Tab("Building")
Building:Label("Sadly, Stacking Structures it's Patched")
Building:Label("So, the times feature and the presets are disabled")
Building:Label("btw you can still use the place feature")
getgenv().totalTimes = 1
getgenv().structure = nil
Building:Dropdown("Structure",{"Plant Box", "Chest", "Campfire", "Coin Press", "Nest", "Lookout", "Fish Trap", "Dock", "Bridge"},function(t)
    getgenv().structure = t
end)
Building:Button("Place", function()
    local times = 0
    if getgenv().structure ~= nil then
        repeat
            local Pos = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.x, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.y - 3, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer(getgenv().structure, Pos, 0)
            times = times + 1
        until times == getgenv().totalTimes
    end
end)


--Donators


local Donators = s:Tab("Donators")
Donators:Label("Special Thanks to all people on this list")
Donators:Label("naruto10123n")
Donators:Label("GalazyZane")
Donators:Label("PepeeNob")
Donators:Label("orba102 / H5CK")
Donators:Label("Skiv")
