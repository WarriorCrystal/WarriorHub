-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Open = Instance.new("TextButton")
local Booga = Instance.new("Frame")
local BoogaTop = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local SpeedBind = Instance.new("TextBox")
local AutoBreak = Instance.new("TextButton")
local Breakkey = Instance.new("TextBox")
local InfinityChest = Instance.new("TextButton")
local AutoEatbtn = Instance.new("TextButton")
local RemoveAllEffectsbtn = Instance.new("TextButton")
local CraftAnyItem = Instance.new("TextButton")
local CraftItem = Instance.new("TextBox")
local RemoveRainbtn = Instance.new("TextButton")
local TpSpambtn = Instance.new("TextButton")
local AutoEatFoodNamekb = Instance.new("TextBox")
local TpSpamPlayerNamekb = Instance.new("TextBox")
local AutoEatkb = Instance.new("TextBox")
local Recipes = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local Booga2 = Instance.new("Frame")
local BoogaTop2 = Instance.new("Frame")
local Exit2 = Instance.new("TextButton")
local AduriteHelmet = Instance.new("TextButton")
local AduriteDivider = Instance.new("Frame")
local AduriteChestplate = Instance.new("TextButton")
local AduritePick = Instance.new("TextButton")
local AduriteGreaves = Instance.new("TextButton")
local AduriteBlade = Instance.new("TextButton")
local AduriteAxe = Instance.new("TextButton")
local AduriteBag = Instance.new("TextButton")
local CrystalCrown = Instance.new("TextButton")
local AduriteDivider2 = Instance.new("Frame")
local MagnetiteDivider = Instance.new("Frame")
local MagnetiteDivider2 = Instance.new("Frame")
local MagnetiteRock = Instance.new("TextButton")
local MagnetiteHalo = Instance.new("TextButton")
local MagnetiteChestplate = Instance.new("TextButton")
local MagnetiteAxe = Instance.new("TextButton")
local MagnetiteBag = Instance.new("TextButton")
local MagnetiteLegs = Instance.new("TextButton")
local MagnetitePick = Instance.new("TextButton")
local CrystalChestplate = Instance.new("TextButton")
local CrystalDivider2 = Instance.new("Frame")
local CrystalDivider = Instance.new("Frame")
local CrystalBag = Instance.new("TextButton")
local CrystalGreaves = Instance.new("TextButton")
local CrystalStick = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui

Open.Name = "Open"
Open.Parent = ScreenGui
Open.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
Open.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
Open.BorderSizePixel = 2
Open.Position = UDim2.new(0.433682919, 0, 0.0281030443, 0)
Open.Size = UDim2.new(0, 151, 0, 26)
Open.Font = Enum.Font.SourceSansSemibold
Open.Text = "Open/Close"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true

Booga.Name = "Booga"
Booga.Parent = ScreenGui
Booga.Active = true
Booga.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
Booga.BackgroundTransparency = 0.30000001192093
Booga.BorderColor3 = Color3.new(1, 0, 0.498039)
Booga.BorderSizePixel = 2
Booga.Position = UDim2.new(1.70000005, 1, 1.70000005, 1)
Booga.Size = UDim2.new(0, 474, 0, 468)

BoogaTop.Name = "BoogaTop"
BoogaTop.Parent = Booga
BoogaTop.Active = true
BoogaTop.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
BoogaTop.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
BoogaTop.BorderSizePixel = 2
BoogaTop.Size = UDim2.new(0, 474, 0, 27)

Title.Name = "Title"
Title.Parent = BoogaTop
Title.Active = true
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.00210970454, 0, 0, 0)
Title.Size = UDim2.new(0, 473, 0, 27)
Title.Font = Enum.Font.SourceSansSemibold
Title.Text = "Booga Bitches Revamp V2"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = Booga
Exit.BackgroundColor3 = Color3.new(0.901961, 0.380392, 0.380392)
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.915611804, 0, 0.00854700897, 0)
Exit.Size = UDim2.new(0, 28, 0, 19)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1, 1, 1)
Exit.TextSize = 14

Speed.Name = "Speed"
Speed.Parent = Booga
Speed.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
Speed.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
Speed.BorderSizePixel = 2
Speed.Position = UDim2.new(0.035864979, 0, 0.0726495758, 0)
Speed.Size = UDim2.new(0, 116, 0, 27)
Speed.Font = Enum.Font.SourceSansSemibold
Speed.Text = "Speed"
Speed.TextColor3 = Color3.new(1, 1, 1)
Speed.TextScaled = true
Speed.TextSize = 14
Speed.TextWrapped = true

