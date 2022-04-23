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
killing = false
Combat:Toggle("Kill Aura",function(t)
    local plrs = game:GetService"Players"
    if t == true then
        killing = true
        while killing and wait() do
            for _,v in pairs(plrs:GetPlayers()) do
                local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                if v ~= plrs.LocalPlayer and v.Name ~= "valensoysantijajaja" and distance <= 12 then
                    local ohNumber1 = game:GetService("ReplicatedStorage").RelativeTime.Value
                    local ohTable2 = {
                        [1] = workspace.Characters[v.Name].LeftUpperLeg,
                        [2] = workspace.Characters[v.Name].HumanoidRootPart,
                        [3] = workspace.Characters[v.Name].LeftLowerArm,
                        [4] = workspace.Characters[v.Name].LowerTorso,
                        [5] = workspace.Characters[v.Name].LeftFoot,
                        [6] = workspace.Characters[v.Name].LeftHand,
                        [7] = workspace.Characters[v.Name].LeftLowerLeg,
                        [8] = workspace.Characters[v.Name].UpperTorso,
                        [9] = workspace.Characters[v.Name].Head,
                        [10] = workspace.Characters[v.Name].LeftUpperArm
                    }
                    game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(ohNumber1, ohTable2)
                end
            end
        end
    end
    if t == false then
        killing = false
    end
end)
tpspamv = nil
tpupval = 0
tpspammode = "Normal"
Combat:Toggle("Teleport Spam",function(t)
    tping = false
    if t == true then
        tping = true
        while tping and wait() do
            for i,v in pairs(game:GetService("Players"):GetChildren()) do
                if v.Name:lower():find(tpspamv:lower()) then
                    if v.Name == "valensoysantijajaja" then
                        return
                    elseif tpspammode == "Normal" then
                        player = game.Players.LocalPlayer.Character
                        player.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position.x, v.Character.HumanoidRootPart.Position.y, v.Character.HumanoidRootPart.Position.z)
                    elseif tpspammode == "Up" then
                        player = game.Players.LocalPlayer.Character
                        player.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position.x, v.Character.HumanoidRootPart.Position.y + tpupval, v.Character.HumanoidRootPart.Position.z)
                    elseif tpspammode == "Down" then
                        player = game.Players.LocalPlayer.Character
                        player.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position.x, v.Character.HumanoidRootPart.Position.y - tpupval, v.Character.HumanoidRootPart.Position.z)
                    elseif tpspammode == "Around" then
                        player = game.Players.LocalPlayer.Character
                        player.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(v.Character.HumanoidRootPart.CFrame.lookVector * tpupval)
                    end
                end
            end
        end
    end
end)
Combat:Dropdown("TP Spam Mode",{"Normal", "Up", "Down", "Around"},function(t)
    tpspammode = t
end)
Combat:Slider("TP Spam distance (use a fly script or you may die)", 0,10,0, function(t)
    tpupval = t
end)
Combat:Textbox("TP Spam Name",true, function(t)
    tpspamv = t
end)
Combat:Textbox("Normal TP", true,function(t)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name:lower():find(t:lower()) then
            if v.Name == "valensoysantijajaja" then
                return
            else
                player = game.Players.LocalPlayer.Character
                player.HumanoidRootPart.CFrame = CFrame.new(v.Character.HumanoidRootPart.Position.x, v.Character.HumanoidRootPart.Position.y, v.Character.HumanoidRootPart.Position.z)
            end
        end
    end
end)


--Movement


local Movement = s:Tab("Movement")
speed = 3
speedkey = "x"
loop2 = false
Movement:Button("Speed (Hold)",function()
    local plr = game:GetService("Players").LocalPlayer
    local char = plr.Character
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local hum = char:FindFirstChild("HumanoidRootPart")
    mouse.KeyDown:connect(function(key)
        if key == speedkey:lower() then
            loop2 = true
            while loop2 do
                hum.CFrame = hum.CFrame + hum.CFrame.lookVector * speed
                wait()
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == speedkey:lower() then
            loop2 = false
        end
    end)
end)
Movement:Slider("Speed Multiplier",0,100,3,function(t)
    speed = t
end)
Movement:Textbox("Speed Key", true,function(t)
    speedkey = t
end)
GJumpPower = 50
Movement:Button("Infinity Jump",function()
    local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
    function Action(Object, Function) if Object ~= nil then Function(Object); end end
    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, GJumpPower, 0);
                    end)
                end
            end)
        end
    end)
