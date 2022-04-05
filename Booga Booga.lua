local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("WarriorHub | Booga Booga Classic", "BloodTheme")

local Main = Window:NewTab("Main")
local MainS = Main:NewSection("Main | Read module descriptions")

MainS:NewButton("Speed", "Hold X to use after pressing", function()
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

MainS:NewButton("Infinity Jump", "Lets you jump in mid-air", function()
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
MainS:NewButton("Auto Break", "Hold V to use after pressing", function()
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local breaking=false
    mouse.KeyDown:connect(function(key)
        if key == "v" then
            breaking = true
            while breaking and wait(0.1) do
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
MainS:NewButton("Remove Rain", "Removes rain", function()
    if workspace:FindFirstChild('RainPart') ~= nil then
        workspace.RainPart:Destroy()
        game.ReplicatedStorage.Sounds.Nature.Rain:Stop()
        game.ReplicatedStorage.Sounds.Nature.Thunder:Stop()
        game.Lighting.Rain:Destroy()
        game.ReplicatedStorage.Skies.Shine:Clone().Parent = game.Lighting
    end
end)

local Mob = Window:NewTab("Shelly Teleports")
local MobSection = Mob:NewSection("Useful to get Goober Bag")

MobSection:NewButton("Big Ice Shelly", "Teleports you to the selected shelly", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(718, -3, -1912))
end)
MobSection:NewButton("Big Ice Shelly 2", "Teleports you to the selected shelly", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(556, -3, -1708))
end)
MobSection:NewButton("Giant Shelly", "Teleports you to the selected shelly", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(83, -3, -582))
end)

local Places = Window:NewTab("Place Teleports")
local PlaceSection = Places:NewSection("Places")

PlaceSection:NewButton("First Floating Island", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-129, 237, -748))
end)
PlaceSection:NewButton("Second Floating Island", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-549, 311, -1211))
end)
PlaceSection:NewButton("Third Floating Island", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1132, 309, -1201))
end)
PlaceSection:NewButton("Unrecheable Place to make a Base", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1031, -115, -657))
end)
PlaceSection:NewButton("Ancient Cave", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1119, -179, -736))
end)
PlaceSection:NewButton("Adurite Cave", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1131, -153, 1190))
end)

local XP = Window:NewTab("XP Teleports")
local XPSection = XP:NewSection("Breaking this things you can get xp orbs")

XPSection:NewButton("Ancient Tree (Best)", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-549, 310, -1205))
end)
XPSection:NewButton("Ancient Feather Tree", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-156, 237, -837))
end)
XPSection:NewButton("Double Moai", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-46, 237, -710))
end)
XPSection:NewButton("Moai", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(111, 0, -781))
end)
XPSection:NewButton("Moai 2", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1070, -196, -786))
end)
XPSection:NewButton("Moai 3", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1152, -152, 1178))
end)
XPSection:NewButton("Moai 4", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-215, -3, -266))
end)
XPSection:NewButton("Moai 5", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-1152, 309, -1212))
end)
XPSection:NewButton("Moai 6", "Teleports you to the selected place", function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(233, -2, -654))
end)



local Recipes = Window:NewTab("Adurite Recipes")
local Adurite = Recipes:NewSection("Adurite Items")

Adurite:NewButton("Adurite Bag", "", function()
    local A_1   = "Adurite Bag"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Adurite:NewButton("War Hammer", "", function()
    local A_1   = "War Hammer"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Adurite:NewButton("Adurite Pick", "", function()
    local A_1   = "Adurite Pick"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Adurite:NewButton("Adurite Axe", "", function()
    local A_1   = "Adurite Axe"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Adurite:NewButton("Adurite Helmet", "", function()
    local A_1   = "Adurite Helmet"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Adurite:NewButton("Adurite Chestplate", "", function()
    local A_1   = "Adurite Chestplate"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Adurite:NewButton("Adurite Greaves", "", function()
    local A_1   = "Adurite Greaves"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)

local CRecipes = Window:NewTab("Crystal Recipes")
local Crystal = CRecipes:NewSection("Crystal Items")

Crystal:NewButton("Crystal Bag", "", function()
    local A_1   = "Crystal Bag"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Crystal:NewButton("Crystal Stick", "", function()
    local A_1   = "Crystal Stick"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Crystal:NewButton("Crystal Pick", "", function()
    local A_1   = "Crystal Pick"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Crystal:NewButton("Crystal Axe", "", function()
    local A_1   = "Crystal Axe"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Crystal:NewButton("Crystal Crown", "", function()
    local A_1   = "Crystal Crown"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Crystal:NewButton("Crystal Chestplate", "", function()
    local A_1   = "Crystal Chestplate"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Crystal:NewButton("Crystal Greaves", "", function()
    local A_1   = "Crystal Greaves"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)

local MRecipes = Window:NewTab("Magnetite Recipes")
local Magnetite = MRecipes:NewSection("Magnetite Items")

Magnetite:NewButton("Magnetite Bag", "", function()
    local A_1   = "Magnetite Bag"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Magnetite:NewButton("Magnetite Stick", "", function()
    local A_1   = "Magnetite Stick"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Magnetite:NewButton("Magnetite Pick", "", function()
    local A_1   = "Magnetite Pick"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Magnetite:NewButton("Magnetite Axe", "", function()
    local A_1   = "Magnetite Axe"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Magnetite:NewButton("Magnetite Mask", "", function()
    local A_1   = "Magnetite Mask"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Magnetite:NewButton("Magnetite Chestplate", "", function()
    local A_1   = "Magnetite Chestplate"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
Magnetite:NewButton("Magnetite Greaves", "", function()
    local A_1   = "Magnetite Greaves"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)

local ORecipes = Window:NewTab("Other Recipes")
local OtherR = ORecipes:NewSection("Other Items")
OtherR:NewButton("Goober Bag", "", function()
    local A_1   = "Goober Bag"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)
OtherR:NewButton("Radio Pack", "", function()
    local A_1   = "Radio Pack"
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)

local OtherRC = ORecipes:NewSection("Write the name of the item to Craft")
OtherRC:NewTextBox("Write item name", "", function(ItemName)
    local A_1   = ItemName
    local Event = game:GetService("ReplicatedStorage").Events.CraftItem
    Event:FireServer(A_1)
end)



local Others = Window:NewTab("Others")
local OthersSection = Others:NewSection("Others")
OthersSection:NewButton("Infinity Yield", "Executes Infinity Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
OthersSection:NewButton("Unnamed ESP", "Executes Unnamed ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
end)
OthersSection:NewKeybind("Toggle GUI", "Toggles GUI", Enum.KeyCode.RSHIFT, function()
    Library:ToggleUI()
end)