SpeedBind.Name = "SpeedBind"
SpeedBind.Parent = Booga
SpeedBind.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
SpeedBind.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
SpeedBind.BorderSizePixel = 2
SpeedBind.Position = UDim2.new(0.035864979, 0, 0.151709408, 0)
SpeedBind.Size = UDim2.new(0, 116, 0, 27)
SpeedBind.Font = Enum.Font.SourceSans
SpeedBind.Text = "Keybind"
SpeedBind.TextColor3 = Color3.new(1, 1, 1)
SpeedBind.TextScaled = true
SpeedBind.TextSize = 14
SpeedBind.TextWrapped = true

AutoBreak.Name = "AutoBreak"
AutoBreak.Parent = Booga
AutoBreak.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AutoBreak.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AutoBreak.BorderSizePixel = 2
AutoBreak.Position = UDim2.new(0.700421929, 0, 0.0726495758, 0)
AutoBreak.Size = UDim2.new(0, 116, 0, 27)
AutoBreak.Font = Enum.Font.SourceSansSemibold
AutoBreak.Text = "Autobreak"
AutoBreak.TextColor3 = Color3.new(1, 1, 1)
AutoBreak.TextScaled = true
AutoBreak.TextSize = 14
AutoBreak.TextWrapped = true

Breakkey.Name = "Breakkey"
Breakkey.Parent = Booga
Breakkey.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
Breakkey.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
Breakkey.BorderSizePixel = 2
Breakkey.Position = UDim2.new(0.700421929, 0, 0.149572656, 0)
Breakkey.Size = UDim2.new(0, 116, 0, 27)
Breakkey.Font = Enum.Font.SourceSans
Breakkey.Text = "Keybind"
Breakkey.TextColor3 = Color3.new(1, 1, 1)
Breakkey.TextScaled = true
Breakkey.TextSize = 14
Breakkey.TextWrapped = true

AutoEatbtn.Name = "AutoEatbtn"
AutoEatbtn.Parent = Booga
AutoEatbtn.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AutoEatbtn.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AutoEatbtn.BorderSizePixel = 2
AutoEatbtn.Position = UDim2.new(0.702531695, 0, 0.566239357, 0)
AutoEatbtn.Size = UDim2.new(0, 116, 0, 27)
AutoEatbtn.Font = Enum.Font.SourceSansSemibold
AutoEatbtn.Text = "Auto Eat"
AutoEatbtn.TextColor3 = Color3.new(1, 1, 1)
AutoEatbtn.TextScaled = true
AutoEatbtn.TextSize = 14
AutoEatbtn.TextWrapped = true

RemoveAllEffectsbtn.Name = "RemoveAllEffectsbtn"
RemoveAllEffectsbtn.Parent = Booga
RemoveAllEffectsbtn.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
RemoveAllEffectsbtn.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
RemoveAllEffectsbtn.BorderSizePixel = 2
RemoveAllEffectsbtn.Position = UDim2.new(0.702531636, 0, 0.410256416, 0)
RemoveAllEffectsbtn.Size = UDim2.new(0, 116, 0, 27)
RemoveAllEffectsbtn.Font = Enum.Font.SourceSansSemibold
RemoveAllEffectsbtn.Text = "Remove All Effects"
RemoveAllEffectsbtn.TextColor3 = Color3.new(1, 1, 1)
RemoveAllEffectsbtn.TextScaled = true
RemoveAllEffectsbtn.TextSize = 14
RemoveAllEffectsbtn.TextWrapped = true

CraftAnyItem.Name = "CraftAnyItem"
CraftAnyItem.Parent = Booga
CraftAnyItem.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
CraftAnyItem.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
CraftAnyItem.BorderSizePixel = 2
CraftAnyItem.Position = UDim2.new(0.0421940945, 0, 0.232905984, 0)
CraftAnyItem.Size = UDim2.new(0, 116, 0, 27)
CraftAnyItem.Font = Enum.Font.SourceSansSemibold
CraftAnyItem.Text = "Craft Any Item"
CraftAnyItem.TextColor3 = Color3.new(1, 1, 1)
CraftAnyItem.TextScaled = true
CraftAnyItem.TextSize = 14
CraftAnyItem.TextWrapped = true

CraftItem.Name = "CraftItem"
CraftItem.Parent = Booga
CraftItem.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
CraftItem.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
CraftItem.BorderSizePixel = 2
CraftItem.Position = UDim2.new(0.035864979, 0, 0.316239327, 0)
CraftItem.Size = UDim2.new(0, 116, 0, 27)
CraftItem.Font = Enum.Font.SourceSans
CraftItem.Text = "Item Name"
CraftItem.TextColor3 = Color3.new(1, 1, 1)
CraftItem.TextScaled = true
CraftItem.TextSize = 14
CraftItem.TextWrapped = true




