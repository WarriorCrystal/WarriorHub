local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Booga Booga Classic by WarriorCrystal#3990")

local serv = win:Server("Main", "")


local Main = serv:Channel("Main")
Main:Label("Welcome to WarriorHub")
Main:Label("Credits: Discord UI dev, Onyx Hub, Booga Bitches, and me lol")
local com = serv:Channel("Combat")
com:Button("Kill Aura (Hold R)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local killing=false
    local plrs = game:GetService"Players"
    mouse.KeyDown:connect(function(key)
        if key == "r" then
            killing = true
            while killing and wait(0.01) do
                for _,v in pairs(plrs:GetPlayers()) do
                    local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
                    if v ~= plrs.LocalPlayer and distance <= 35 then
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
    end)
    mouse.KeyUp:connect(function(key)
        if key == "r" then
            killing = false
        end
    end)
end)
com:Button("Auto Wall Trap (4 Stone Walls)", function()
    local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
    h = game.Players.LocalPlayer.Character.LowerTorso.Position
    local aa = h.x + 13
    local bb = h.y - 2
    local cc = h.z
    local aaa = h.x - 13
    local bbb = h.y - 2
    local ccc = h.z
    local aaaa = h.x
    local bbbb = h.y - 2
    local cccc = h.z + 13
    local aaaaa = h.x
    local bbbbb = h.y - 2
    local ccccc = h.z - 13
    local k_1 = "Stone Wall"
    local k_2 = CFrame.new(aaaa, bbbb, cccc, -0.99862951, 9.53660761e-12, 0.0523360483, -9.54969524e-12, 1, 2.71050543e-20, -0.0523360483, 4.99793241e-13, -0.99862951)
    local k_3 = 177
    local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
    Event:FireServer(k_1, k_2, k_3)
    local l_1 = "Stone Wall"
    local l_2 = CFrame.new(aaaaa, bbbbb, ccccc, -0.99862951, 9.53660761e-12, 0.0523360483, -9.54969524e-12, 1, 2.71050543e-20, -0.0523360483, 4.99793241e-13, -0.99862951)
    local l_3 = 177
    local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
    Event:FireServer(l_1, l_2, l_3)
    local m_1 = "Stone Wall"
    local m_2 = CFrame.new(aaa, bbb, ccc, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
    local m_3 = 270
    local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
    Event:FireServer(m_1, m_2, m_3)
    local n_1 = "Stone Wall"
    local n_2 = CFrame.new(aa, bb, cc, 1.19248806e-08, 3.87430191e-06, -1, 4.62005888e-14, 1, -3.87430191e-06, 1, 0, 1.19248806e-08)
    local n_3 = 270
    local Event = game:GetService("ReplicatedStorage").Events.PlaceStructure
    Event:FireServer(n_1, n_2, n_3)
end)
com:Textbox("Tp Spam", "Write victim name", true, function(t)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name:lower():find(t:lower()) then
            if v.Name == "valensoysantijajaja" then
                DiscordLib:Notification("Notification", "Lmao you can't kill based people", "Sorry")
            else
                repeat
                    player = game.Players.LocalPlayer.Character
                    player.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    wait(.001)
                until v.Character.Humanoid.Health <= 0
            end
        end
    end
end)
com:Textbox("Normal Tp", "Write victim name", true, function(t)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name:lower():find(t:lower()) then
            if v.Name == "valensoysantijajaja" then
                DiscordLib:Notification("Notification", "Lmao you can't kill based people", "Sorry")
            else
                player = game.Players.LocalPlayer.Character
                player.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                wait(.001)
            end
        end
    end
end)
local move = serv:Channel("Movement")
speed = 3
move:Button("Speed (Hold X)", function()
    local plr = game:GetService("Players").LocalPlayer
    local char = plr.Character
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local hum = char:FindFirstChild("HumanoidRootPart")
    mouse.KeyDown:connect(function(key)
        if key == "x"  then
            loop2 = true
            while loop2 do
                hum.CFrame = hum.CFrame + hum.CFrame.lookVector * speed
                wait()
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == "x" then
            loop2 = false
        end
    end)
end)
move:Slider("Speed Multiplier", 0, 200, 3, function(t)
    speed = t
end)
move:Button("Infinity Jump", function()
    local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';

    _G.JumpHeight = 50;

    function Action(Object, Function) if Object ~= nil then Function(Object); end end

    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                    end)
                end
            end)
        end
    end)
