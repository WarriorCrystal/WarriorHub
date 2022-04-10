local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Booga Booga Classic by WarriorCrystal#3990")

local serv = win:Server("Main", "")


local Main = serv:Channel("Main")


Main:Button("Speed (Hold X)", function()
    local plr = game:GetService("Players").LocalPlayer
    local char = plr.Character
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local hum = char:FindFirstChild("HumanoidRootPart")
    local speed = 3
    mouse.KeyDown:connect(function(key)
        if key == "x"  then
            loop = true
            while loop do
                hum.CFrame = hum.CFrame + hum.CFrame.lookVector * speed
                wait()
            end
        end
    end)

    mouse.KeyUp:connect(function(key)
        if key == "x"  then
            loop = false
        end
    end)
end)
Main:Button("Infinity Jump", function()
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
Main:Button("Auto Break (Hold V)", function()
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
Main:Button("Remove Rain", function()
    if workspace:FindFirstChild('RainPart') ~= nil then
        workspace.RainPart:Destroy()
        game.ReplicatedStorage.Sounds.Nature.Rain:Stop()
        game.ReplicatedStorage.Sounds.Nature.Thunder:Stop()
        game.Lighting.Rain:Destroy()
        game.ReplicatedStorage.Skies.Shine:Clone().Parent = game.Lighting
    end
end)

Main:Toggle("Auto Break Ancient Tree (Put axe on slot 3)",false, function(bool)
    if bool == true then
        loop = true
        local afNumber13 = 3
        game:GetService("ReplicatedStorage").Events.EquipTool:FireServer(afNumber13)
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-563, 311, -1188))
        while loop and wait(0.2) do
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
Main:Toggle("Auto Mine Mag Ore (Put pick on slot 2)",false, function(bool)
    if bool == true then
        loop = true
        local afNumber13 = 3
        game:GetService("ReplicatedStorage").Events.EquipTool:FireServer(afNumber13)
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1172, 287, -1199))
        while loop and wait(0.2) do
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
Main:Toggle("Auto Mine Mag Totem (Put axe on slot 3)",false, function(bool)
    if bool == true then
        loop = true
        local afNumber13 = 3
        game:GetService("ReplicatedStorage").Events.EquipTool:FireServer(afNumber13)
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1172, 287, -1199))
        while loop and wait(0.2) do
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
game:GetService("ReplicatedStorage").Events.SwingTool:FireServer(ohNumber1, ohTable2)
Main:Button("Place Chest Campfire", function()
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
Main:Button("Auto Wall Trap", function()
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
Main:Textbox("Tp Spam", "Write victim name", true, function(t)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v.Name:lower():find(t:lower()) then
            if v.Name == "valensoysantijajaja" then
                DiscordLib:Notification("Notification", "Lmao you can't kill based people", "Sorry")
            else
                player = game.Players.LocalPlayer.Character
                repeat
                    player.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    wait(.001)
                until v.Character.Humanoid.Health <= 0
            end
        end
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


local Others = serv:Channel("Others")


Others:Button("UnnamedESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
end)
Others:Button("Infinity Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)


local STPS = serv:Channel("Shelly Teleports")


STPS:Button("Giant Ice Shelly", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(718, -3, -1912))
end)
STPS:Button("Giant Ice Shelly 2", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(556, -3, -1708))
end)
STPS:Button("Giant Shelly", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(83, -3, -582))
end)


local PTPS = serv:Channel("Place Teleports")


PTPS:Button("First Floating Island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-129, 237, -748))
end)
PTPS:Button("Second Floating Island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-549, 311, -1211))
end)
PTPS:Button("Third Floating Island", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1132, 309, -1201))
end)
PTPS:Button("Unrecheable Place (Good for a base)", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1031, -115, -657))
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


local XPTPS = serv:Channel("XP Teleports")


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