RemoveRainbtn.Name = "RemoveRainbtn"
RemoveRainbtn.Parent = Booga
RemoveRainbtn.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
RemoveRainbtn.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
RemoveRainbtn.BorderSizePixel = 2
RemoveRainbtn.Position = UDim2.new(0.035864979, 0, 0.482905984, 0)
RemoveRainbtn.Size = UDim2.new(0, 116, 0, 27)
RemoveRainbtn.Font = Enum.Font.SourceSansSemibold
RemoveRainbtn.Text = "Remove Rain"
RemoveRainbtn.TextColor3 = Color3.new(1, 1, 1)
RemoveRainbtn.TextScaled = true
RemoveRainbtn.TextSize = 14
RemoveRainbtn.TextWrapped = true

TpSpambtn.Name = "TpSpambtn"
TpSpambtn.Parent = Booga
TpSpambtn.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
TpSpambtn.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
TpSpambtn.BorderSizePixel = 2
TpSpambtn.Position = UDim2.new(0.362869203, 0, 0.241452992, 0)
TpSpambtn.Size = UDim2.new(0, 116, 0, 27)
TpSpambtn.Font = Enum.Font.SourceSansSemibold
TpSpambtn.Text = "TP Spam"
TpSpambtn.TextColor3 = Color3.new(1, 1, 1)
TpSpambtn.TextScaled = true
TpSpambtn.TextSize = 14
TpSpambtn.TextWrapped = true




AutoEatFoodNamekb.Name = "AutoEatFoodNamekb"
AutoEatFoodNamekb.Parent = Booga
AutoEatFoodNamekb.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AutoEatFoodNamekb.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AutoEatFoodNamekb.BorderSizePixel = 2
AutoEatFoodNamekb.Position = UDim2.new(0.702531636, 0, 0.638888896, 0)
AutoEatFoodNamekb.Size = UDim2.new(0, 116, 0, 27)
AutoEatFoodNamekb.Font = Enum.Font.SourceSans
AutoEatFoodNamekb.Text = "Item Name"
AutoEatFoodNamekb.TextColor3 = Color3.new(1, 1, 1)
AutoEatFoodNamekb.TextScaled = true
AutoEatFoodNamekb.TextSize = 14
AutoEatFoodNamekb.TextWrapped = true

TpSpamPlayerNamekb.Name = "TpSpamPlayerNamekb"
TpSpamPlayerNamekb.Parent = Booga
TpSpamPlayerNamekb.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
TpSpamPlayerNamekb.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
TpSpamPlayerNamekb.BorderSizePixel = 2
TpSpamPlayerNamekb.Position = UDim2.new(0.35864979, 0, 0.326923072, 0)
TpSpamPlayerNamekb.Size = UDim2.new(0, 116, 0, 27)
TpSpamPlayerNamekb.Font = Enum.Font.SourceSans
TpSpamPlayerNamekb.Text = "Player Name"
TpSpamPlayerNamekb.TextColor3 = Color3.new(1, 1, 1)
TpSpamPlayerNamekb.TextScaled = true
TpSpamPlayerNamekb.TextSize = 14
TpSpamPlayerNamekb.TextWrapped = true




AutoEatkb.Name = "AutoEatkb"
AutoEatkb.Parent = Booga
AutoEatkb.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AutoEatkb.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AutoEatkb.BorderSizePixel = 2
AutoEatkb.Position = UDim2.new(0.702531636, 0, 0.715811968, 0)
AutoEatkb.Size = UDim2.new(0, 116, 0, 27)
AutoEatkb.Font = Enum.Font.SourceSans
AutoEatkb.Text = "Keybind"
AutoEatkb.TextColor3 = Color3.new(1, 1, 1)
AutoEatkb.TextScaled = true
AutoEatkb.TextSize = 14
AutoEatkb.TextWrapped = true

Recipes.Name = "Recipes"
Recipes.Parent = Booga
Recipes.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
Recipes.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
Recipes.BorderSizePixel = 2
Recipes.Position = UDim2.new(0.360759497, 0, 0.839743614, 0)
Recipes.Size = UDim2.new(0, 116, 0, 27)
Recipes.Font = Enum.Font.SourceSansSemibold
Recipes.Text = "Recipes"
Recipes.TextColor3 = Color3.new(1, 1, 1)
Recipes.TextScaled = true
Recipes.TextSize = 14
Recipes.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Booga
Credits.Active = true
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.BackgroundTransparency = 1
Credits.BorderColor3 = Color3.new(1, 1, 0)
Credits.BorderSizePixel = 2
Credits.Position = UDim2.new(0.00210970454, 0, 0.929487169, 0)
Credits.Size = UDim2.new(0, 473, 0, 34)
Credits.Font = Enum.Font.SourceSansSemibold
Credits.Text = "GUI Made by Miu Iruma#4693, Updated by WarriorCrystal#3990"
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.TextScaled = true
Credits.TextSize = 14
Credits.TextWrapped = true