end)
move:Slider("Jump Power", 0, 300, 50, function(t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
end)
local build = serv:Channel("Building")
build:Button("Place Chest Campfire (1 Chest, 4 Campfires)", function()
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
build:Button("Place Plant Box", function()
    local ohCFrame2 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y - 3, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local ohNumber3 = 0

    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Plant Box", ohCFrame2, ohNumber3)
end)
build:Button("Egg Farm (4 Nests, 2 Campfires)", function()
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
local misc = serv:Channel("Misc")
misc:Button("Auto Break (Hold V)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local breaking=false
    mouse.KeyDown:connect(function(key)
        if key == "v" then
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
        if key == "v" then
            breaking = false
        end
    end)
end)
apuitem = ""
misc:Button("Auto Pick Up (Hold B)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local picking=false
    mouse.KeyDown:connect(function(key)
        if key == "b" then
            picking = true
            while picking and wait(0.01) do
                local asd = game.Workspace.Items[apuitem]
                game:GetService("ReplicatedStorage").Events.PickupItem:InvokeServer(asd)
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == "b" then
            picking = false
        end
    end)
end)
misc:Textbox("Auto Pick Up Item", "Write item name", true, function(t)
    apuitem = t
end)
aditem = ""
misc:Button("Auto Drop (Hold F)", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local dropping=false
    mouse.KeyDown:connect(function(key)
        if key == "f" then
            dropping = true
            while dropping and wait(0.01) do
                local asd = aditem
                game:GetService("ReplicatedStorage").Events.DropBagItem:FireServer(asd)
            end
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == "f" then
            dropping = false
        end
    end)
end)
misc:Textbox("Auto Drop Item", "Write item name", true, function(t)
    aditem = t
end)
misc:Toggle("Color Changing Skin (Laggy on very bad pcs)",false, function(bool)
    if bool == true then
        loop = true
        while loop and wait(0.3) do
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
    if bool == false then
        loop = false
    end
end)
local render = serv:Channel("Render")
render:Slider("Fov", 0, 120, 70, function(t)
    game:GetService'Workspace'.Camera.FieldOfView = t
end)
render:Button("Remove Rain", function()
    if workspace:FindFirstChild('RainPart') ~= nil then
        workspace.RainPart:Destroy()
        game.ReplicatedStorage.Sounds.Nature.Rain:Stop()
        game.ReplicatedStorage.Sounds.Nature.Thunder:Stop()
        game.Lighting.Rain:Destroy()
        game.ReplicatedStorage.Skies.Shine:Clone().Parent = game.Lighting
    end
end)
local abr = serv:Channel("Auto Break")
abr:Toggle("Auto Mine Mag Ore (Put pick on slot 2)",false, function(bool)
    if bool == true then
        loop = true
        local afNumber13 = 2
        game:GetService("ReplicatedStorage").Events.EquipTool:FireServer(afNumber13)
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1172, 287, -1199))
        while loop and wait(0.01) do
            local af2Number1 = game:GetService("ReplicatedStorage").RelativeTime.Value
            local af2Table2 = {
                [1] = workspace.Resources["Magnetite Iceberg"]["Magnetite Ice"]
            }
            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(af2Number1, af2Table2)
        end
    end
    if bool == false then
        loop = false
    end
end)
abr:Toggle("Auto Mine Mag Totem (Put pick on slot 2)",false, function(bool)
    if bool == true then
        loop = true
        local afNumber13 = 2
        game:GetService("ReplicatedStorage").Events.EquipTool:FireServer(afNumber13)
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1172, 287, -1199))
        while loop and wait(0.01) do
            local af2Number1 = game:GetService("ReplicatedStorage").RelativeTime.Value
            local af2Table2 = {
                [1] = workspace.Resources["Totem of the Moon"].Wood,
                [2] = workspace.Resources["Totem of the Moon"].Reference,
                [3] = workspace.Resources["Totem of the Moon"].Wood,
                [4] = workspace.Resources["Totem of the Moon"].Coloration,
                [5] = workspace.Resources["Totem of the Moon"].Wood,
                [6] = workspace.Resources["Totem of the Moon"].Coloration,
                [7] = workspace.Resources["Totem of the Moon"].Wood
            }
            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(af2Number1, af2Table2)
        end
    end
    if bool == false then
        loop = false
    end
