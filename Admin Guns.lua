local VLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/vep1032/VepStuff/main/VL"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local inviteModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
local s = VLib:Window("Warrior Hub", "Admin Guns", "W")
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
local function touch(object)
    spawn(function()
        firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, object, 0)
        firetouchinterest(game:GetService("Players").LocalPlayer.Character.Head, object, 1)
    end)
end


--Guns


local Guns = s:Tab("Guns")
Guns:Button("Get almost all Guns",function()
    spawn(function()
        for i, v in pairs(game:GetService("Workspace").Interaction.Guns:GetChildren()) do
            touch(v.Hitbox)
        end
    end)
end)
Guns:Button("Get Pin",function()
    touch(game:GetService("Workspace").Interaction.Pin)
end)
Guns:Label("Pin Required, Press with it in hand")
Guns:Button("Get Bubble Gun",function()
    touch(game:GetService("Workspace").Interaction.BubbleGun.PinHitbox)
end)
Guns:Button("Get Wheels",function()
    spawn(function()
        for i, v in pairs(game:GetService("Workspace").Interaction.WheelchairPuzzle.Wheels:GetChildren()) do
            touch(v)
        end
    end)
end)
Guns:Label("Wheels Required, Press twice with wheels in hand")
Guns:Button("Get Wheelchair Gun",function()
    touch(game:GetService("Workspace").Interaction.WheelchairPuzzle.WheelChair.Hitbox)
end)
Guns:Button("Get Lever",function()
    spawn(function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Interaction.LeverTouch.CFrame
        wait(0.20)
        fireproximityprompt(game:GetService("Workspace").Interaction.LeverTouch.ProximityPrompt)
    end)
end)
Guns:Label("Lever Required, Press with it in hand")
Guns:Button("Get Infection Gun",function()
    touch(game:GetService("Workspace").Interaction.Lever.Hitbox)
end)
Guns:Label("Shoot yourself with Marble Gun, then press")
Guns:Button("Get Soccerball Gun",function()
    touch(game:GetService("Workspace").Interaction.GoalTouch)
end)