Booga2.Name = "Booga2"
Booga2.Parent = ScreenGui
Booga2.Active = true
Booga2.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
Booga2.BackgroundTransparency = 0.30000001192093
Booga2.BorderColor3 = Color3.new(1, 0, 0.498039)
Booga2.BorderSizePixel = 2
Booga2.Position = UDim2.new(1.70000005, 1, 1.70000005, 1)
Booga2.Size = UDim2.new(0, 474, 0, 468)

BoogaTop2.Name = "BoogaTop2"
BoogaTop2.Parent = Booga2
BoogaTop2.Active = true
BoogaTop2.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
BoogaTop2.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
BoogaTop2.BorderSizePixel = 2
BoogaTop2.Size = UDim2.new(0, 474, 0, 27)

Exit2.Name = "Exit2"
Exit2.Parent = Booga2
Exit2.BackgroundColor3 = Color3.new(0.901961, 0.380392, 0.380392)
Exit2.BorderSizePixel = 0
Exit2.Position = UDim2.new(0.915611804, 0, 0.00854700897, 0)
Exit2.Size = UDim2.new(0, 28, 0, 19)
Exit2.Font = Enum.Font.SourceSans
Exit2.Text = "X"
Exit2.TextColor3 = Color3.new(1, 1, 1)
Exit2.TextSize = 14

AduriteHelmet.Name = "AduriteHelmet"
AduriteHelmet.Parent = Booga2
AduriteHelmet.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AduriteHelmet.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AduriteHelmet.BorderSizePixel = 2
AduriteHelmet.Position = UDim2.new(0.03164557, 0, 0.126068383, 0)
AduriteHelmet.Size = UDim2.new(0, 93, 0, 27)
AduriteHelmet.Font = Enum.Font.SourceSansSemibold
AduriteHelmet.Text = "Adurite Helmet"
AduriteHelmet.TextColor3 = Color3.new(1, 1, 1)
AduriteHelmet.TextScaled = true
AduriteHelmet.TextSize = 14
AduriteHelmet.TextWrapped = true

AduriteDivider.Name = "AduriteDivider"
AduriteDivider.Parent = Booga2
AduriteDivider.Active = true
AduriteDivider.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AduriteDivider.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AduriteDivider.BorderSizePixel = 2
AduriteDivider.Position = UDim2.new(0.03164557, 0, 0.0769230798, 0)
AduriteDivider.Size = UDim2.new(0, 447, 0, 11)

AduriteChestplate.Name = "AduriteChestplate"
AduriteChestplate.Parent = Booga2
AduriteChestplate.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AduriteChestplate.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AduriteChestplate.BorderSizePixel = 2
AduriteChestplate.Position = UDim2.new(0.261603385, 0, 0.126068383, 0)
AduriteChestplate.Size = UDim2.new(0, 93, 0, 27)
AduriteChestplate.Font = Enum.Font.SourceSansSemibold
AduriteChestplate.Text = "Adurite Chestplate"
AduriteChestplate.TextColor3 = Color3.new(1, 1, 1)
AduriteChestplate.TextScaled = true
AduriteChestplate.TextSize = 14
AduriteChestplate.TextWrapped = true

AduritePick.Name = "AduritePick"
AduritePick.Parent = Booga2
AduritePick.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AduritePick.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AduritePick.BorderSizePixel = 2
AduritePick.Position = UDim2.new(0.748945177, 0, 0.121794872, 0)
AduritePick.Size = UDim2.new(0, 93, 0, 27)
AduritePick.Font = Enum.Font.SourceSansSemibold
AduritePick.Text = "Adurite Pick"
AduritePick.TextColor3 = Color3.new(1, 1, 1)
AduritePick.TextScaled = true
AduritePick.TextSize = 14
AduritePick.TextWrapped = true

AduriteGreaves.Name = "AduriteGreaves"
AduriteGreaves.Parent = Booga2
AduriteGreaves.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AduriteGreaves.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AduriteGreaves.BorderSizePixel = 2
AduriteGreaves.Position = UDim2.new(0.506329119, 0, 0.123931624, 0)
AduriteGreaves.Size = UDim2.new(0, 93, 0, 27)
AduriteGreaves.Font = Enum.Font.SourceSansSemibold
AduriteGreaves.Text = "Adurite Greaves"
AduriteGreaves.TextColor3 = Color3.new(1, 1, 1)
AduriteGreaves.TextScaled = true
AduriteGreaves.TextSize = 14
AduriteGreaves.TextWrapped = true