end)
abr:Toggle("Auto Break Ancient Tree (Put axe on slot 3)",false, function(bool)
    if bool == true then
        loop = true
        local afNumber13 = 3
        game:GetService("ReplicatedStorage").Events.EquipTool:FireServer(afNumber13)
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-563, 311, -1188))
        while loop and wait(0.01) do
            local afNumber1 = game:GetService("ReplicatedStorage").RelativeTime.Value
            local afTable2 = {
                [1] = workspace["Spirit Lock"].Union,
                [2] = workspace.Resources["Ancient Tree"].Trunk,
                [3] = workspace.Resources["Ancient Tree"].Reference
            }
            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(afNumber1, afTable2)
        end
    end
    if bool == false then
        loop = false
    end
end)
abr:Toggle("Auto Break Wealthy God (Put pick on slot 2)",false, function(bool)
    if bool == true then
        loop = true
        local afNumber13 = 2
        game:GetService("ReplicatedStorage").Events.EquipTool:FireServer(afNumber13)
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-220, -3, -264))
        while loop and wait(0.01) do
            local afNumber1 = game:GetService("ReplicatedStorage").RelativeTime.Value
            local afTable2 = {
                [1] = workspace.Resources["Wealthy God"].Moai
            }
            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(afNumber1, afTable2)
        end
    end
    if bool == false then
        loop = false
    end
end)
abr:Toggle("Auto Break Motherlode (Put pick on slot 2)",false, function(bool)
    if bool == true then
        loop = true
        local afNumber13 = 2
        game:GetService("ReplicatedStorage").Events.EquipTool:FireServer(afNumber13)
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-121, -3, -173))
        while loop and wait(0.01) do
            local afNumber1 = game:GetService("ReplicatedStorage").RelativeTime.Value
            local afTable2 = {
                [1] = workspace.Resources["The Motherlode"]["Small Rock"]
            }
            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(afNumber1, afTable2)
        end
    end
    if bool == false then
        loop = false
    end
end)
abr:Toggle("Auto Break Dancing Shelly (Waste of time)",false, function(bool)
    if bool == true then
        loop = true
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-884, -3, -1916))
        while loop and wait(0.01) do
            local afNumber1 = game:GetService("ReplicatedStorage").RelativeTime.Value
            local afTable2 = {
                [1] = workspace.Critters["Dancing Shelly"].Head,
                [2] = workspace.Critters["Dancing Shelly"].Shell,
                [3] = workspace.Critters["Dancing Shelly"].HitShell
            }
            game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(afNumber1, afTable2)
        end
    end
    if bool == false then
        loop = false
    end
end)


local Crafting = serv:Channel("Crafting")


Crafting:Textbox("Write Item Name", "Type here!", true, function(t)
    local crString1 = t
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer(crString1)
    DiscordLib:Notification("Notification", "Succefully Crafted", "OK")
end)

Crafting:Button("Craft Lvl 1000 Golden Boat (you have to be on water)", function()
    local ohCFrame2 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local ohNumber3 = 0

    game:GetService("ReplicatedStorage").Events.PlaceStructure:FireServer("Golden Sailboat", ohCFrame2, ohNumber3)
end)
Crafting:Button("Craft Mag Set", function()
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Mask")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Chestplate")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Greaves")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Stick")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Pick")
    game:GetService("ReplicatedStorage").Events.CraftItem:FireServer("Magnetite Axe")
