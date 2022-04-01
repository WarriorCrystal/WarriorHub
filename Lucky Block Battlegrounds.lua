    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Lucky Block Battlegrounds made by WarriorCrystal#3990", "DarkTheme")

    -- MAIN
    local Main = Window:NewTab("Lucky Blocks")
    local MainSection = Main:NewSection("Lucky Blocks")

    MainSection:NewButton("Open normal lucky block", "opens a normal lucky block", function()
        game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
    end)
        MainSection:NewButton("Open super lucky block", "opens a super lucky block", function()
            game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
        end)
            MainSection:NewButton("Open diamond lucky block", "opens a diamond lucky block", function()
                game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
            end)
                MainSection:NewButton("Open rainbow lucky block", "opens a rainbow lucky block", function()
                    game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
                end)
                MainSection:NewButton("Open galaxy lucky block", "opens a galaxy lucky block", function()
                    game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
                end)


    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

    -- OTHERS
        local Others = Window:NewTab("Others")
        local OthersSection = Others:NewSection("Others")
            OthersSection:NewButton("Infinity Yield", "Executes Infinity Yield", function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
            end)
            OthersSection:NewButton("Unnamed ESP", "Executes Unnamed ESP", function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua", true))()
            end)
            OthersSection:NewKeybind("Toggle GUI", "Keybind for toggling the GUI", Enum.KeyCode.RSHIFT, function()
            	Library:ToggleUI()
            end)