AduriteBlade.Name = "AduriteBlade"
AduriteBlade.Parent = Booga2
AduriteBlade.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AduriteBlade.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AduriteBlade.BorderSizePixel = 2
AduriteBlade.Position = UDim2.new(0.03164557, 0, 0.211538464, 0)
AduriteBlade.Size = UDim2.new(0, 93, 0, 27)
AduriteBlade.Font = Enum.Font.SourceSansSemibold
AduriteBlade.Text = "Adurite Hammer"
AduriteBlade.TextColor3 = Color3.new(1, 1, 1)
AduriteBlade.TextScaled = true
AduriteBlade.TextSize = 14
AduriteBlade.TextWrapped = true

AduriteAxe.Name = "AduriteAxe"
AduriteAxe.Parent = Booga2
AduriteAxe.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AduriteAxe.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AduriteAxe.BorderSizePixel = 2
AduriteAxe.Position = UDim2.new(0.261603385, 0, 0.211538464, 0)
AduriteAxe.Size = UDim2.new(0, 93, 0, 27)
AduriteAxe.Font = Enum.Font.SourceSansSemibold
AduriteAxe.Text = "Adurite Axe"
AduriteAxe.TextColor3 = Color3.new(1, 1, 1)
AduriteAxe.TextScaled = true
AduriteAxe.TextSize = 14
AduriteAxe.TextWrapped = true

AduriteBag.Name = "AduriteBag"
AduriteBag.Parent = Booga2
AduriteBag.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AduriteBag.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AduriteBag.BorderSizePixel = 2
AduriteBag.Position = UDim2.new(0.506329119, 0, 0.209401712, 0)
AduriteBag.Size = UDim2.new(0, 93, 0, 27)
AduriteBag.Font = Enum.Font.SourceSansSemibold
AduriteBag.Text = "AduriteBag"
AduriteBag.TextColor3 = Color3.new(1, 1, 1)
AduriteBag.TextScaled = true
AduriteBag.TextSize = 14
AduriteBag.TextWrapped = true

CrystalCrown.Name = "CrystalCrown"
CrystalCrown.Parent = Booga2
CrystalCrown.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
CrystalCrown.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
CrystalCrown.BorderSizePixel = 2
CrystalCrown.Position = UDim2.new(0.719409287, 0, 0.623931646, 0)
CrystalCrown.Size = UDim2.new(0, 93, 0, 27)
CrystalCrown.Font = Enum.Font.SourceSansSemibold
CrystalCrown.Text = "Crystal Crown"
CrystalCrown.TextColor3 = Color3.new(1, 1, 1)
CrystalCrown.TextScaled = true
CrystalCrown.TextSize = 14
CrystalCrown.TextWrapped = true

AduriteDivider2.Name = "AduriteDivider2"
AduriteDivider2.Parent = Booga2
AduriteDivider2.Active = true
AduriteDivider2.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
AduriteDivider2.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
AduriteDivider2.BorderSizePixel = 2
AduriteDivider2.Position = UDim2.new(0.0232067518, 0, 0.288461536, 0)
AduriteDivider2.Size = UDim2.new(0, 447, 0, 11)

MagnetiteDivider.Name = "MagnetiteDivider"
MagnetiteDivider.Parent = Booga2
MagnetiteDivider.Active = true
MagnetiteDivider.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
MagnetiteDivider.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
MagnetiteDivider.BorderSizePixel = 2
MagnetiteDivider.Position = UDim2.new(0.0232067518, 0, 0.324786335, 0)
MagnetiteDivider.Size = UDim2.new(0, 447, 0, 11)

MagnetiteDivider2.Name = "MagnetiteDivider2"
MagnetiteDivider2.Parent = Booga2
MagnetiteDivider2.Active = true
MagnetiteDivider2.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
MagnetiteDivider2.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
MagnetiteDivider2.BorderSizePixel = 2
MagnetiteDivider2.Position = UDim2.new(0.0147679336, 0, 0.538461566, 0)
MagnetiteDivider2.Size = UDim2.new(0, 447, 0, 11)

MagnetiteRock.Name = "MagnetiteRock"
MagnetiteRock.Parent = Booga2
MagnetiteRock.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
MagnetiteRock.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
MagnetiteRock.BorderSizePixel = 2
MagnetiteRock.Position = UDim2.new(0.03164557, 0, 0.455128193, 0)
MagnetiteRock.Size = UDim2.new(0, 93, 0, 27)
MagnetiteRock.Font = Enum.Font.SourceSansSemibold
MagnetiteRock.Text = "Magnetite Stick"
MagnetiteRock.TextColor3 = Color3.new(1, 1, 1)
MagnetiteRock.TextScaled = true
MagnetiteRock.TextSize = 14
MagnetiteRock.TextWrapped = true

