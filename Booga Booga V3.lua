local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()

local s = VLib:Window("Warrior Hub", "Booga Booga", "W")


--Main


local Main = s:Tab("Main")
Main:Label("Welcome to WarriorHub")
Main:Label("Credits: Vep UI dev, Onyx Hub, Booga Bitches, and me")
Main:Label("Toggle GUI with RCTRL")
Main:Button("Destroy GUI",function()
    game:GetService("CoreGui").Library:Destroy()
end)


--Combat


local Combat = s:Tab("Combat")
getgenv().killing = false
local function useAura()
        spawn(function()
            while getgenv().killing == true and wait(0.1) do
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= game:GetService("Players").LocalPlayer and v.Name ~= "valensoysantijajaja" and v.Name ~= "SusLordCV" and (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude < 20 then
                    local rTV = game:GetService("ReplicatedStorage").RelativeTime.Value
                    local attackTable = {
                        [1] = workspace.Characters[v.Name].LeftUpperLeg,
                    }
                    game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(rTV, attackTable)
                end
                end
            end
        end)
end
Combat:Toggle("Kill Aura",function(t)
    if t == true then
        getgenv().killing = true
        useAura()
    end
    if t == false then
        getgenv().killing = false
    end
end)
getgenv().tpspamv = nil
getgenv().tpupval = 0
getgenv().tpspammode = "Normal"
getgenv().tping =
Combat:Toggle("Teleport Spam",function(t)
    if t == true then
        getgenv().tping = true
        spawn(function()
            while getgenv().tping and wait() do
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                    if v.Name:lower():find(getgenv().tpspamv:lower()) then
                        if v.Name == "SusLordCv" or v.Name == "valensoysantijajaja" then
                            return
                        elseif getgenv().tpspammode == "Normal" then
                            player = game.Players.LocalPlayer.Character
                            player.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position.x, v.Character.HumanoidRootPart.Position.y, v.Character.HumanoidRootPart.Position.z)
                        elseif getgenv().tpspammode == "Up" then
                            player = game.Players.LocalPlayer.Character
                            player.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position.x, v.Character.HumanoidRootPart.Position.y + getgenv().tpupval, v.Character.HumanoidRootPart.Position.z)
                        elseif getgenv().tpspammode == "Down" then
                            player = game.Players.LocalPlayer.Character
                            player.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position.x, v.Character.HumanoidRootPart.Position.y - getgenv().tpupval, v.Character.HumanoidRootPart.Position.z)
                        elseif getgenv().tpspammode == "Around" then
                            player = game.Players.LocalPlayer.Character
                            player.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(v.Character.HumanoidRootPart.CFrame.lookVector * getgenv().tpupval)
                        end
                    end
                end
            end
        end)
    end
    if t == false then
        getgenv().tping = false
    end
end)
Combat:Dropdown("TP Spam Mode",{"Normal", "Up", "Down", "Around"},function(t)
    getgenv().tpspammode = t
end)
Combat:Slider("TP Spam distance (use a fly script or you may die)", 0,10,0, function(t)
    getgenv().tpupval = t
end)
Combat:Textbox("TP Spam Name",true, function(t)
    getgenv().tpspamv = t
end)
Combat:Textbox("Normal TP", true,function(t)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name:lower():find(t:lower()) then
            if v.Name == "SusLordCv" or v.Name == "valensoysantijajaja" then
                return
            else
                player = game.Players.LocalPlayer.Character
                player.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position.x, v.Character.HumanoidRootPart.Position.y, v.Character.HumanoidRootPart.Position.z)
            end
        end
    end
end)
getgenv().HealItem = nil
getgenv().HealthCheck = false
getgenv().Health = nil
Combat:Toggle("Auto Heal",function(t)
    if t == true then
        getgenv().HealthCheck = true
        spawn(function()
            while getgenv().HealthCheck == true and wait() do
                getgenv().Health = game.Players.LocalPlayer.Character.Humanoid.Health
                --print(Health)
            end
        end)
        spawn(function()
            while wait(1) and getgenv().HealthCheck == true do
                if getgenv().Health ~= 100 and getgenv().HealItem ~= nil then
                    repeat
                        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer(getgenv().HealItem)
                        wait(0.25)
                    until game.Players.LocalPlayer.Character.Humanoid.Health == 100
                end
            end
        end)
    end
    if t == false then
        getgenv().HealthCheck = false
    end
end)
Combat:Textbox("Auto Heal Item", true,function(t)
    getgenv().HealItem = t
end)


--Movement