end)

local Others = serv:Channel("Others")


Others:Button("UnnamedESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
end)
Others:Button("Infinity Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Others:Button("Server Hop", function()
    local Servers = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/4787629450/servers/Public?sortOrder=Asc&limit=100"))
    for i,v in pairs(Servers.data) do
        if v.playing ~= v.maxPlayers then
            game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
        end
    end
end)

local teleports = win:Server("Teleports", "")
local STPS = teleports:Channel("Mob & Item Teleports")


STPS:Button("Random Giant Shelly", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Critters["Giant Shelly"].Head.CFrame
end)
STPS:Button("Random Big Shelly", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Critters["Big Stone Shelly"].Head.CFrame
end)
STPS:Button("Random Small Shelly", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Critters["Stone Shelly"].Head.CFrame
end)
STPS:Button("Random Raw Morsel", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Items["Raw Morsel"].Item.CFrame
end)
STPS:Button("Random Peeper Popsicle", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Items["Peeper Popsicle"].Wing.CFrame
end)
STPS:Button("Random Planted Bloodfruit Bush", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Items["Bloodfruit Bush"].Leaves.CFrame
end)
STPS:Button("Random Essence", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Items["Essence"].Item.CFrame
end)

local SDTPS = teleports:Channel("Meteor & Building TPS")
SDTPS:Button("Magnetite Meteor", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources["Meteor Core"]["Small Rock"].CFrame
end)
SDTPS:Button("Crystal Meteor", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources["Crystal Meteor Core"].Part.CFrame
end)
SDTPS:Button("Random Chest", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Deployables["Chest"].Reference.CFrame
end)
SDTPS:Button("Random Plant Box", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Deployables["Plant Box"].Reference.CFrame
end)
SDTPS:Button("Random Coal Node", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources["Coal Node"].Reference.CFrame
end)
SDTPS:Button("Random Iron Node", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources["Iron Node"].Reference.CFrame
end)
SDTPS:Button("Random Gold Node", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources["Gold Node"].Reference.CFrame
end)
SDTPS:Button("Random Dead Tree", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources["Dead Tree"].Reference.CFrame
end)
SDTPS:Button("Random Stone Node", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources["Stone Node"].Reference.CFrame
end)
SDTPS:Button("Random Dead Shark", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources["Beached Boi"].Tail.CFrame
end)
SDTPS:Button("Random Goober", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Resources["Goober"].Leaves.CFrame
end)
SDTPS:Button("Random Raft", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Deployables["Raft"].MainPart.CFrame
end)
SDTPS:Button("Random Squad Raft", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Deployables["Squad Raft"].MainPart.CFrame
end)
local PTPS = teleports:Channel("Place Teleports")


PTPS:Button("First Floating Island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-129, 237, -748))
end)
PTPS:Button("Second Floating Island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-549, 311, -1211))
end)
PTPS:Button("Third Floating Island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1132, 309, -1201))
end)
PTPS:Button("Unused Lobby (Good for a base)", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-237.432, 6.00437, 16986))
end)
PTPS:Button("Magnetite Cave", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1173, 287, -1204))
end)
PTPS:Button("Ancient Cave", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1119, -179, -736))
end)
PTPS:Button("Adurite Cave", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1131, -153, 1190))
end)


local XPTPS = teleports:Channel("XP Teleports")


XPTPS:Button("Ancient Tree (Best)", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-549, 310, -1205))
end)
XPTPS:Button("Ancient Feather Tree", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-156, 237, -837))
end)
XPTPS:Button("Double Moai", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-46, 237, -710))
end)
XPTPS:Button("Moai 1", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(111, 0, -781))
end)
XPTPS:Button("Moai 2", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1070, -196, -786))
end)
XPTPS:Button("Moai 3", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1152, -152, 1178))
end)
XPTPS:Button("Moai 4", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-215, -3, -266))
end)
XPTPS:Button("Moai 5", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1152, 309, -1212))
end)
XPTPS:Button("Moai 6", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(233, -2, -654))
end)