MagnetiteHalo.Name = "MagnetiteHalo"
MagnetiteHalo.Parent = Booga2
MagnetiteHalo.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
MagnetiteHalo.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
MagnetiteHalo.BorderSizePixel = 2
MagnetiteHalo.Position = UDim2.new(0.03164557, 0, 0.369658113, 0)
MagnetiteHalo.Size = UDim2.new(0, 93, 0, 27)
MagnetiteHalo.Font = Enum.Font.SourceSansSemibold
MagnetiteHalo.Text = "Magnetite Mask"
MagnetiteHalo.TextColor3 = Color3.new(1, 1, 1)
MagnetiteHalo.TextScaled = true
MagnetiteHalo.TextSize = 14
MagnetiteHalo.TextWrapped = true

MagnetiteChestplate.Name = "MagnetiteChestplate"
MagnetiteChestplate.Parent = Booga2
MagnetiteChestplate.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
MagnetiteChestplate.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
MagnetiteChestplate.BorderSizePixel = 2
MagnetiteChestplate.Position = UDim2.new(0.261603385, 0, 0.369658113, 0)
MagnetiteChestplate.Size = UDim2.new(0, 93, 0, 27)
MagnetiteChestplate.Font = Enum.Font.SourceSansSemibold
MagnetiteChestplate.Text = "Magnetite Chestplate"
MagnetiteChestplate.TextColor3 = Color3.new(1, 1, 1)
MagnetiteChestplate.TextScaled = true
MagnetiteChestplate.TextSize = 14
MagnetiteChestplate.TextWrapped = true

MagnetiteAxe.Name = "MagnetiteAxe"
MagnetiteAxe.Parent = Booga2
MagnetiteAxe.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
MagnetiteAxe.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
MagnetiteAxe.BorderSizePixel = 2
MagnetiteAxe.Position = UDim2.new(0.261603385, 0, 0.455128193, 0)
MagnetiteAxe.Size = UDim2.new(0, 93, 0, 27)
MagnetiteAxe.Font = Enum.Font.SourceSansSemibold
MagnetiteAxe.Text = "Magnetite Axe"
MagnetiteAxe.TextColor3 = Color3.new(1, 1, 1)
MagnetiteAxe.TextScaled = true
MagnetiteAxe.TextSize = 14
MagnetiteAxe.TextWrapped = true

MagnetiteBag.Name = "MagnetiteBag"
MagnetiteBag.Parent = Booga2
MagnetiteBag.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
MagnetiteBag.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
MagnetiteBag.BorderSizePixel = 2
MagnetiteBag.Position = UDim2.new(0.506329119, 0, 0.452991456, 0)
MagnetiteBag.Size = UDim2.new(0, 93, 0, 27)
MagnetiteBag.Font = Enum.Font.SourceSansSemibold
MagnetiteBag.Text = "Magnetite Bag"
MagnetiteBag.TextColor3 = Color3.new(1, 1, 1)
MagnetiteBag.TextScaled = true
MagnetiteBag.TextSize = 14
MagnetiteBag.TextWrapped = true

MagnetiteLegs.Name = "MagnetiteLegs"
MagnetiteLegs.Parent = Booga2
MagnetiteLegs.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
MagnetiteLegs.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
MagnetiteLegs.BorderSizePixel = 2
MagnetiteLegs.Position = UDim2.new(0.506329119, 0, 0.367521375, 0)
MagnetiteLegs.Size = UDim2.new(0, 93, 0, 27)
MagnetiteLegs.Font = Enum.Font.SourceSansSemibold
MagnetiteLegs.Text = "Magnetite Greaves"
MagnetiteLegs.TextColor3 = Color3.new(1, 1, 1)
MagnetiteLegs.TextScaled = true
MagnetiteLegs.TextSize = 14
MagnetiteLegs.TextWrapped = true

MagnetitePick.Name = "MagnetitePick"
MagnetitePick.Parent = Booga2
MagnetitePick.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
MagnetitePick.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
MagnetitePick.BorderSizePixel = 2
MagnetitePick.Position = UDim2.new(0.748945177, 0, 0.365384609, 0)
MagnetitePick.Size = UDim2.new(0, 93, 0, 27)
MagnetitePick.Font = Enum.Font.SourceSansSemibold
MagnetitePick.Text = "Magnetite Pick"
MagnetitePick.TextColor3 = Color3.new(1, 1, 1)
MagnetitePick.TextScaled = true
MagnetitePick.TextSize = 14
MagnetitePick.TextWrapped = true

CrystalChestplate.Name = "CrystalChestplate"
CrystalChestplate.Parent = Booga2
CrystalChestplate.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
CrystalChestplate.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
CrystalChestplate.BorderSizePixel = 2
CrystalChestplate.Position = UDim2.new(0.371308029, 0, 0.626068354, 0)
CrystalChestplate.Size = UDim2.new(0, 93, 0, 27)
CrystalChestplate.Font = Enum.Font.SourceSansSemibold
CrystalChestplate.Text = "Crystal Chestplate"
CrystalChestplate.TextColor3 = Color3.new(1, 1, 1)
CrystalChestplate.TextScaled = true
CrystalChestplate.TextSize = 14
CrystalChestplate.TextWrapped = true