local Movement = s:Tab("Movement")
getgenv().speed = 3
getgenv().speedkey = "x"
getgenv().loop2 = false
Movement:Button("Speed (Hold)",function()
    local plr = game:GetService("Players").LocalPlayer
    local char = plr.Character
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local hum = char:FindFirstChild("HumanoidRootPart")
    mouse.KeyDown:connect(function(key)
        if key == getgenv().speedkey:lower() then
            getgenv().loop2 = true
            while getgenv().loop2 do
                hum.CFrame = hum.CFrame + hum.CFrame.lookVector * getgenv().speed
                wait()
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == getgenv().speedkey:lower() then
            getgenv().loop2 = false
        end
    end)
end)
Movement:Slider("Speed Multiplier",0,100,3,function(t)
    getgenv().speed = t
end)
Movement:Textbox("Speed Key", true,function(t)
    getgenv().speedkey = t
end)
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


--Misc


local Misc = s:Tab("Misc")
getgenv().abKey = "v"
getgenv().breaking = false
Misc:Button("Auto Break (Aim and Hold)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    mouse.KeyDown:connect(function(key)
        if key == getgenv().abKey then
            getgenv().breaking = true
            while getgenv().breaking and wait(0.01) do
                local part = game:GetService("Players").LocalPlayer:GetMouse().Target
                local one = game:GetService("ReplicatedStorage").RelativeTime.Value
                local two = {part,part,part,part}
                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(one, two)
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == getgenv().abKey then
            getgenv().breaking = false
        end
    end)
end)
Misc:Textbox("Auto Break Key", true,function(t)
    getgenv().abKey = t:lower()
end)
getgenv().autoPickUpPicking = false
Misc:Toggle("Auto Pick Up",function(t)
    if t == true then
        getgenv().autoPickUpPicking = true
        spawn(function()
            while getgenv().autoPickUpPicking == true and wait() do
                for _, v in pairs(workspace.Items:GetChildren()) do
                    if v ~= nil and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 20 then
                        game:GetService("ReplicatedStorage").Events.PickupItem:InvokeServer(v)
                    end
                end
            end
        end)
    end
    if t == false then
        getgenv().autoPickUpPicking = false
    end
end)
getgenv().apuitem2 = nil
getgenv().autoTPPickUpMode = "Item Select"
getgenv().autoTPPickUp = false
Misc:Toggle("Auto TP Pick Up",function(t)
    if t == true then
        getgenv().autoTPPickUp = true
        spawn(function()
            while getgenv().autoTPPickUp == true and wait() do
                if getgenv().autoTPPickUpMode == "Item Select" then
                    local asd = game.Workspace.Items[getgenv().apuitem2]
                    game:GetService("ReplicatedStorage").Events.PickupItem:InvokeServer(asd)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = asd.Item.CFrame
                elseif getgenv().autoTPPickUpMode == "Any" then
                    for _, v in pairs(workspace.Items:GetChildren()) do
                        if v ~= nil and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 3000 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame
                            game:GetService("ReplicatedStorage").Events.PickupItem:InvokeServer(v)
                        end
                    end
                end
            end
        end)
    end
    if t == false then
        getgenv().autoTPPickUp = false
    end
end)
Misc:Dropdown("Auto TP Pick Up Mode",{"Item Select", "Any"},function(t)
    getgenv().autoTPPickUpMode = t
end)
Misc:Textbox("Auto TP Pick Up Item", true, function(t)
    getgenv().apuitem2 = t
end)
getgenv().adItem = nil
getgenv().adKey = "f"
getgenv().dropping = false
Misc:Button("Auto Drop (Hold)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    mouse.KeyDown:connect(function(key)
        if key == getgenv().adKey then
            getgenv().dropping = true
            while getgenv().dropping and wait() do
                local asd = getgenv().adItem
                game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(asd)
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == getgenv().adKey then
            dropping = false
        end
    end)