end)
Movement:Slider("Jump Power", 0,300,50, function(t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
    GJumpPower = t
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


--Misc


local Misc = s:Tab("Misc")
abKey = "v"
Misc:Button("Auto Break (Aim and Hold)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local breaking=false
    mouse.KeyDown:connect(function(key)
        if key == abKey then
            breaking = true
            while breaking and wait(0.01) do
                local part = game:GetService("Players").LocalPlayer:GetMouse().Target
                local one = game:GetService("ReplicatedStorage").RelativeTime.Value
                local two = {part,part,part,part}
                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(one, two)
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == abKey then
            breaking = false
        end
    end)
end)
Misc:Textbox("Auto Break Key", true,function(t)
    abKey = t:lower()
end)
apuItem = nil
apuKey = "b"
Misc:Button("Auto Pick Up (Hold)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local picking = false
    mouse.KeyDown:connect(function(key)
        if key == apuKey then
            picking = true
            while picking and wait() do
                local asd = game.Workspace.Items:FindFirstChild(apuItem)
                local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - asd.Item.Position).Magnitude
                if distance <= 20 then
                    game:GetService("ReplicatedStorage").Events.PickupItem:InvokeServer(asd)
                elseif distance >= 20 then
                    return
                end
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == apuKey then
            picking = false
        end
    end)
end)
Misc:Textbox("Auto Pick Up Item", true, function(t)
    apuItem = t
end)
Misc:Textbox("Auto Pick Up Key", true, function(t)
    apuKey = t
end)
apuitem2 = nil
apuKey2 = "k"
Misc:Button("Auto TP Pick Up (Hold)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local picking = false
    mouse.KeyDown:connect(function(key)
        if key == apuKey2 then
            picking = true
            while picking and wait() do
                local asd = game.Workspace.Items[apuitem2]
                game:GetService("ReplicatedStorage").Events.PickupItem:InvokeServer(asd)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = asd.Item.CFrame
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == apuKey2 then
            picking = false
        end
    end)
end)
Misc:Textbox("Auto TP Pick Up Item", true, function(t)
    apuitem2 = t
end)
Misc:Textbox("Auto TP Pick Up Key", true, function(t)
    apuitem2 = t
end)
adItem = nil
adKey = "f"
Misc:Button("Auto Drop (Hold)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local dropping=false
    mouse.KeyDown:connect(function(key)
        if key == adKey then
            dropping = true
            while dropping and wait() do
                local asd = adItem
                game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(asd)
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == adKey then
            dropping = false
        end
    end)
end)
Misc:Textbox("Auto Drop Item", true, function(t)
    adItem = t
end)
Misc:Textbox("Auto Drop Key", true, function(t)
    adKey = t
end)
Misc:Toggle("Color Changing Skin (Laggy on very bad pcs)",false, function(t)
    if t == true then
        cCS = true
        while cCS and wait(0.3) do
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
    end
    if t == false then
        cCS = false
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
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources[meteor].Reference.CFrame
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


--Auto Farm


local AutoFarm = s:Tab("Auto Farm")
AutoFarm:Label("You have to collect manually")
AutoFarm:Label("You should use auto pick up for collecting")
AutoFarm:Label("Equip a pick or an axe depending on what you select")
FarmingObject = nil
TimeBetweenEach = 1
farmingMineTarget = nil
AutoFarm:Toggle("Auto Farm",function(t)
    if t == true then
        farming = true
        autoFarmTping = true
        local shelly = "Stone Shelly"
        spawn(function()
            while farming do
                local af2Table2 = {
                    [1] = farmingMineTarget
                }
                local af2Number1 = game:GetService("ReplicatedStorage").RelativeTime.Value
                if FarmingObject == "Shelly" then
                    farmingMineTarget = game.Workspace.Critters[shelly].Head
                else
                    farmingMineTarget = game.Workspace.Resources[FarmingObject].Reference
                end

                game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(af2Number1, af2Table2)
                wait()
            end
        end)
        spawn(function()
        while autoFarmTping and wait(TimeBetweenEach) do
            if FarmingObject == "Shelly" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Critters[shelly].Head.CFrame
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources[FarmingObject].Reference.CFrame
            end
            wait(TimeBetweenEach)
        end
        end)
    end
    if t == false then
        farming = false
        autoFarmTping = false
    end
end)
AutoFarm:Dropdown("Target",{"Iron Node", "Coal Node", "Magnetite Iceberg", "Totem of the Moon", "Dead Tree", "Gold Node", "Stone Node", "Ancient Tree", "Ancient Feather Tree", "Shelly"},function(t)
    FarmingObject = t
end)
AutoFarm:Slider("Wait Time",0.1,15,1,function(t)
    TimeBetweenEach = t
end)