CrystalDivider2.Name = "CrystalDivider2"
CrystalDivider2.Parent = Booga2
CrystalDivider2.Active = true
CrystalDivider2.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
CrystalDivider2.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
CrystalDivider2.BorderSizePixel = 2
CrystalDivider2.Position = UDim2.new(0.00632911548, 0, 0.797008574, 0)
CrystalDivider2.Size = UDim2.new(0, 447, 0, 11)

CrystalDivider.Name = "CrystalDivider"
CrystalDivider.Parent = Booga2
CrystalDivider.Active = true
CrystalDivider.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
CrystalDivider.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
CrystalDivider.BorderSizePixel = 2
CrystalDivider.Position = UDim2.new(0.0147679336, 0, 0.583333373, 0)
CrystalDivider.Size = UDim2.new(0, 447, 0, 11)

CrystalBag.Name = "CrystalBag"
CrystalBag.Parent = Booga2
CrystalBag.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
CrystalBag.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
CrystalBag.BorderSizePixel = 2
CrystalBag.Position = UDim2.new(0.373417735, 0, 0.715811968, 0)
CrystalBag.Size = UDim2.new(0, 93, 0, 27)
CrystalBag.Font = Enum.Font.SourceSansSemibold
CrystalBag.Text = "Crystal Bag"
CrystalBag.TextColor3 = Color3.new(1, 1, 1)
CrystalBag.TextScaled = true
CrystalBag.TextSize = 14
CrystalBag.TextWrapped = true

CrystalGreaves.Name = "CrystalGreaves"
CrystalGreaves.Parent = Booga2
CrystalGreaves.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
CrystalGreaves.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
CrystalGreaves.BorderSizePixel = 2
CrystalGreaves.Position = UDim2.new(0.03164557, 0, 0.630341887, 0)
CrystalGreaves.Size = UDim2.new(0, 93, 0, 27)
CrystalGreaves.Font = Enum.Font.SourceSansSemibold
CrystalGreaves.Text = "Crystal Greaves"
CrystalGreaves.TextColor3 = Color3.new(1, 1, 1)
CrystalGreaves.TextScaled = true
CrystalGreaves.TextSize = 14
CrystalGreaves.TextWrapped = true

CrystalStick.Name = "CrystalStick"
CrystalStick.Parent = Booga2
CrystalStick.BackgroundColor3 = Color3.new(0.12549, 0.129412, 0.176471)
CrystalStick.BorderColor3 = Color3.new(1, 0.00392157, 0.356863)
CrystalStick.BorderSizePixel = 2
CrystalStick.Position = UDim2.new(0.748945177, 0, 0.450854689, 0)
CrystalStick.Size = UDim2.new(0, 93, 0, 27)
CrystalStick.Font = Enum.Font.SourceSansSemibold
CrystalStick.Text = "Crystal Stick"
CrystalStick.TextColor3 = Color3.new(1, 1, 1)
CrystalStick.TextScaled = true
CrystalStick.TextSize = 14
CrystalStick.TextWrapped = true

Open.MouseButton1Down:connect(function()
Booga:TweenPosition(UDim2.new(0.079, 0, 0.074, 0), 'Out','Bounce', 1)
Open.Visible = true
Booga.Visible = true
end)

Exit.MouseButton1Down:connect(function()
Booga:TweenPosition(UDim2.new(0.079, 0, 1.7, 0), 'Out','Bounce', 1)
Open.Visible = true
end)

Recipes.MouseButton1Down:connect(function()
Booga2:TweenPosition(UDim2.new(0.433, 0, 0.074, 0), 'Out','Bounce', 1)
Booga2.Visible = true
end)

Exit2.MouseButton1Down:connect(function()
Booga2:TweenPosition(UDim2.new(0.079, 0, 1.7, 0), 'Out','Bounce', 1)
end)