end)
Misc:Textbox("Auto Drop Item", true, function(t)
    getgenv().adItem = t
end)
Misc:Textbox("Auto Drop Key", true, function(t)
    getgenv().adKey = t
end)
getgenv().cCS = false
Misc:Toggle("Color Changing Skin (Laggy on very bad pcs)", function(t)
    if t == true then
        getgenv().cCS = true
        spawn(function()
            while getgenv().cCS and wait(0.3) do
                wait(0.15) do
                local ohString1 = "skin"
                local ohString2 = "Dark Brown"
                game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer(ohString1, ohString2)
            end
                wait(0.15) do
                local ohString3 = "skin"
                local ohString4 = "Tan"
                game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer(ohString3, ohString4)
            end
                wait(0.15) do
                local ohString5 = "skin"
                local ohString6 = "White"
                game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer(ohString5, ohString6)
            end
                wait(0.15) do
                local ohString7 = "skin"
                local ohString8 = "Pale"
                game:GetService("ReplicatedStorage").Events.CosmeticChange:FireServer(ohString7, ohString8)
            end
            end
        end)
    end
    if t == false then
        getgenv().cCS = false
    end
end)
Misc:Textbox("Craft Item", true, function(t)
    local crString1 = t
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(crString1)
end)
Misc:Button("Craft Lvl 1000 Golden Boat (you have to be on water)", function()
    local ohCFrame2 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local ohNumber3 = 0

    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Golden Sailboat", ohCFrame2, ohNumber3)
end)
Misc:Button("Craft Mag Set", function()
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Mask")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Chestplate")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Greaves")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Stick")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Pick")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Axe")
end)
Misc:Dropdown("Shelly Teleports",{"Random Small Shelly", "Random Big Shelly", "Random Giant Shelly"},function(t)
    if t == "Random Small Shelly" then
        shelly = "Stone Shelly"
    elseif t == "Random Big Shelly" then
        shelly = "Big Stone Shelly"
    elseif t == "Random Giant Shelly" then
        shelly = "Giant Shelly"
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Critters[shelly].Head.CFrame
end)
Misc:Dropdown("Meteor Teleports",{"Crystal Meteor", "Magnetite Meteor"},function(t)
    if t == "Crystal Metor" then
        meteor = "Crystal Meteor Core"
    elseif t == "Magnetite Meteor" then
        meteor = "Meteor Core"
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources[meteor]["Small Rock"].Reference.CFrame
end)
Misc:Dropdown("Ore and Other Teleports",{"Coal Node", "Iron Node", "Gold Node", "Stone Node", "Dead Tree", "Goober", "Beached Boi"},function(t)
    if t == "Beached Boi" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources[t].Tail.CFrame
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources[t].Reference.CFrame
    end
end)
Misc:Dropdown("Deployable Teleports",{"Chest", "Plant Box"},function(t)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Deployables[t].Reference.CFrame
end)
Misc:Dropdown("Lobbys",{"Unused Lobby", "Lobby"},function(t)
    if t == "Unused Lobby" then
        coordinatesx = -189
        coordinatesy = -3
        coordinatesz = 17004
    else
        coordinatesx = -1683
        coordinatesy = -3
        coordinatesz = -4144
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character:MoveTo(Vector3.new(coordinatesx, coordinatesy, coordinatesz))
end)
Misc:Button("Infinity Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Misc:Button("Server Hop", function()
    local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/4787629450/servers/Public?sortOrder=Asc&limit=100"))
    for i,v in pairs(Servers.data) do
        if v.playing ~= v.maxPlayers then
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
        end
    end
end)


--Auto Farm


local AutoFarm = s:Tab("Auto Farm")
AutoFarm:Label("You have to collect manually")
AutoFarm:Label("You should use auto pick up for collecting")
AutoFarm:Label("Equip a pick or an axe depending on what you select")
getgenv().FarmingObject = nil
getgenv().TimeBetweenEach = 1
getgenv().farmingMineTarget = nil
getgenv().farming = false
getgenv().autoFarmTping = false
AutoFarm:Toggle("Auto Farm",function(t)
    if t == true then
        getgenv().farming = true
        getgenv().autoFarmTping = true
        local shelly = "Stone Shelly"
        spawn(function()
            while getgenv().farming do
                local af2Table2 = {
                    [1] = getgenv().farmingMineTarget
                }
                local af2Number1 = game:GetService("ReplicatedStorage").RelativeTime.Value
                if FarmingObject == "Shelly" then
                    getgenv().farmingMineTarget = game.Workspace.Critters[shelly].Head
                else
                    getgenv().farmingMineTarget = game.Workspace.Resources[getgenv().FarmingObject].Reference
                end

                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(af2Number1, af2Table2)
                wait()
            end
        end)
        spawn(function()
        while getgenv().autoFarmTping and wait(getgenv().TimeBetweenEach) do
            if getgenv().FarmingObject == "Shelly" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Critters[shelly].Head.CFrame
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources[FarmingObject].Reference.CFrame
            end
        end
        end)
    end
    if t == false then
        getgenv().farming = false
        getgenv().autoFarmTping = false
    end
end)
AutoFarm:Dropdown("Target",{"Iron Node", "Coal Node", "Magnetite Iceberg", "Totem of the Moon", "Dead Tree", "Gold Node", "Stone Node", "Ancient Tree", "Ancient Feather Tree", "Shelly"},function(t)
    getgenv().FarmingObject = t
end)
AutoFarm:Slider("Wait Time",0.1,15,1,function(t)
    getgenv().TimeBetweenEach = t
end)
AutoFarm:Label("For Auto Plant item don't write the plant name")
AutoFarm:Label("Write the name of the item you use plant it")
getgenv().autoPlantPlant = nil
getgenv().planting = false
AutoFarm:Toggle("Auto Plant",function(t)
    if t == true then
        getgenv().planting = true
        spawn(function()
            while getgenv().planting == true and wait() do
                for _, v in pairs(workspace.Deployables:GetChildren()) do
                    if v.Name == "Plant Box" and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude < 60 then
                        game.ReplicatedStorage.Events.InteractStructure:FireServer(v, getgenv().autoPlantPlant)
                    end
                end
            end
        end)
    end
    if t == false then
        getgenv().planting = false
    end
end)
AutoFarm:Textbox("Auto Plant Item", true,function(t)
    getgenv().autoPlantPlant = t
end)


