local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local inviteModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
local s = VLib:Window("Warrior Hub", "Raise a Floppa", "W")
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
        {Title = "Credits", Description = "Vinyxu for Discord Prompt, BocusLuke for Notifications and me lol"},
        {OutlineColor = getgenv().notifColor,Time = 5, Type = "default"}
    )
end)


--Floppa


local Floppa = s:Tab("Floppa")
getgenv().autoClick = false
Floppa:Toggle("Auto Click Floppa",function(t)
    getgenv().autoClick = t
    spawn(function()
        while wait() and getgenv().autoClick == true do
            fireclickdetector(game:GetService("Workspace").Floppa.ClickDetector)
        end
    end)
end)
getgenv().autoPet = false
getgenv().autoPetHapiness = 65
Floppa:Toggle("Auto Pet Floppa",function(t)
    getgenv().autoPet = t
    spawn(function()
        while wait() and getgenv().autoPet == true do
            if game:GetService("Workspace").Floppa.Configuration.Mood.Value < getgenv().autoPetHapiness then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Floppa.HumanoidRootPart.CFrame
                fireproximityprompt(game:GetService("Workspace").Floppa.HumanoidRootPart.PetPrompt)
            end
        end
    end)
end)
Floppa:Slider("Auto Pet Happiness",1,85,65,function(t)
    getgenv().autoPetHapiness = t
end)


--Collect


local Collect = s:Tab("Collecting")
getgenv().autoCollect = false
Collect:Toggle("Auto Collect Money and Bags",function(t)
    getgenv().autoCollect = t
    spawn(function()
        while wait() and getgenv().autoCollect == true do
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v ~= nil and v.Name == "Money" or v.Name == "Money Bag" then
                    print(v)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v, 0)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v, 1)
                end
            end
        end
    end)
end)
getgenv().autoMeteorites = false
Collect:Toggle("Auto Collect Meteorites",function(t)
    getgenv().autoMeteorites = t
    spawn(function()
        while wait(0) and getgenv().autoMeteorites == true do
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v ~= nil and v.Name == "Meteorite" then
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Handle, 0)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Handle, 1)
                end
            end
        end
    end)
end)
getgenv().autoFertilizers = false
Collect:Toggle("Auto Collect Fertilizers",function(t)
    getgenv().autoFertilizers = t
    spawn(function()
        while wait(0) and getgenv().autoFertilizers == true do
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v ~= nil and v.Name == "Fertilizer" then
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Handle, 0)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Handle, 1)
                end
            end
        end
    end)
end)
getgenv().autoMushrooms = false
Collect:Toggle("Auto Collect Mushrooms",function(t)
    getgenv().autoMushrooms = t
    spawn(function()
        while wait(0) and getgenv().autoMushrooms == true do
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v ~= nil and v.Name == "Mushroom" then
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Handle, 0)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Handle, 1)
                end
            end
            for _, v in pairs(game:GetService("Workspace").Outside:GetChildren()) do
                if v ~= nil and v.Name == "Mushroom" and v.Transparency == 0 then
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    fireproximityprompt(v.ForagePrompt)
                end
            end
        end
    end)
end)
getgenv().autoPotions = false
Collect:Toggle("Auto Collect Potions",function(t)
    getgenv().autoPotions = t
    spawn(function()
        while wait(0) and getgenv().autoPotions == true do
            for _, v in pairs(game:GetService("Workspace"):GetChildren()) do
                if v ~= nil and v.Name == "Speed Potion" or v.Name == "Sanity Potion" then
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Handle, 0)
                    firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, v.Handle, 1)
                end
            end
        end
    end)
end)


--Altars


local Altars = s:Tab("Altars")
getgenv().autoPray = false
Altars:Toggle("Auto Pray Altar",function(t)
    getgenv().autoPray = t
    spawn(function()
        while wait(1) and getgenv().autoPray == true do
            if game:GetService("Workspace").Altar ~= nil and game:GetService("Players").LocalPlayer.leaderstats2.Money.Value > game:GetService("Workspace").Altar["Thin Wall"].Cost.Value then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Altar["Thin Wall"].CFrame
                fireproximityprompt(game:GetService("Workspace").Altar["Thin Wall"].ProximityPrompt)
            end
        end
    end)
end)
Altars:Label("Cursed Altar Required")
getgenv().autoSacrifice = false
Altars:Toggle("Auto Sacrifice Babys",function(t)
    getgenv().autoSacrifice = t
    spawn(function()
        while wait(1) and getgenv().autoSacrifice == true do
            if game:GetService("Workspace")["Cursed Altar"] ~= nil and game:GetService("Workspace")["Baby Floppa"] ~= nil then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Cursed Altar"]["Thin Wall"].CFrame
                fireproximityprompt(game:GetService("Workspace")["Cursed Altar"]["Thin Wall"].ProximityPrompt)
            end
        end
    end)
end)


--Player


local Player = s:Tab("Player")
Player:Dropdown("Teleport",{"Backrooms Trader", "Alien Trader", "Cauldron", "House"},function(t)
    if t == "Backrooms Trader" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Backrooms["Backrooms Merchant"].Part.CFrame
    end
    if t == "Alien Trader" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Alien["Right Arm"].CFrame
    end
    if t == "Cauldron" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Jinx' Cauldron"].Part.CFrame
    end
    if t == "House" then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").House.Parts.FloppaBlocker.CFrame
    end
end)
getgenv().GJumpPower = 50
Player:Button("Infinity Jump",function()
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
Player:Slider("Jump Power", 0,300,50, function(t)
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = t
    getgenv().GJumpPower = t
end)
Player:Slider("WalkSpeed", 0,300,16, function(t)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = t
end)
Player:Slider("Gravity", 0,300,192.2, function(t)
    game:GetService("Workspace").Gravity = t
end)