CrystalBag.MouseButton1Click:connect(function()
local A_1   = "Crystal Bag"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

CrystalCrown.MouseButton1Click:connect(function()
local A_1   = "Crystal Crown"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

CrystalChestplate.MouseButton1Click:connect(function()
local A_1   = "Crystal Chestplate"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

CrystalGreaves.MouseButton1Click:connect(function()
local A_1   = "Crystal Greaves"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)



AduriteAxe.MouseButton1Click:connect(function()
local A_1   = "Adurite Axe"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

AduriteBlade.MouseButton1Click:connect(function()
local A_1   = "War Hammer"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

AduritePick.MouseButton1Click:connect(function()
local A_1   = "Adurite Pick"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

AduriteBag.MouseButton1Click:connect(function()
local A_1   = "Adurite Bag"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

AduriteHelmet.MouseButton1Click:connect(function()
local A_1   = "Adurite Helmet"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

AduriteChestplate.MouseButton1Click:connect(function()
local A_1   = "Adurite Chestplate"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

AduriteGreaves.MouseButton1Click:connect(function()
local A_1   = "Adurite Greaves"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)



MagnetiteAxe.MouseButton1Click:connect(function()
local A_1   = "Magnetite Axe"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

MagnetiteRock.MouseButton1Click:connect(function()
local A_1   = "Magnetite Stick"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

MagnetitePick.MouseButton1Click:connect(function()
local A_1   = "Magnetite Pick"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

MagnetiteHalo.MouseButton1Click:connect(function()
local A_1   = "Magnetite Mask"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

MagnetiteChestplate.MouseButton1Click:connect(function()
local A_1   = "Magnetite Chestplate"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

MagnetiteLegs.MouseButton1Click:connect(function()
local A_1   = "Magnetite Greaves"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)

MagnetiteBag.MouseButton1Click:connect(function()
local A_1   = "Magnetite Bag"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)


CrystalStick.MouseButton1Click:connect(function()
local A_1   = "Crystal Stick"
local Event = game:GetService("ReplicatedStorage").Events.CraftItem
Event:FireServer(A_1)
end)






CraftAnyItem.MouseButton1Click:connect(function()
	local event = game.ReplicatedStorage.Events.CraftItem
	local item = CraftItem.Text
	event:FireServer(item)
end)




local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local hum = char:FindFirstChild("HumanoidRootPart")

--SpeedVariables
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local hum = char:FindFirstChild("HumanoidRootPart")
--yeet
Speed.MouseButton1Down:connect(function()
    local plr = game:GetService("Players").LocalPlayer
    local char = plr.Character
    local mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local hum = char:FindFirstChild("HumanoidRootPart")
    mouse.KeyDown:connect(function(key)
        if key == SpeedBind.Text then
            loop = true
            while loop do
                hum.CFrame = hum.CFrame + hum.CFrame.lookVector * 3
                wait()
            end
            end
            end)
    end)
    
    mouse.KeyUp:connect(function(key)
        if key == SpeedBind.Text then
            loop = false
        end
end)

AutoBreak.MouseButton1Click:connect(function()
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local breaking=false
mouse.KeyDown:connect(function(key)
    if key == Breakkey.Text then
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
    if key == Breakkey.Text then
        breaking = false
    end
    end)
end)


RemoveRainbtn.MouseButton1Click:Connect(function()
			if workspace:FindFirstChild('RainPart') ~= nil then
				workspace.RainPart:Destroy()
				game.ReplicatedStorage.Sounds.Nature.Rain:Stop()
				game.ReplicatedStorage.Sounds.Nature.Thunder:Stop()
				game.Lighting.Rain:Destroy()
				game.ReplicatedStorage.Skies.Shine:Clone().Parent = game.Lighting
			end
end)

TpSpambtn.MouseButton1Down:connect(function()
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name:lower():find(TpSpamPlayerNamekb.Text:lower()) then
    if v.Name == "Infinity_Chest" or v.Name == "BlueBearTimx" then
    print("Fools you cannot kill the devs")
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

Important = {Players = game:GetService("Players"), Workspace = game:GetService("Workspace"), CoreGui = game:GetService("CoreGui")}



DropAllItemsbtn.MouseButton1Click:Connect(function()

Player = game.Players.LocalPlayer
Mouse = Player:GetMouse()

function PressedE(key)
    Key = key:lower()
    if Key == DropAllItemskb.Text then
    for i=1, 100 do
game.ReplicatedStorage.Events.DropBagItem:FireServer(DropAllItemsItemNamekb.Text)
end
end
end
Mouse.KeyDown:connect(PressedE)
end)


RemoveAllEffectsbtn.MouseButton1Click:Connect(function()
game.Lighting.FogEnd = 1200000
game.Lighting.Brightness = 3
game.Lighting.GlobalShadows = false
end)



AutoEatbtn.MouseButton1Click:Connect(function()
if game.PlaceId == 1262182609 or game.PlaceId == 2021740958 then
local lol = 1
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == AutoEatkb.Text then
	lol = 0
	while lol == 0 do
	wait()
local Event = game:GetService("ReplicatedStorage").Events.UseBagItem
    Event:FireServer(AutoEatFoodNamekb.Text)
    Event:FireServer(AutoEatFoodNamekb.Text)
    Event:FireServer(AutoEatFoodNamekb.Text)
end end end)
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
mouse.KeyUp:connect(function(key)
    if key == AutoEatkb.Text then
	lol = 1
end end) end
end)