--Render


local Render = s:Tab("Render")
Render:Button("Remove Rain", function()
    if workspace:FindFirstChild('RainPart') ~= nil then
        workspace.RainPart:Destroy()
        game.ReplicatedStorage.Sounds.Nature.Rain:Stop()
        game.ReplicatedStorage.Sounds.Nature.Thunder:Stop()
        game.Lighting.Rain:Destroy()
        game.ReplicatedStorage.Skies.Shine:Clone().Parent = game.Lighting
    end
end)
Render:Slider("Fov", 0,120,70, function(t)
    game:GetService'Workspace'.Camera.FieldOfView = t
end)
Render:Button("UnnamedESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
end)


--Building


local Building = s:Tab("Building")
Building:Button("Place Chest Campfire (1 Chest, 4 Campfires)", function()
    local Fires = 1
    local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
    h = game.Players.LocalPlayer.Character.LowerTorso.Position
    local c = h.x + 5
    local d = h.y - 2
    local e = h.z
    local j = h.x
    local k = h.y - 2
    local l = h.z
    local aa = h.x - 5
    local bb = h.y - 2
    local cc = h.z
    local aaa = h.x
    local bbb = h.y - 2
    local ccc = h.z + 5
    local aaaa = h.x
    local bbbb = h.y - 2
    local cccc = h.z - 5
    for i = 1,1 do
        local C_1 = "Chest"
        local C_2 = CFrame.new(j, k, l, 1, 0, 0, 0, 1, -5.56028681e-08, 0, -5.56028681e-08, 1)
        local C_3 = 0
        Event:FireServer(C_1, C_2, C_3)
    end
    for i = 1,Fires do
        local A_1 = "Campfire"
        local A_2 = CFrame.new(c, d, e, 1, 0, 0, 0, 1, -5.56028681e-08, 0, -5.56028681e-08, 1)
        local A_3 = 0
        Event:FireServer(A_1, A_2, A_3)
    end
    for i = 1,Fires do
        local B_1 = "Campfire"
        local B_2 = CFrame.new(aa, bb, cc, 1, 0, 0, 0, 1, -5.56028681e-08, 0, -5.56028681e-08, 1)
        local B_3 = 0
        Event:FireServer(B_1, B_2, B_3)
    end
    for i = 1,Fires do
        local D_1 = "Campfire"
        local D_2 = CFrame.new(aaa, bbb, ccc, 1, 0, 0, 0, 1, -5.56028681e-08, 0, -5.56028681e-08, 1)
        local D_3 = 0
        Event:FireServer(D_1, D_2, D_3)
    end
    for i = 1,Fires do
        local E_1 = "Campfire"
        local E_2 = CFrame.new(aaaa, bbbb, cccc, 1, 0, 0, 0, 1, -5.56028681e-08, 0, -5.56028681e-08, 1)
        local E_3 = 0
        Event:FireServer(E_1, E_2, E_3)
    end
end)
Building:Button("Place Plant Box", function()
    local ohCFrame2 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y - 3, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local ohNumber3 = 0
    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Plant Box", ohCFrame2, ohNumber3)
end)
Building:Button("Egg Farm (4 Nests, 2 Campfires)", function()
    local ohCFrame2 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y - 3, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local ohNumber3 = 0
    local ohCFrame3 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x + 2, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y - 3, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Nest", ohCFrame2, ohNumber3)
    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Nest", ohCFrame2, ohNumber3)
    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Nest", ohCFrame2, ohNumber3)
    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Nest", ohCFrame2, ohNumber3)
    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Campfire", ohCFrame2, ohNumber3)
    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Campfire", ohCFrame3, ohNumber3)
end)
