local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "确认身份",
    Text = "正在验证....",
    Duration = 3, 
})

local a=tostring(game.Players.LocalPlayer.Character);

if a=="dss3144"then
_G.she=true
elseif a=="SUSPVZ_114514"then
_G.she=true
elseif a=="mcxiaoyan_114514"then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a=="
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
elseif a==""then
_G.she=true
end
if _G.she==true then
    local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "验证结果",
    Text = a.."验证身份成功",
    Duration = 5,
})

wait(3.5)
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:FindFirstChildOfClass("Humanoid") or char:WaitForChild("Humanoid")

if not fireproximityprompt then
    local msg = Instance.new("Message",workspace)
    msg.Text = "你好！"
    task.wait(6)
    msg:Destroy()
    error("No") 
end

function esp(what,color,core,name)
    local parts
    
    if typeof(what) == "Instance" then
        if what:IsA("Model") then
            parts = what:GetChildren()
        elseif what:IsA("BasePart") then
            parts = {what,table.unpack(what:GetChildren())}
        end
    elseif typeof(what) == "table" then
        parts = what
    end
    
    local bill
    local boxes = {}
    
    for i,v in pairs(parts) do
        if v:IsA("BasePart") then
            local box = Instance.new("BoxHandleAdornment")
            box.Size = v.Size
            box.AlwaysOnTop = true
            box.ZIndex = 1
            box.AdornCullingMode = Enum.AdornCullingMode.Never
            box.Color3 = color
            box.Transparency = 0.7
            box.Adornee = v
            box.Parent = game.CoreGui
            
            table.insert(boxes,box)
            
            task.spawn(function()
                while box do
                    if box.Adornee == nil or not box.Adornee:IsDescendantOf(workspace) then
                        box.Adornee = nil
                        box.Visible = false
                        box:Destroy()
                    end  
                    task.wait()
                end
            end)
        end
    end
    
    if core and name then
        bill = Instance.new("BillboardGui",game.CoreGui)
        bill.AlwaysOnTop = true
        bill.Size = UDim2.new(0,400,0,100)
        bill.Adornee = core
        bill.MaxDistance = 2000
        
        local mid = Instance.new("Frame",bill)
        mid.AnchorPoint = Vector2.new(0.5,0.5)
        mid.BackgroundColor3 = color
        mid.Size = UDim2.new(0,8,0,8)
        mid.Position = UDim2.new(0.5,0,0.5,0)
        Instance.new("UICorner",mid).CornerRadius = UDim.new(1,0)
        Instance.new("UIStroke",mid)
        
        local txt = Instance.new("TextLabel",bill)
        txt.AnchorPoint = Vector2.new(0.5,0.5)
        txt.BackgroundTransparency = 1
        txt.BackgroundColor3 = color
        txt.TextColor3 = color
        txt.Size = UDim2.new(1,0,0,20)
        txt.Position = UDim2.new(0.5,0,0.7,0)
        txt.Text = name
        Instance.new("UIStroke",txt)
        
        task.spawn(function()
            while bill do
                if bill.Adornee == nil or not bill.Adornee:IsDescendantOf(workspace) then
                    bill.Enabled = false
                    bill.Adornee = nil
                    bill:Destroy() 
                end  
                task.wait()
            end
        end)
    end
    
    local ret = {}
    
    ret.delete = function()
        for i,v in pairs(boxes) do
            v.Adornee = nil
            v.Visible = false
            v:Destroy()
        end
        
        if bill then
            bill.Enabled = false
            bill.Adornee = nil
            bill:Destroy() 
        end
    end
    
    return ret 
end

local entityinfo = game.ReplicatedStorage:WaitForChild("EntityInfo")
function message(text)
    local msg = Instance.new("Message",workspace)
    msg.Text = tostring(text)
    task.wait(5)
    msg:Destroy()
    
    
end

local flags = {
    speed = 0,
    espdoors = false,
    espkeys = false,
    espitems = false,
    espbooks = false,
    esprush = false,
    espchest = false,
    esplocker = false,
    esphumans = false,
    espgold = false,
    goldespvalue = 0,
    hintrush = false,
    light = false,
    instapp = false,
    noseek = false,
    nogates = false,
    nopuzzle = false,
    noa90 = false,
    noskeledoors = false,
    noscreech = false,
    getcode = false,
    roomsnolock = false,
    draweraura = false,
    autorooms = false,
}

local DELFLAGS = {table.unpack(flags)}
local esptable = {doors={},keys={},items={},books={},entity={},chests={},lockers={},people={},gold={}}

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local ScreenGui = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Key = Instance.new("TextBox")
local Start = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI.Name = "星云卡密系统"
UI.Parent = ScreenGui
UI.Active = true
UI.BackgroundColor3 = Color3.new(0, 0, 0)
UI.BackgroundTransparency = 0
UI.BorderSizePixel = 3
UI.Position = UDim2.new(0.5, -150, 0.5, -67)
UI.Size = UDim2.new(0, 260, 0, 250)
UI.Draggable = true

Title.Name = "Title"
Title.Parent = UI
Title.BackgroundColor3 = Color3.new(68, 68, 68)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 2
Title.Position = UDim2.new(0, 0, 0.02, 0)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "星云卡密系统"
Title.TextColor3 = Color3.new(0, 0, 255)
Title.TextScaled = true
Title.TextSize = 14
Title.TextWrapped = true

Frame.Parent = Title
Frame.BackgroundColor3 = Color3.new(0, 0, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.07, 0, 0.9, 0)
Frame.Size = UDim2.new(0.85, 0, 0, 6)

Key.Name = "Key"
Key.Parent = UI
Key.BackgroundColor3 = Color3.new(1, 1, 1)
Key.BorderSizePixel = 0
Key.Position = UDim2.new(0.1, 0, 0.31, 0)
Key.Size = UDim2.new(0.8, 0, 0, 50)
Key.Font = Enum.Font.SourceSans
Key.PlaceholderText = "星云脚本(云)"
Key.Text = ""
Key.TextColor3 = Color3.new(0, 0, 0)
Key.TextScaled = true
Key.TextSize = 14
Key.TextWrapped = true

Start.Name = "Start"
Start.Parent = UI
Start.BackgroundColor3 = Color3.new(0, 0, 255)
Start.BackgroundTransparency = 0
Start.BorderSizePixel = 2
Start.Position = UDim2.new(0.25, 0, 0.65, 0)
Start.Size = UDim2.new(0.5, 0, 0, 45)
Start.Font = Enum.Font.Gotham
Start.Text = "确定"
Start.TextColor3 = Color3.new(0, 0, 0)
Start.TextScaled = true
Start.TextSize = 10
Start.TextWrapped = true

Start.MouseButton1Click:Connect(function()
    if Key.Text == "" then
        ScreenGui:Destroy()
        local OrionLib = loadstring(game:HttpGet('https://pastebin.com/raw/qz5Vsxuk'))();

local Window = OrionLib:MakeWindow({Name = "ctl", HidePremium = false, SaveConfig = true,IntroText = "ctl", ConfigFolder = "ctl"})

local player = Window:MakeTab({
	Name = "公告",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "复制作者Q",
	Callback = function()
     setclipboard("3369370682")
  	end
})

Tab:AddButton({
	Name = "复制QQ群",
	Callback = function()
     setclipboard("834451572")
  	end
})

local player = Window:MakeTab({
	Name = "通用/人物",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "吸取全部玩家",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/hQSBGsw2'))()
  	end    
})

Tab:AddButton({
	Name = "范围",
	Callback = function()
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local label = Instance.new("TextLabel")
local Hitbox = 
Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
main.Position = UDim2.new(0.40427351, 0, 0.34591195, 0)
main.Size = UDim2.new(0, 100, 0, 100)
main.Active = true
main.Draggable = true

label.Name = "label"
label.Parent = main
label.BackgroundColor3 = Color3.fromRGB(139,0,0)
label.Size = UDim2.new(0, 100, 0, 20)
label.Font = Enum.Font.SourceSans
label.Text = "超大范围"
label.TextColor3 = Color3.fromRGB(0, 0, 0)
label.TextScaled = true
label.TextSize = 5.000
label.TextWrapped = true

Hitbox.Name = "Hitbox"
Hitbox.Parent = main
Hitbox.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Hitbox.Position = UDim2.new(0.114285722, 0, 0.372448981, 0)
Hitbox.Size = UDim2.new(0, 90, 0, 40)
Hitbox.Font = Enum.Font.SourceSans
Hitbox.Text = "启动！"
Hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)
Hitbox.TextSize = 40.000
Hitbox.MouseButton1Down:connect(function()
	_G.HeadSize = 100

	_G.Disabled = true


game:GetService('RunService').RenderStepped:connect(function()
		if _G.Disabled then
			for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
						v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
						v.Character.HumanoidRootPart.Transparency = 0.7
						v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
						v.Character.HumanoidRootPart.Material = "Neon"
						v.Character.HumanoidRootPart.CanCollide = flase
					end)
				end
			end
		end
	end)
end)
      end
})   

  Tab:AddButton({
  Name = "飞行脚本",
  Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/28CWNSrK'))();
  end
  })
  
  Tab:AddButton({
  Name = "阿尔宙斯飞行",
  Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/jQTcRnqz'))();
  end
  })
  
    Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
    mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "作者:397510573" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
    })
   
    Tab:AddTextbox({
    Name="设置生命(0~100)",
    Default = "",
    Callback=function(Value)
    game.Players.LocalPlayer.Character.Humanoid.Health=Value
    end
    })       
          
  Tab:AddTextbox({
  Name = "移动速度",
  Default = "",
  TextDisappear = true,
  Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})

Tab:AddTextbox({
  Name = "跳跃高度",
  Default = "",
  TextDisappear = true,
  Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
  end
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
    Noclip = Value
    game.RunService.Stepped:Connect(function()
        if Noclip then
            game.Players.LocalPlayer.Character.Head.CanCollide = false
            game.Players.LocalPlayer.Character.Torso.CanCollide = false
        else
            game.Players.LocalPlayer.Character.Head.CanCollida = true
            game.Players.LocalPlayer.Character.Torso.CanCollide = true
        end
    end)
   end
})

      Tab:AddToggle({
      Name = "夜视",
      Default = false,
      Callback = function(Value)
    Light = Value
    game.RunService.Stepped:Connect(function()
        if Light then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end)
    end
      })   
      
      Tab:AddToggle({
      Name = "无限跳",
      Default = false,
      Callback = function(Value)
    Jump = Value
    game.UserInputService.JumpRequest:Connect(function()
        if Jump then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end)
    end
      })

local player = Window:MakeTab({
	Name = "doors汉化脚本",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "BobHub汉化",
	Callback = function()
      	--[[Doors Blackking And BobHub脚本汉化]]loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
  	end
})

player:AddButton({ 
	Name = "最强脚本",
	Callback = function()
 loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
  	end
})

local player = Window:MakeTab({
	Name = "辅助物品",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "手电筒(2024)",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()
  	end
})

player:AddButton({ 
	Name = "夜视仪(2024)",
	Callback = function()
  _G.TFPS = 114514 --自定义帧率
_G.B = "星云脚本" --自定义型号
_G.HighRes = true
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XT-CN/UwU/main/table')))()
  	end
})

player:AddButton({ 
	Name = "原版夜视仪(2024)",
	Callback = function()
  _G.TFPS = 30  --自定义帧率
_G.B = "NVCS-3000" --自定义型号
_G.HighRes = false
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XT-CN/UwU/main/table')))()
  	end
})

player:AddButton({ 
	Name = "永久维生素",
	Callback = function()
      	getgenv().CustomVitamins = {
    SpeedBoost = 7, -----速度设置
    EffectDuration = 99999 -----持续时间设置
}

loadstring(game:HttpGet("https://shz.al/~wss/维生素"))()
  	end
})

player:AddButton({ 
	Name = "(闪电侠)维生素(愚人节用)",
	Callback = function()
      	getgenv().CustomVitamins = {
    SpeedBoost = 99999999, -----速度设置
    EffectDuration = 5 -----持续时间设置
}

loadstring(game:HttpGet("https://shz.al/~wss/维生素"))()
  	end
})

player:AddButton({ 
	Name = "维生素",
	Callback = function()
      	getgenv().CustomVitamins = {
    SpeedBoost = 7, -----速度设置
    EffectDuration = 5 -----持续时间设置
}

loadstring(game:HttpGet("https://shz.al/~wss/维生素"))()
  	end
})

player:AddButton({ 
	Name = "夜视仪(可在商场购买2024)",
	Callback = function()
  loadstring(game:HttpGet(("https://shz.al/xdD4t4hyYYW8CJzKeepZKtEP"),true))()
  	end
})

player:AddButton({ 
	Name = "十字架(2024)",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/Doors/Crucifix.lua'))()
  	end
})

player:AddButton({ 
	Name = "无限十字架",
	Callback = function()
      	local function IsVisible(part)
    local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
    local onscreen = found and vec.Z > 0
    local cfg = RaycastParams.new()
    cfg.FilterType = Enum.RaycastFilterType.Blacklist
    cfg.FilterDescendantsInstances = {part}

    local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg)
    if onscreen then
        if cast and (cast and cast.Instance).Parent==game.Players.LocalPlayer.Character then
            return true
        end
    end
end

local Equipped = false

-- Edit this --
getgenv().spawnKey = Enum.KeyCode.F4
---------------

-- Services

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

-- Variables

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local Root = Char:WaitForChild("HumanoidRootPart")
local RightArm = Char:WaitForChild("RightUpperArm")
local LeftArm = Char:WaitForChild("LeftUpperArm")

local RightC1 = RightArm.RightShoulder.C1
local LeftC1 = LeftArm.LeftShoulder.C1

local SelfModules = {
    Functions = loadstring(
        game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua")
    )(),
    CustomShop = loadstring(
        game:HttpGet(
            "https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"
        )
    )(),
}

local ModuleScripts = {
    MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
    SeekIntro = require(Plr.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Cutscenes.SeekIntro),
}

-- Functions

local function setupCrucifix(tool)
    tool.Equipped:Connect(function()
        Equipped = true
        Char:SetAttribute("Hiding", true)
        for _, v in next, Hum:GetPlayingAnimationTracks() do
            v:Stop()
        end

        RightArm.Name = "R_Arm"
        LeftArm.Name = "L_Arm"

        RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
        LeftArm.LeftShoulder.C1 = LeftC1
            * CFrame.new(-0.2, -0.3, -0.5)
            * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
    end)

    tool.Unequipped:Connect(function()
        Equipped = false
        Char:SetAttribute("Hiding", nil)
        RightArm.Name = "RightUpperArm"
        LeftArm.Name = "LeftUpperArm"

        RightArm.RightShoulder.C1 = RightC1
        LeftArm.LeftShoulder.C1 = LeftC1
    end)
end

-- Scripts

local CrucifixTool = game:GetObjects("rbxassetid://12225327090")[1]
CrucifixTool.Name = "Crucifix"
CrucifixTool.Parent = game.Players.LocalPlayer.Backpack

-- game.UserInputService.InputBegan:Connect(function(input, proc)
--     if proc then return end

--     if input.KeyCode == input.KeyCode[getgenv().spawnKey] then
--         local CrucifixTool = game:GetObjects("rbxassetid://11746137630")[1]
--         CrucifixTool.Name = "Crucifix"
--         CrucifixTool.Parent = game.Players.LocalPlayer.Backpack
--     end
-- end)
-- Input handler

setupCrucifix(CrucifixTool)

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

-- Variables

local Plr = Players.LocalPlayer
local Char = Plr.Character or Plr.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local Root = Char:WaitForChild("HumanoidRootPart")

local dupeCrucifix = Instance.new("BindableEvent")
local function func(ins)
    wait(.01) -- Wait for the attribute
    if ins:GetAttribute("IsCustomEntity")==true and ins:GetAttribute("ClonedByCrucifix")~=true then
        local Chains = game:GetObjects("rbxassetid://12225365736")[1]
        Chains.Parent = workspace
        local chained = true
        local posTime = false
        local rotTime = false
        local tweenTime = false
        local intFound = true

        game:GetService("RunService").RenderStepped:Connect(function()
            if Equipped then
                if ins.Parent~=nil and ins.PrimaryPart and IsVisible(ins.PrimaryPart) and (Root.Position-ins.PrimaryPart.Position).magnitude <= 25 then
                    local c=ins:Clone()
                    c:SetAttribute("ClonedByCrucifix", true)
                    c.RushNew.Anchored=true
                    c.Parent=ins.Parent
                    ins:Destroy()
                    dupeCrucifix:Fire(6,c.RushNew)


                    
                    -- Chains.PrimaryPart.Orientation = Chains.PrimaryPart.Orientation + Vector3.new(0, 3, 0)

                    local EntityRoot = c:FindFirstChild("RushNew")

                    if EntityRoot then



                        local Fake_FaceAttach = Instance.new("Attachment")
                        Fake_FaceAttach.Parent = EntityRoot
                        

                        for i, beam in pairs(Chains:GetDescendants()) do
                            if beam:IsA("BasePart") then
                                beam.CanCollide = false
                            end
                            if beam.Name == "Beam" then
                                beam.Attachment1 = Fake_FaceAttach
                            end
                        end
                        
                        if not posTime then
                            Chains:SetPrimaryPartCFrame(
                                EntityRoot.CFrame * CFrame.new(0, -3.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
                            )
                            posTime = true
                        end

                        task.wait(1.35)
                        if not tweenTime then

                            task.spawn(function()
                                while task.wait() do
                                    if Chains:FindFirstChild('Base') then
                                        Chains.Base.CFrame = Chains.Base.CFrame * CFrame.Angles(0,0 , math.rad(0.5))
                                    end
                                end
                            end)

                            task.spawn(function()
                                while task.wait() do
                                    for i, beam in pairs(Chains:GetDescendants()) do
                                        if beam.Name == "Beam" then
                                            beam.TextureLength = beam.TextureLength+0.035
                                        end
                                    end
                                end
                            end)


                            game.TweenService
                                :Create(
                                    EntityRoot,
                                    TweenInfo.new(6),
                                    { CFrame = EntityRoot.CFrame * CFrame.new(0, 50, 0) }
                                )
                                :Play()
                            

                            tweenTime = true
                            task.wait(1.5)
                            intFound = false
                            game:GetService("Debris"):AddItem(c, 0)
                            game:GetService("Debris"):AddItem(Chains, 0)
                        end
                    end
                end
            end
        end)
    elseif ins.Name=="Lookman" then
        local c=ins
        task.spawn(function()
            repeat task.wait() until IsVisible(c.Core) and Equipped and c.Core.Attachment.Eyes.Enabled==true
            local pos=c.Core.Position
            dupeCrucifix:Fire(18.364, c.Core)
            task.spawn(function()
                c:SetAttribute("Killing", true)
                ModuleScripts.MainGame.camShaker:ShakeOnce(10, 10, 5, 0.15)
                wait(5)
                c.Core.Initiate:Stop()
                for i=1,3 do
                    c.Core.Repent:Play()  
                    c.Core.Attachment.Angry.Enabled=true
                    ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, 1.3, 0.15)
                    delay(c.Core.Repent.TimeLength, function() c.Core.Attachment.Angry.Enabled=false end)
                    wait(4)
                end
                c.Core.Scream:Play();
                ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, c.Core.Scream.TimeLength, 0.15);
                (c.Core:FindFirstChild"whisper" or c.Core:FindFirstChild"Ambience"):Stop()
                for _, l in pairs(c:GetDescendants()) do
                    if l:IsA("PointLight") then
                        l.Enabled=false
                    end
                end
                game:GetService("TweenService"):Create(c.Core, TweenInfo.new(c.Core.Scream.TimeLength, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                    CFrame=CFrame.new(c.Core.CFrame.X, c.Core.CFrame.Y-12, c.Core.CFrame.Z)
                }):Play()
            end)
            local col=game.Players.LocalPlayer.Character.Collision

            local function CFrameToOrientation(cf)
                local x, y, z = cf:ToOrientation()
                return Vector3.new(math.deg(x), math.deg(y), math.deg(z))
            end
            
            while c.Parent~=nil and c.Core.Attachment.Eyes.Enabled==true do
                -- who's the boss now huh?
                col.Orientation = CFrameToOrientation(CFrame.lookAt(col.Position, pos)*CFrame.Angles(0, math.pi, 0))
                task.wait()
            end
        end)
    elseif ins.Name=="Shade" and ins.Parent==workspace.CurrentCamera and ins:GetAttribute("ClonedByCrucifix")==nil then
        task.spawn(function()
            repeat task.wait() until IsVisible(ins) and (Root.Position-ins.Position).Magnitude <= 12.5 and Equipped

            local clone = ins:Clone()

            clone.CFrame = ins.CFrame
            clone.Parent = ins.Parent
            clone.Anchored = true

            ins:Remove()

            dupeCrucifix:Fire(13, ins)
            ModuleScripts.MainGame.camShaker:ShakeOnce(40, 10, 5, 0.15)



            for _, thing in pairs(clone:GetDescendants()) do
                if thing:IsA("SpotLight") then
                    game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
                        Brightness=thing.Brightness*5
                    }):Play()
                elseif thing:IsA("Sound") and thing.Name~="Burst" then
                    game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
                        Volume=0
                    }):Play()
                elseif thing:IsA("TouchTransmitter") then thing:Destroy() end
            end

            for _, pc in pairs(clone:GetDescendants()) do
                if pc:IsA("ParticleEmitter") then
                        pc.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.48, Color3.fromRGB(182, 0, 3)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
                end
            end

            local Original_color = {}

            local light
            light = game.Lighting["Ambience_Shade"]
            game:GetService("TweenService"):Create(light, TweenInfo.new(1), {


            }):Play()

            wait(5)

            clone.Burst.PlaybackSpeed=0.5
            clone.Burst:Stop()
            clone.Burst:Play()
            light.TintColor = Color3.fromRGB(215,253,255)
            game:GetService("TweenService"):Create(clone, TweenInfo.new(6), {
                CFrame=CFrame.new(clone.CFrame.X, clone.CFrame.Y-12, clone.CFrame.Z)
            }):Play()
            wait(8.2)

            game:GetService("Debris"):AddItem(clone, 0)
            game.ReplicatedStorage.Bricks.ShadeResult:FireServer()
        end)
    end
end

workspace.ChildAdded:Connect(func)
workspace.CurrentCamera.ChildAdded:Connect(func)
for _, thing in pairs(workspace:GetChildren()) do
    func(thing)
end
dupeCrucifix.Event:Connect(function(time, entityRoot)
    local Cross = game:GetObjects("rbxassetid://11840790614")[1]
    Cross.Parent = workspace

    local fakeCross = Cross.Handle

    -- fakeCross:FindFirstChild("EffectLight").Enabled = true

    ModuleScripts.MainGame.camShaker:ShakeOnce(35, 25, 0.15, 0.15)
    -- you tell me i didnt make?
    fakeCross.CFrame = CFrame.lookAt(CrucifixTool.Handle.Position, entityRoot.Position)
    
    -- hl.Parent = model
    -- hl.FillTransparency = 1
    -- hl.OutlineColor = Color3.fromRGB(75, 177, 255)
    fakeCross.Anchored = true

    CrucifixTool:Destroy()

    -- for i, v in pairs(fakeCross:GetChildren()) do
    --     if v.Name == "E" and v:IsA("BasePart") then
    --         v.Transparency = 0
    --         v.CanCollide = false
    --     end
    --     if v:IsA("Motor6D") then
    --         v.Name = "Motor6D"
    --     end
    -- end

    task.wait(time)
    fakeCross.Anchored = false
    fakeCross.CanCollide = true
    task.wait(0.5)
    Cross:Remove()
end)

-- credits
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "唔，十字架114514xhxh")
-- alex W
-- alex W

-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
-- alex W
-- alex W

-- alex W
  	end
})

player:AddButton({ 
	Name = "十字架",
	Callback = function()
  loadstring(game:HttpGet('https://gist.githubusercontent.com/C00LBOZO/0c78ad8c74ca26324c87ede16ce8b387/raw/c0887ac0d24fde80bea11ab1a6a696ec296af272/Crucifix'))()
  	end
})

player:AddButton({ 
	Name = "神圣炸弹",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
  	end
})

player:AddButton({ 
	Name = "手电筒",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
  	end
})

player:AddButton({ 
	Name = "吸铁石",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
   end
})

player:AddButton({ 
	Name = "剪刀",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()
   end
})

player:AddButton({ 
	Name = "夜视仪",
	Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
   end
})

player:AddButton({ 
	Name = "骷髅钥匙",
	Callback = function()
  local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack
   end
})

player:AddButton({ 
	Name = "耶稣十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi2"))()
   end
})

player:AddButton({ 
	Name = "紫光十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi3"))()
   end
})

player:AddButton({ 
	Name = "万圣节十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/shizi4"))()
   end
})

player:AddButton({ 
	Name = "Zepsyy十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/Crucifix"))()
   end
})

player:AddButton({ 
	Name = "Screech十字架",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/W1AzELhb"))()
   end
})

player:AddButton({ 
	Name = "闪电⚡️",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Zeus%20Lightning"))()
   end
})

player:AddButton({ 
	Name = "火焰🔥魔法书",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book"))()
   end
})

player:AddButton({ 
	Name = "seek枪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/seekgun.lua"))()
   end
})

player:AddButton({ 
	Name = "炮",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/%E8%BD%B0%E7%82%B8.lua"))()
   end
})

player:AddButton({ 
	Name = "上帝（商场用）",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/j2Gad4gQ'))()
   end
})

player:AddButton({ 
	Name = "手电筒",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/Jub8w6jz"))()
   end
})

player:AddButton({ 
	Name = "Halt十字架",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/Xfj1mfnV'))()
   end
})

player:AddButton({ 
	Name = "十字架",
	Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Johnny39871/assets/main/crucifixo'))()
   end
})

player:AddButton({ 
	Name = "每件物品蓝光",
	Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/StupidProAArsenal/main/main/deer%20customs',true))()
   end
})

player:AddButton({ 
	Name = "把seek变成只因",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Chicken%20Mod.lua", true))()
   end
})

player:AddButton({ 
	Name = "Doors自走A-1000",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/wjNJccfz'))()
   end
})

player:AddButton({ 
	Name = "魔鬼辣火腿肠",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/musical-pancake/main/huo.txt"))()
   end
})

player:AddButton({ 
	Name = "喷火枪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Flamethrower"))()
   end
})

player:AddButton({ 
	Name = "小鸡在手上",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/PFERptU5", true))()
   end
})

player:AddButton({ 
	Name = "木棍（0门用）",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Debug%20Stick"))()
   end
})

player:AddButton({ 
	Name = "瞄准用枪",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/uNTM7sa1'))()
   end
})

player:AddButton({ 
	Name = "火柜（商场用",
	Callback = function()
  local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "火炬 云",
    Desc = "一个火炬",
    Reason = "享受吧！",
    Image = "https://cdn.discordapp.com/attachments/882940450288324658/1046404183101800558/image.png",
})

local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://3499523244")

CustomShop.CreateItem(exampleTool, {
    Title = "火炬",
    Desc = "云优化",
    Image = "https://cdn.discordapp.com/attachments/882940450288324658/1046404183101800558/image.png",
    Price = 0,
    Stack = 1,
})
   end
})

player:AddButton({ 
	Name = "雪球",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/every-gun/main/christmas%20balls"))()
   end
})

player:AddButton({ 
	Name = "让大厅成为快餐店",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/MCDonalds"))()
   end
})

player:AddButton({ 
	Name = "召唤黑洞",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua"))()
   end
})

player:AddButton({ 
	Name = "夜视仪2（商场用",
	Callback = function()
  local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "可能有些注入器用不了 云",
    Desc = "我看得到一切！",
    Reason = "（获得夜视仪）",
    Image = "https://tr.rbxcdn.com/f081ec175b5cf6fa3158a40e3aa315c2/420/420/Decal/Png",
})

local Functions = loadstring(game:HttpGet('https://pastebin.com/raw/bucRxAMi'))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://17053443669")

CustomShop.CreateItem(exampleTool, {
    Title = "夜视仪",
    Desc = "我看得到一切！",
    Image = "https://tr.rbxcdn.com/f081ec175b5cf6fa3158a40e3aa315c2/420/420/Decal/Png",
    Price = 100000,
    Stack = 1,
})
   end
})

player:AddButton({ 
	Name = "rush",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/XdK7"))()
   end
})

player:AddButton({ 
	Name = "夜视仪3",
	Callback = function()
  _G.UpdateStars = false -- stars disappear after picking up a book/breaker pole | false: a little lag
		_G.OnShop = true -- can buy on pre run shop
		_G.Price = 10 -- tablet price on shop
		_G.Description = "" -- tablet description on shop

		loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/doorsshexiang"))()
   end
})

player:AddButton({ 
	Name = "ak47",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Mye123/Roblox-Scripts/master/AK-47.lua"))()
   end
})

player:AddButton({ 
	Name = "软糖手电筒",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Gummy%20Flashlight.lua"))()
   end
})

player:AddButton({ 
	Name = "火箭筒",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/rushbazooka.lua"))()
   end
})

player:AddButton({ 
	Name = "蜡烛",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Items/Candle.lua"))()
   end
})

player:AddButton({ 
	Name = "枪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/gffddhfdf/ssd/main/message%20(3).txt"))()
   end
})

player:AddButton({ 
	Name = "夜视仪4",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/4Vsv1Xwn"))()
   end
})

player:AddButton({ 
	Name = "可以清除东西的枪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
   end
})

player:AddButton({ 
	Name = "手电筒",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Normal%20Flashlight"))()
   end
})

player:AddButton({ 
	Name = "时间裂缝",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/bucRxAMi'))()
   end
})

player:AddButton({ 
	Name = "jeff玩偶",
	Callback = function()
  local tool = game:GetObjects("rbxassetid://13069619857")[1]
tool.Parent = game.Players.LocalPlayer.Backpack
   end
})

player:AddButton({ 
	Name = "screech抱枕",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/W6LhkY6r'))()
   end
})

player:AddButton({ 
	Name = "火剑（商场用",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/6zqzsyQC'))()
   end
})

player:AddButton({ 
	Name = "彩虹剑（商场用",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/TGFuqWjw'))()
  	end
})

player:AddButton({ 
	Name = "万圣节十字架",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/Ge4kGwrG"))()
local Details = {
    Description = "我不该出现在这里",
    Title = "万圣节十字架",
    Reason =  ""
}

local LocalPlayer = game.Players.LocalPlayer;
local GUI = LocalPlayer.PlayerGui.MainUI
local TweenService = game:GetService("TweenService");
local AchievementsHolder = GUI.AchievementsHolder.Achievement:Clone();
AchievementsHolder.Size = UDim2.new(0, 0, 0, 0);
AchievementsHolder.Frame.Position = UDim2.new(1.1, 0, 0, 0);
AchievementsHolder.Name = "LiveAchievement";
AchievementsHolder.Visible = true;
AchievementsHolder.Parent = GUI.AchievementsHolder;
AchievementsHolder.Frame.Details.Desc.Text = Details.Description
AchievementsHolder.Frame.Details.Title.Text = Details.Title
AchievementsHolder.Frame.Details.Reason.Text = Details.Reason
AchievementsHolder.Sound:Play();
AchievementsHolder:TweenSize(UDim2.new(1, 0, 0.2, 0), "In", "Quad", 0.8, true);
wait(0.8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true);
TweenService:Create(AchievementsHolder.Frame.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
    ImageTransparency = 1
		}):Play();
		wait(8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(1.1, 0, 0, 0), "In", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:TweenSize(UDim2.new(1, 0, -0.1, 0), "InOut", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:Destroy();
  	end
})

player:AddButton({ 
	Name = "圣诞节十字架",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/bbamxbbamxbbamx/codespaces-blank/main/%E5%8D%81%E5%AD%97%E6%9E%B6"))()
local Details = {
    Description = "这可真是个好地方",
    Title = "圣诞节十字架",
    Reason =  ""
}

local LocalPlayer = game.Players.LocalPlayer;
local GUI = LocalPlayer.PlayerGui.MainUI
local TweenService = game:GetService("TweenService");
local AchievementsHolder = GUI.AchievementsHolder.Achievement:Clone();
AchievementsHolder.Size = UDim2.new(0, 0, 0, 0);
AchievementsHolder.Frame.Position = UDim2.new(1.1, 0, 0, 0);
AchievementsHolder.Name = "LiveAchievement";
AchievementsHolder.Visible = true;
AchievementsHolder.Parent = GUI.AchievementsHolder;
AchievementsHolder.Frame.Details.Desc.Text = Details.Description
AchievementsHolder.Frame.Details.Title.Text = Details.Title
AchievementsHolder.Frame.Details.Reason.Text = Details.Reason
AchievementsHolder.Sound:Play();
AchievementsHolder:TweenSize(UDim2.new(1, 0, 0.2, 0), "In", "Quad", 0.8, true);
wait(0.8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true);
TweenService:Create(AchievementsHolder.Frame.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
    ImageTransparency = 1
		}):Play();
		wait(8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(1.1, 0, 0, 0), "In", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:TweenSize(UDim2.new(1, 0, -0.1, 0), "InOut", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:Destroy();
  	end
})

player:AddButton({ 
	Name = "自定义夜视仪",
	Callback = function()
      	loadstring(game:HttpGet("https://github.com/DocYogurt/script/raw/main/tablet"))()
  	end
})

player:AddButton({ 
	Name = "无眼十字架",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/xiFQRinF"))()
local Details = {
    Description = "这是哪里",
    Title = "figure十字架",
    Reason =  "我不因该在等待着你吗?"
}

local LocalPlayer = game.Players.LocalPlayer;
local GUI = LocalPlayer.PlayerGui.MainUI
local TweenService = game:GetService("TweenService");
local AchievementsHolder = GUI.AchievementsHolder.Achievement:Clone();
AchievementsHolder.Size = UDim2.new(0, 0, 0, 0);
AchievementsHolder.Frame.Position = UDim2.new(1.1, 0, 0, 0);
AchievementsHolder.Name = "LiveAchievement";
AchievementsHolder.Visible = true;
AchievementsHolder.Parent = GUI.AchievementsHolder;
AchievementsHolder.Frame.Details.Desc.Text = Details.Description
AchievementsHolder.Frame.Details.Title.Text = Details.Title
AchievementsHolder.Frame.Details.Reason.Text = Details.Reason
AchievementsHolder.Sound:Play();
AchievementsHolder:TweenSize(UDim2.new(1, 0, 0.2, 0), "In", "Quad", 0.8, true);
wait(0.8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5, true);
TweenService:Create(AchievementsHolder.Frame.Glow, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
    ImageTransparency = 1
		}):Play();
		wait(8);
AchievementsHolder.Frame:TweenPosition(UDim2.new(1.1, 0, 0, 0), "In", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:TweenSize(UDim2.new(1, 0, -0.1, 0), "InOut", "Quad", 0.5, true);
wait(0.5);
AchievementsHolder:Destroy();
  	end
})

local Tab = Window:MakeTab({
    Name = "主要功能",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false

})

Tab:AddToggle({
Name = "门显示",
Default = false,
Callback = function(val)
    flags.espdoors = val
    
    if val then
        local function setup(room)
            local door = room:WaitForChild("Door"):WaitForChild("Door")
            
            task.wait(0.1)
            local h = esp(door,Color3.fromRGB(255,240,0),door,"多耳屎")
            table.insert(esptable.doors,h)
            
            door:WaitForChild("Open").Played:Connect(function()
                h.delete()
            end)
            
            door.AncestryChanged:Connect(function()
                h.delete()
            end)
        end
        
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            setup(room)
        end)
        
        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
            if room:FindFirstChild("Assets") then
                setup(room) 
            end
        end
        
        repeat task.wait() until not flags.espdoors
        addconnect:Disconnect()
        
        for i,v in pairs(esptable.doors) do
            v.delete()
        end 
    end
end    
})

Tab:AddToggle({
Name = "钥匙显示",
Default = false,
Callback = function(val)
    flags.espkeys = val
    
    if val then
        local function check(v)
            if v:IsA("Model") and (v.Name == "LeverForGate" or v.Name == "KeyObtain") then
                task.wait(0.1)
                if v.Name == "KeyObtain" then
                    local hitbox = v:WaitForChild("Hitbox")
                    local parts = hitbox:GetChildren()
                    table.remove(parts,table.find(parts,hitbox:WaitForChild("PromptHitbox")))
                    
                    local h = esp(parts,Color3.fromRGB(90,255,40),hitbox,"本房间钥匙")
                    table.insert(esptable.keys,h)
                    
                elseif v.Name == "LeverForGate" then
                    local h = esp(v,Color3.fromRGB(90,255,40),v.PrimaryPart,"Lever")
                    table.insert(esptable.keys,h)
                    
                    v.PrimaryPart:WaitForChild("SoundToPlay").Played:Connect(function()
                        h.delete()
                    end) 
                end
            end
        end
        
        local function setup(room)
            local assets = room:WaitForChild("Assets")
            
            assets.DescendantAdded:Connect(function(v)
                check(v) 
            end)
                
            for i,v in pairs(assets:GetDescendants()) do
                check(v)
            end 
        end
        
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            setup(room)
        end)
        
        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
            if room:FindFirstChild("Assets") then
                setup(room) 
            end
        end
        
        repeat task.wait() until not flags.espkeys
        addconnect:Disconnect()
        
        for i,v in pairs(esptable.keys) do
            v.delete()
        end 
    end
end    
})

Tab:AddToggle({
Name = "书显示",
Default = false,
Callback = function(val)
    flags.espbooks = val
    
    if val then
        local function check(v)
            if v:IsA("Model") and (v.Name == "LiveHintBook" or v.Name == "LiveBreakerPolePickup") then
                task.wait(0.1)
                
                local h = esp(v,Color3.fromRGB(160,190,255),v.PrimaryPart,"本子")
                table.insert(esptable.books,h)
                
                v.AncestryChanged:Connect(function()
                    if not v:IsDescendantOf(room) then
                        h.delete() 
                    end
                end)
            end
        end
        
        local function setup(room)
            if room.Name == "50" or room.Name == "100" then
                room.DescendantAdded:Connect(function(v)
                    check(v) 
                end)
                
                for i,v in pairs(room:GetDescendants()) do
                    check(v)
                end
            end
        end
        
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            setup(room)
        end)
        
        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
            setup(room) 
        end
        
        repeat task.wait() until not flags.espbooks
        addconnect:Disconnect()
        
        for i,v in pairs(esptable.books) do
            v.delete()
        end 
    end
end    
})

Tab:AddToggle({
Name = "柜子显示",
Default = false,
Callback = function(val)
    flags.esplocker = val
    
    if val then
        local function check(v)
            if v:IsA("Model") then
                task.wait(0.1)
                if v.Name == "Wardrobe" then
                    local h = esp(v.PrimaryPart,Color3.fromRGB(145,100,25),v.PrimaryPart,"老王家")
                    table.insert(esptable.lockers,h) 
                elseif (v.Name == "Rooms_Locker" or v.Name == "Rooms_Locker_Fridge") then
                    local h = esp(v.PrimaryPart,Color3.fromRGB(145,100,25),v.PrimaryPart,"Locker")
                    table.insert(esptable.lockers,h) 
                end
            end
        end
        
        local function setup(room)
            local assets = room:WaitForChild("Assets")
            
            if assets then
                local subaddcon
                subaddcon = assets.DescendantAdded:Connect(function(v)
                    check(v) 
                end)
                
                for i,v in pairs(assets:GetDescendants()) do
                    check(v)
                end
                
                task.spawn(function()
                    repeat task.wait() until not flags.esplocker
                    subaddcon:Disconnect()  
                end) 
            end 
        end
        
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            setup(room)
        end)
        
        for i,v in pairs(workspace.CurrentRooms:GetChildren()) do
            setup(room) 
        end
        
        repeat task.wait() until not flags.esplocker
        addconnect:Disconnect()
        
        for i,v in pairs(esptable.lockers) do
            v.delete()
        end 
    end
end    
})

Tab:AddToggle({
Name = "物品显示",
Default = false,
Callback = function(val)
    flags.espitems = val
    
    if val then
        local function check(v)
            if v:IsA("Model") and (v:GetAttribute("Pickup") or v:GetAttribute("PropType")) then
                task.wait(0.1)
                
                local part = (v:FindFirstChild("Handle") or v:FindFirstChild("Prop"))
                local h = esp(part,Color3.fromRGB(160,190,255),part,v.Name)
                table.insert(esptable.items,h)
            end
        end
        
        local function setup(room)
            local assets = room:WaitForChild("Assets")
            
            if assets then  
                local subaddcon
                subaddcon = assets.DescendantAdded:Connect(function(v)
                    check(v) 
                end)
                
                for i,v in pairs(assets:GetDescendants()) do
                    check(v)
                end
                
                task.spawn(function()
                    repeat task.wait() until not flags.espitems
                    subaddcon:Disconnect()  
                end) 
            end 
        end
        
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            setup(room)
        end)
        
        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
            if room:FindFirstChild("Assets") then
                setup(room) 
            end
        end
        
        repeat task.wait() until not flags.espitems
        addconnect:Disconnect()
        
        for i,v in pairs(esptable.items) do
            v.delete()
        end 
    end
end    
})

local entitynames = {"RushMoving","AmbushMoving","Snare","A60","A120"}
Tab:AddToggle({
Name = "怪物显示",
Default = false,
Callback = function(val)
    flags.esprush = val
    
    if val then
        local addconnect
        addconnect = workspace.ChildAdded:Connect(function(v)
            if table.find(entitynames,v.Name) then
                task.wait(0.1)
                
                local h = esp(v,Color3.fromRGB(255,25,25),v.PrimaryPart,v.Name:gsub("Moving",""))
                table.insert(esptable.entity,h)
            end
        end)
        
        local function setup(room)
            if room.Name == "50" or room.Name == "100" then
                local figuresetup = room:WaitForChild("FigureSetup")
            
                if figuresetup then
                    local fig = figuresetup:WaitForChild("FigureRagdoll")
                    task.wait(0.1)
                    
                    local h = esp(fig,Color3.fromRGB(255,25,25),fig.PrimaryPart,"Figure")
                    table.insert(esptable.entity,h)
                end 
            else
                local assets = room:WaitForChild("Assets")
                
                local function check(v)
                    if v:IsA("Model") and table.find(entitynames,v.Name) then
                        task.wait(0.1)
                        
                        local h = esp(v:WaitForChild("Base"),Color3.fromRGB(255,25,25),v.Base,"Snare")
                        table.insert(esptable.entity,h)
                    end
                end
                
                assets.DescendantAdded:Connect(function(v)
                    check(v) 
                end)
                
                for i,v in pairs(assets:GetDescendants()) do
                    check(v)
                end
            end 
        end
        
        local roomconnect
        roomconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            setup(room)
        end)
        
        for i,v in pairs(workspace.CurrentRooms:GetChildren()) do
            setup(room) 
        end
        
        repeat task.wait() until not flags.esprush
        addconnect:Disconnect()
        roomconnect:Disconnect()
        
        for i,v in pairs(esptable.entity) do
            v.delete()
        end 
    end
end    
})

Tab:AddToggle({
Name = "人物显示",
Default = false,
Callback = function(val)
    flags.esphumans = val
    
    if val then
        local function personesp(v)
            v.CharacterAdded:Connect(function(vc)
                local vh = vc:WaitForChild("Humanoid")
                local torso = vc:WaitForChild("UpperTorso")
                task.wait(0.1)
                
                local h = esp(vc,Color3.fromRGB(255,255,255),torso,v.DisplayName)
                table.insert(esptable.people,h) 
            end)
            
            if v.Character then
                local vc = v.Character
                local vh = vc:WaitForChild("Humanoid")
                local torso = vc:WaitForChild("UpperTorso")
                task.wait(0.1)
                
                local h = esp(vc,Color3.fromRGB(255,255,255),torso,v.DisplayName)
                table.insert(esptable.people,h) 
            end
        end
        
        local addconnect
        addconnect = game.Players.PlayerAdded:Connect(function(v)
            if v ~= plr then
                personesp(v)
            end
        end)
        
        for i,v in pairs(game.Players:GetPlayers()) do
            if v ~= plr then
                personesp(v) 
            end
        end
        
        repeat task.wait() until not flags.esphumans
        addconnect:Disconnect()
        
        for i,v in pairs(esptable.people) do
            v.delete()
        end 
    end
end    
})

Tab:AddToggle({
Name = "金币显示",
Default = false,
Callback = function(val)
    flags.espgold = val
    
    if val then
        local function check(v)
            if v:IsA("Model") then
                task.wait(0.1)
                local goldvalue = v:GetAttribute("GoldValue")
                
                if goldvalue and goldvalue >= flags.goldespvalue then
                    local hitbox = v:WaitForChild("Hitbox")
                    local h = esp(hitbox:GetChildren(),Color3.fromRGB(255,255,0),hitbox,"钱 [".. tostring(goldvalue).."]")
                    table.insert(esptable.gold,h)
                end
            end
        end
        
        local function setup(room)
            local assets = room:WaitForChild("Assets")
            
            local subaddcon
            subaddcon = assets.DescendantAdded:Connect(function(v)
                check(v) 
            end)
            
            for i,v in pairs(assets:GetDescendants()) do
                check(v)
            end
            
            task.spawn(function()
                repeat task.wait() until not flags.espchest
                subaddcon:Disconnect()  
            end)  
        end
        
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            setup(room)
        end)
        
        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
            if room:FindFirstChild("Assets") then
                setup(room) 
            end
        end
        
        repeat task.wait() until not flags.espgold
        addconnect:Disconnect()
        
        for i,v in pairs(esptable.gold) do
            v.delete()
        end 
    end
end    
})

Tab:AddToggle({
Name = "怪来提醒",
Default = false,
Callback = function(val)
    flags.hintrush = val
    
    if val then
        local addconnect
        addconnect = workspace.ChildAdded:Connect(function(v)
            if table.find(entitynames,v.Name) then
                repeat task.wait() until plr:DistanceFromCharacter(v:GetPivot().Position) < 1000 or not v:IsDescendantOf(workspace)
                
                if v:IsDescendantOf(workspace) then
                    message(v.Name:gsub("Moving",""):lower().." 要他妈来了，快躲起来！")
                end
            end
        end) 
        
        repeat task.wait() until not flags.hintrush
        addconnect:Disconnect()
    end
end    
})

Tab:AddToggle({
Name = "屏幕亮度",
Default = false,
Callback = function(val)
    flags.light = val
   
    if val then
        local l = Instance.new("PointLight")
        l.Range = 10000
        l.Brightness = 2
        l.Parent = char.PrimaryPart
       
        repeat task.wait() until not flags.light
        l:Destroy() 
    end
end    
})

Tab:AddToggle({
Name = "一秒开锁",
Default = false,
Callback = function(val)
    flags.instapp = val
    
    local holdconnect
    holdconnect = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(p)
		fireproximityprompt(p)
	end)
    
    repeat task.wait() until not flags.instapp
    holdconnect:Disconnect()
end    
})

Tab:AddToggle({
Name = "删除Seek追逐",
Default = false,
Callback = function(val)
    flags.noseek = val
    
    if val then
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            local trigger = room:WaitForChild("TriggerEventCollision",2)
            
            if trigger then
                trigger:Destroy() 
            end
        end)
        
        repeat task.wait() until not flags.noseek
        addconnect:Disconnect()
    end
end    
})

Tab:AddToggle({
Name = "删除拼图门",
Default = false,
Callback = function(val)
    flags.nopuzzle = val
    
    if val then
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            local assets = room:WaitForChild("Assets")
            local paintings = assets:WaitForChild("Paintings",2)
            
            if paintings then
                local door = paintings:WaitForChild("MovingDoor",2)
            
                if door then
                    door:Destroy() 
                end 
            end
        end)
        
        repeat task.wait() until not flags.nopuzzle
        addconnect:Disconnect()
    end
end    
})

local screechremote = entityinfo:FindFirstChild("Screech")

Tab:AddToggle({
Name = "删除小黑子",
Default = false,
Callback = function(val)
    flags.noscreech = val
        
    if val then
            screechremote.Parent = nil
            repeat task.wait() until not flags.noscreech
            screechremote.Parent = entityinfo
    end
end    
})

Tab:AddToggle({
Name = "显示密码",
Default = false,
Callback = function(val)
    flags.getcode = val
    
    if val then
        local function deciphercode()
        local paper = char:FindFirstChild("LibraryHintPaper")
        local hints = plr.PlayerGui:WaitForChild("PermUI"):WaitForChild("Hints")
        
        local code = {[1]="_",[2]="_",[3]="_",[4]="_",[5]="_"}
            
            if paper then
                for i,v in pairs(paper:WaitForChild("UI"):GetChildren()) do
                    if v:IsA("ImageLabel") and v.Name ~= "Image" then
                        for i,img in pairs(hints:GetChildren()) do
                            if img:IsA("ImageLabel") and img.Visible and v.ImageRectOffset == img.ImageRectOffset then
                                local num = img:FindFirstChild("TextLabel").Text
                                
                                code[tonumber(v.Name)] = num 
                            end
                        end
                    end
                end 
            end
            
            return code
        end
        
        local addconnect
        addconnect = char.ChildAdded:Connect(function(v)
            if v:IsA("Tool") and v.Name == "LibraryHintPaper" then
                task.wait()
                
                local code = table.concat(deciphercode())
                
                if code:find("_") then
                    message("首先获取所有提示")
                else
                    message("这个密码是 ".. code)
                end
            end
        end)
        
        repeat task.wait() until not flags.getcode
        addconnect:Disconnect()
    end
end    
})

Tab:AddToggle({
Name = "A-000无锁",
Default = false,
Callback = function(val)
    flags.roomsnolock = val
    
    if val then
        local function check(room)
            local door = room:WaitForChild("RoomsDoor_Entrance",2)
            
            if door then
                local prompt = door:WaitForChild("Door"):WaitForChild("EnterPrompt")
                prompt.Enabled = true
            end 
        end
        
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            check(room)
        end)
        
        for i,v in pairs(workspace.CurrentRooms:GetChildren()) do
            check(room)
        end
        
        repeat task.wait() until not flags.roomsnolock
        addconnect:Disconnect()
    end
end  
})

Tab:AddToggle({
Name = "自动拾取",
Default = false,
Callback = function(val)
    flags.draweraura = val
    
    if val then
        local function setup(room)
            local function check(v)
                if v:IsA("Model") then
                    if v.Name == "DrawerContainer" then
                        local knob = v:WaitForChild("Knobs")
                        
                        if knob then
                            local prompt = knob:WaitForChild("ActivateEventPrompt")
                            local interactions = prompt:GetAttribute("Interactions")
                            
                            if not interactions then
                                task.spawn(function()
                                    repeat task.wait(0.1)
                                        if plr:DistanceFromCharacter(knob.Position) <= 12 then
                                            fireproximityprompt(prompt)
                                        end
                                    until prompt:GetAttribute("Interactions") or not flags.draweraura
                                end)
                            end
                        end
                    elseif v.Name == "GoldPile" then
                        local prompt = v:WaitForChild("LootPrompt")
                        local interactions = prompt:GetAttribute("Interactions")
                            
                        if not interactions then
                            task.spawn(function()
                                repeat task.wait(0.1)
                                    if plr:DistanceFromCharacter(v.PrimaryPart.Position) <= 12 then
                                        fireproximityprompt(prompt) 
                                    end
                                until prompt:GetAttribute("Interactions") or not flags.draweraura
                            end)
                        end
                    elseif v.Name:sub(1,8) == "ChestBox" then
                        local prompt = v:WaitForChild("ActivateEventPrompt")
                        local interactions = prompt:GetAttribute("Interactions")
                        
                        if not interactions then
                            task.spawn(function()
                                repeat task.wait(0.1)
                                    if plr:DistanceFromCharacter(v.PrimaryPart.Position) <= 12 then
                                        fireproximityprompt(prompt)
                                    end
                                until prompt:GetAttribute("Interactions") or not flags.draweraura
                            end)
                        end
                    elseif v.Name == "RolltopContainer" then
                        local prompt = v:WaitForChild("ActivateEventPrompt")
                        local interactions = prompt:GetAttribute("Interactions")
                        
                        if not interactions then
                            task.spawn(function()
                                repeat task.wait(0.1)
                                    if plr:DistanceFromCharacter(v.PrimaryPart.Position) <= 12 then
                                        fireproximityprompt(prompt)
                                    end
                                until prompt:GetAttribute("Interactions") or not flags.draweraura
                            end)
                        end
                    end 
                end
            end
    
            local subaddcon
            subaddcon = room.DescendantAdded:Connect(function(v)
                check(v) 
            end)
            
            for i,v in pairs(room:GetDescendants()) do
                check(v)
            end
            
            task.spawn(function()
                repeat task.wait() until not flags.draweraura
                subaddcon:Disconnect() 
            end)
        end
        
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            setup(room)
        end)
        
        for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
            if room:FindFirstChild("Assets") then
                setup(room) 
            end
        end
        
        repeat task.wait() until not flags.draweraura
        addconnect:Disconnect()
    end
end    
})

Tab:AddToggle({
Name = "人物穿墙",
Default = false,
Callback = function(Value)
        if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
end    
})

Tab:AddButton({
Name = "删除小蜘蛛",
Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Bricks.Jumpscare:Destroy()
        end)
end
})

Tab:AddButton({
Name = "自动完成断路器游戏",
Callback = function()
    game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
end    
})

Tab:AddButton({
Name = "自动A-1000",
Callback = function()
loadstring(game:HttpGet(('https://pastebin.com/raw/qe7CYfwB')))()
end
})

Tab:AddParagraph("提示","自动A-1000开启功能即可躲柜子！")

Tab:AddButton({
Name = "50关解锁",
Callback = function()
        local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
end    
})

Tab:AddButton({
Name = "生成红房",
Callback = function()
    local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
    local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
    local seconds = 1000000
    v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)
end    
})

Tab:AddButton({
    Name = "自动完成心跳小游戏",
    Callback = function ()
        firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent) 
    end
})

Tab:AddButton({
  Name = "加速能量条",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
  end
})

Tab:AddButton({

	Name = "穿墙(无拉回)",

	Callback = function()

loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()

    end

})

Tab:AddButton({
	Name = "飞行",
	Callback = function()
      	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
  	end    
})
 
Tab:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	 
})
 
Tab:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	 
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddTextbox({
	Name = "最大血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
	end	 
})

Tab:AddTextbox({
	Name = "当前血量",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end	 
})

Tab:AddButton({
	Name = "回满血",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth 
end
})

Tab:AddButton({
  Name = "加速回血",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
  end
})

Tab:AddTextbox({
	Name = "视界设置（70）",
	Default = "",
	TextDisappear = true,
	Callback = function(v)
		game.Workspace.CurrentCamera.FieldOfView = v
	end
})

Tab:AddTextbox({
	Name = "高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(phh)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = phh  
	end
})
 
Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddToggle({
	Name = "自动开门",
	Default = false,
    Save = false,
    Flag = "AutoSkip"
})

local AutoSkipCoro = coroutine.create(function()
        while true do
            task.wait()
            pcall(function()
            if OrionLib.Flags["AutoSkip"].Value == true and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value < 100 then
                local HasKey = false
                local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
                local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom)]:WaitForChild("Door")
                for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                    if v.Name == "KeyObtain" then
                        HasKey = v
                    end
                end
                if HasKey then
                    game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                    task.wait(0.3)
                    fireproximityprompt(HasKey.ModulePrompt,0)
                    game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                    task.wait(0.3)
                    fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
                end
                if LatestRoom == 50 then
                    CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
                end
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                task.wait(0.3)
                CurrentDoor.ClientOpen:FireServer()
            end
        end)
        end
end)
coroutine.resume(AutoSkipCoro)

Tab:AddToggle({
Name = "人物加速",
Default = false,
Callback = function(state)
    if state then 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
    else
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
end    
})

local time = Window:MakeTab({
    Name = "实体计时器",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})

time:AddButton({
    Name = "每15秒尖叫一次",
    Callback = function ()
    local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

while true do -- Will run the script forever
  coroutine.wrap(function() require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(Data) end)() -- Coroutines prevent the script from yielding.
task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
end

end
})


time:AddButton({
    Name = "每15秒停止一次",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        while true do -- Will run the script forever
          coroutine.wrap(function() require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])          end)() -- Coroutines prevent the script from yielding.
        task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
        end
    end
})

time:AddButton({
    Name = "每15秒出现一次故障",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        while true do -- Will run the script forever
          coroutine.wrap(function() require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)]) end)() -- Coroutines prevent the script from yielding.
        task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
        end
    end
})

time:AddButton({
    Name = "每15秒心跳小游戏",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        while true do -- Will run the script forever
          coroutine.wrap(function() firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent)  end)() -- Coroutines prevent the script from yielding.
        task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
        end
    end
})

time:AddButton({
    Name = "提摩西每15秒一次",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        while true do -- Will run the script forever
          coroutine.wrap(function() local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

            require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.SpiderJumpscare)(Data.workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets:WaitForChild("Dresser").DrawerContainer, 0.2)  end)() -- Coroutines prevent the script from yielding.
        task.wait(15) -- Waits somewhere around a millisecond before executing again. This is necessary so that the script won't crash your game. You can also add a time as such: task.wait(1) or task.wait(0.5)
        end
    end
})

time:AddParagraph("Bug", "当我点击生产rush时它崩溃了")

time:AddButton({
    Name = "每15秒生产rush一次",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        while true do
            coroutine.wrap(function() local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)

        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rush", -- Custom name of your entity
            Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 100, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 25,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                1, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 1,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(0, 0, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 4,
                        Max = 4,
                    },
                },
            },
            CustomDialog = {"你死于Rush...", "EEEEEEEE", "EEEEEEEE"}, -- Custom death message
        })

        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end

        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end

        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end

        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end

        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end

        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end

        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------

        -- Run the created entity
        Creator.runEntity(entity) end)()

    end
    end
})

local customTab = Window:MakeTab({
    Name = "定制实体",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})

customTab:AddButton({
    Name = "生产A-60", 
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/A-60.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 1, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 5,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {30, 30, 0.1, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://11394048190", -- Image1 url
            Image2 = "rbxassetid://11394048190", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 1,
            },
        },
    },
    CustomDialog = {"你死于 A-60", "它随时可能出现，一声尖叫就能说明它的存在", "当你听到它产生产时，你必须尽快远离它", "它知道你在哪里，所以躲在不同的地方是行不通的.."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)



    end



    })


customTab:AddButton({
    Name = "生产Firebrand",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Firebrand", -- Custom name of your entity
    Model = "https://github.com/fnaclol/sussy-bois/raw/main/FireBrand3.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你为你呼唤的人而死FireBrand", "FireBrand 只会根据你的意愿繁殖", "当你听到他产生产时，你只有2秒钟的时间躲起来", "通风口也救不了你"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)


    end
})

customTab:AddButton({
    Name = "生产Null",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Null", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Null.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你为你称之为煽动者的人而死", "火焰只会在你的意志下产生", "当你听到他产生产时，你只有2秒钟的时间躲起来", "通风口也救不了你"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)


    end
})


customTab:AddButton({
    Name = "生产Rebound",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rebound", -- Custom name of your entity
            Model = "rbxassetid://11401769490", -- Can be GitHub file or rbxassetid
            Speed = 300, -- Percentage, 100 = default Rush speed
            DelayTime = 3, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = false,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2.5, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 6,
                WaitTime = 7,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://11372489796", -- Image1 url
                    Image2 = "rbxassetid://11372489796", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 0, 0), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 1,
                        Max = 3,
                    },
                },
            },
            CustomDialog = {"You died to Rebound...", "The lights flicker upon its scream.", "It is also tricky, as it rebounds.", "You need to hide to around 6 times."}, -- Custom death message
        })

        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end

        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end

        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end

        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end

        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end

        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end

        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------

        -- Run the created entity
        Creator.runEntity(entity)

    end
})



customTab:AddButton({
    Name = "生产Angry Munci",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Angry Munci", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/AngryMunci.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 3, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
    end
})


customTab:AddButton({
    Name = "生产BigGames",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "BigGames", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/BIGGAMES.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 5,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 1, 2}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})


customTab:AddButton({
    Name = "生产Bonnie",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Bonnie", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Bonnie.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Capybara",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Capybara", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Capybara.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 3,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Chica",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Chica", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Chica.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Depth",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Depth", -- Custom name of your entity
            Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Depth.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 300, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2, -- Time (seconds)
            },
            Cycles = {
                Min = 2,
                Max = 4,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {10, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 255, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 1,
                        Max = 3,
                    },
                },
            },
            CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
        })

        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end

        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end

        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end

        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end

        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end

        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end

        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------

        -- Run the created entity
        Creator.runEntity(entity)


    end
})

customTab:AddButton({
    Name = "生产Doge",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Doge", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Doge.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 5,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {4.9, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Eater",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Eater", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Eater.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Elgato",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Elgato", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Elgato.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 230, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Flamingo",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Flamingo", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Flamingo.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

customTab:AddButton({
    Name = "生产Foxy",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Foxy", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Foxy.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.9, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Freddy Fazbear",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Freddy Fazbear", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/FreddyFazbear.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5.5, 20, 1.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Greed",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Greed.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Greed RF",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/GreedRF.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Happy Muchi",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Happy Munci", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/HappyMuchi.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Hehehehaw",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Hehehehaw", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Hehehehaw.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Kardin", -- subscribe
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Kardin", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Kardin.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产LSPLASH",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "LSPLASH", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/LSPLASH.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Movong Eyes",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Moving Eyes", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/MovingEyes.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Obunga",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Obunga", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Obunga.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 6,
        WaitTime = 3,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {7, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Old Ambush",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Ambush", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/OldAmbush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Orange",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Orange", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Orange.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Peter Griffin",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Peter Griffin", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/PeterGriffin.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Pikachu",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Pikachu.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Sanic",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Sanic", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Sanic.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 450, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 4,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {7, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Saul",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Saul", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Saul.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产Wise Mystical Tree",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Wise Mystical Tree.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "生产plamen6789", -- like
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/plamen6789.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"你可以", "把你的", "习俗死亡", "在此留言。"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})


local everyTab = Window:MakeTab({
    Name = "实体每扇Doors",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})

everyTab:AddParagraph("警告！","需要高性能！")

everyTab:AddButton({
    Name = "每扇门都尖叫",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(Data)
        end)

    end
})

everyTab:AddButton({
    Name = "每扇门上都有眼睛",
    Callback = function ()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            local enableDamage = true
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11388700077")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        ts = game:GetService("TweenService")

        wait(3)

        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};

            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end

        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                wait(1)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "你死了Eyes...",
                                "他们不喜欢被人盯着看。",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end
        end)
            end,
})

everyTab:AddButton({
    Name = "Jack走廊每扇门",
    Callback = function ()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
            local shadow=game:GetObjects("rbxassetid://11446576619")[1]
            firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
            shadow:PivotTo(currentLoadedRoom.RoomStart.CFrame)
            wait(0.2)
            shadow.Parent=workspace
            shadow.Sound:Play()
            task.wait(0.3)
            shadow:Destroy()
            firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "tryp", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 10)
            end)
    end
})

everyTab:AddButton({
    Name = "停下每扇门",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])
        end)
    end    
})


everyTab:AddButton({
    Name = "打破每扇门的灯",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "breakLights", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 0.416, 60) 
        end)
    end    
})

everyTab:AddButton({
    Name = "每扇门上都有眼睛",
    Callback = function ()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            local enableDamage = true
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11388700077")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        ts = game:GetService("TweenService")

        wait(3)

        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};

            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end

        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                wait(1)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "你死了Eyes...",
                                "他们不喜欢被人盯着看。",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end
        end)
            end,
        })
everyTab:AddButton({
    Name = "每扇门都闪烁着灯光",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1) 
        end)
    end    
})


everyTab:AddButton({
    Name = "seek每扇门的眼睛",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms:WaitForChild(game.ReplicatedStorage.GameData.LatestRoom.Value), 14, 1665596753, true)
        end)
    end    
})

everyTab:AddButton({
    Name = "心跳小游戏家家户户",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent) 
        end)
    end    
})

everyTab:AddButton({
    Name = "每个门都是红色的房间",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
        local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
        local seconds = 1000000
        v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)
        end)
    end
})

everyTab:AddButton({
    Name = "A-60 每个门",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "A-60", -- Custom name of your entity
            Model = "https://github.com/fnaclol/sussy-bois/blob/main/A-60V2.rbxm", -- Can be GitHub file or rbxassetid
            Speed = 200, -- Percentage, 100 = default Rush speed
            DelayTime = 3, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 2,
                WaitTime = 0.05,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {30, 30, 0.1, 1}, -- Shake values (don't change if you don't know)
                50, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://11394048190", -- Image1 url
                    Image2 = "rbxassetid://11394048190", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 0, 0), -- Color
                    },
                    Tease = {
                        false, -- Enabled/Disabled
                        Min = 1,
                        Max = 1,
                    },
                },
            },
            CustomDialog = {"你死于 A-60", "它随时可能出现，一声尖叫就能说明它的存在", "当你听到它生产时，你必须尽快远离它", "它知道你在哪里，所以躲在不同的地方是行不通的.."}, -- Custom death message
        })

        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end

        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end

        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end

        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end

        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end

        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end

        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------

        -- Run the created entity
        Creator.runEntity(entity)
        end)
    end
})

everyTab:AddButton({
    Name = "反弹每扇门",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rebound", -- Custom name of your entity
            Model = "rbxassetid://11401769490", -- Can be GitHub file or rbxassetid
            Speed = 150, -- Percentage, 100 = default Rush speed
            DelayTime = 3, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = false,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2.5, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 6,
                WaitTime = 7,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://11372489796", -- Image1 url
                    Image2 = "rbxassetid://11372489796", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 0, 0), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 1,
                        Max = 3,
                    },
                },
            },
            CustomDialog = {"你为了反弹而死...", "灯光在它的尖叫中闪烁。", "这也很棘手，因为它会反弹。", "你需要躲6次左右。"}, -- Custom death message
        })

        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end

        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end

        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end

        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end

        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end

        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end

        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------

        -- Run the created entity
        Creator.runEntity(entity)

        end)
    end
})



local Tab = Window:MakeTab({
    Name = "衍生实体",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})


Tab:AddButton({
    Name = "产生产尖叫",
    Callback = function ()
        require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
    workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])

    end
})


Tab:AddButton({
    Name = "生产Ambush",
    Callback = function ()
        local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
        local Configuration = {
            Kill = false, 
            Speed = 160,
            Time = 3 
        }

        EntitySpawner:Spawn("Ambush", Configuration)
    end
})

Tab:AddButton({
    Name = "生产Ambush [可杀死的]",
    Callback = function ()
        local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
        local Configuration = {
            Kill = true,
            Speed = 160, 
            Time = 3
        }

        EntitySpawner:Spawn("Ambush", Configuration)
    end
})

Tab:AddButton({
    Name = "生产Seek",
    Callback = function ()
        local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/EntitySpawner.lua"))()
        local Configuration = {}

        EntitySpawner:Spawn("Seek", unpack(Configuration))    
    end
})

Tab:AddButton({
    Name = "生产Eyes",
    Callback = function ()
        local enableDamage = false
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11488518082")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(10,30,0.7,0.1)
        ts = game:GetService("TweenService")
        wait(0.2)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(2,30,5,2)
        wait(3)

        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};

            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end

        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()

        camShake:ShakeOnce(5,50,0.7,0.2)
                wait(0.7)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "You died to the Eyes...",
                                "They don't like to be stared at.",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end


    end
})


Tab:AddButton({
    Name = "生产Eyes [可杀死的]",
    Callback = function ()
        local enableDamage = true
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11488518082")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(10,30,0.7,0.1)
        ts = game:GetService("TweenService")
        wait(0.2)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(2,30,5,2)
        wait(3)

        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};

            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end

        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()

        camShake:ShakeOnce(5,50,0.7,0.2)
                wait(0.7)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "你看上去死了...",
                                "他们不喜欢被人盯着看。",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end


    end
})



Tab:AddButton({
    Name = "生产Halt",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])

    end
})

Tab:AddButton({
    Name = "生产Glitch",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])

    end
})

Tab:AddButton({
    Name = "生产Rush",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rush", -- Custom name of your entity
            Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 100, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 25,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                1, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 1,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(0, 0, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 4,
                        Max = 4,
                    },
                },
            },
            CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
        })

        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end

        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end

        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end

        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end

        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end

        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end

        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------

        -- Run the created entity
        Creator.runEntity(entity)

    end
})



Tab:AddButton({
    Name = "生产Rush [可杀死的]",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rush", -- Custom name of your entity
            Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 100, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = true,
            KillRange = 25,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                1, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 1,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(0, 0, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 4,
                        Max = 4,
                    },
                },
            },
            CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
        })

        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end

        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end

        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end

        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end

        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end

        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end

        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------

        -- Run the created entity
        Creator.runEntity(entity)

    end
})

local customTab = Window:MakeTab({
    Name = "刷怪功能",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})

customTab:AddButton({
    Name = "怪物1", 
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/A-60.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 1, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 3,
        WaitTime = 5,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {30, 30, 0.1, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://11394048190", -- Image1 url
            Image2 = "rbxassetid://11394048190", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 1,
            },
        },
    },
    CustomDialog = {"You died to A-60", "It can Apear at any moment, a loud scream will anounce its presence", "When you hear it spawn you must stay out of its reach as soon as possible", "It knows exactly where you are so hiding in different places will not work.."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    
    
    end
    
    
    
    })


customTab:AddButton({
    Name = "怪物2",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Firebrand", -- Custom name of your entity
    Model = "https://github.com/fnaclol/sussy-bois/raw/main/FireBrand3.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 2,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to whom you call FireBrand", "FireBrand will spawn only on your will", "When you hear him spawn you only have 2 seconds to hide", "Vents do not save you aswell"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

        
    end
})

customTab:AddButton({
    Name = "怪物3",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rebound", -- Custom name of your entity
            Model = "rbxassetid://11401769490", -- Can be GitHub file or rbxassetid
            Speed = 300, -- Percentage, 100 = default Rush speed
            DelayTime = 3, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = false,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2.5, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 6,
                WaitTime = 7,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://11372489796", -- Image1 url
                    Image2 = "rbxassetid://11372489796", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 0, 0), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 1,
                        Max = 3,
                    },
                },
            },
            CustomDialog = {"You died to Rebound...", "The lights flicker upon its scream.", "It is also tricky, as it rebounds.", "You need to hide to around 6 times."}, -- Custom death message
        })
        
        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end
        
        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end
        
        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end
        
        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------
        
        -- Run the created entity
        Creator.runEntity(entity)
        
    end
})



customTab:AddButton({
    Name = "怪物4",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Angry Munci", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/AngryMunci.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 3, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)
    end
})


customTab:AddButton({
    Name = "怪物5",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "BigGames", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/BIGGAMES.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 200, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 5,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 1, 2}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})


customTab:AddButton({
    Name = "怪物6",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Bonnie", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Bonnie.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物7",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Capybara", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Capybara.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 100, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 3,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物8",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Chica", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Chica.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物9",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Depth", -- Custom name of your entity
            Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Depth.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 300, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 50,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                2, -- Time (seconds)
            },
            Cycles = {
                Min = 2,
                Max = 4,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {10, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                false, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(255, 255, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 1,
                        Max = 3,
                    },
                },
            },
            CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
        })
        
        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end
        
        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end
        
        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end
        
        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end
        
        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end
        
        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------
        
        -- Run the created entity
        Creator.runEntity(entity)
        
        
    end
})

customTab:AddButton({
    Name = "怪物10",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Doge", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Doge.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 5,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {4.9, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物11",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Eater", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Eater.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物13",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Elgato", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Elgato.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 230, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        1, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物14",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Flamingo", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Flamingo.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

customTab:AddButton({
    Name = "怪物15",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Foxy", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Foxy.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.9, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物16",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Freddy Fazbear", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/FreddyFazbear.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {5.5, 20, 1.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物17",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Greed.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物18",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/GreedRF.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物19",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Happy Munci", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/HappyMuchi.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物20",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Hehehehaw", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Hehehehaw.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物21", -- subscribe
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Kardin", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Kardin.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物22",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "LSPLASH", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/LSPLASH.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物23",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Moving Eyes", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/MovingEyes.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物24",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Obunga", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Obunga.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 4, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        4, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 6,
        WaitTime = 3,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {7, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物25",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Ambush", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/OldAmbush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物27",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Orange", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Orange.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物28",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Peter Griffin", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/PeterGriffin.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物29",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Pikachu.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 350, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物30",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Sanic", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Sanic.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 450, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 4,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {7, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物31",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Saul", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Saul.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 300, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物32",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/Wise Mystical Tree.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

customTab:AddButton({
    Name = "怪物33", -- like
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Greed RF", -- Custom name of your entity
    Model = "https://github.com/plamen6789/CustomDoorsMonsters/blob/main/plamen6789.rbxm?raw=true", -- Can be GitHub file or rbxassetid
    Speed = 250, -- Percentage, 100 = default Rush speed
    DelayTime = 2, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = false,
    KillRange = 50,
    BreakLights = false,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 2,
        Max = 4,
        WaitTime = 2,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://10483855823", -- Image1 url
            Image2 = "rbxassetid://10483999903", -- Image2 url
            Shake = true,
            Sound1 = {
                10483790459, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                10483837590, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 255, 255), -- Color
            },
            Tease = {
                true, -- Enabled/Disabled
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You can", "put your", "custom death", "message here."}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

    end
})

local Tab = Window:MakeTab({
    Name = "衍生实体",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})


Tab:AddButton({
    Name = "产生尖叫",
    Callback = function ()
        require(game.StarterGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech)(require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game),
    workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")])

    end
})


Tab:AddButton({
    Name = "生产Ambush",
    Callback = function ()
        local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
        local Configuration = {
            Kill = false, 
            Speed = 160,
            Time = 3 
        }

        EntitySpawner:Spawn("Ambush", Configuration)
    end
})

Tab:AddButton({
    Name = "生产Ambush [可杀死的]",
    Callback = function ()
        local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/Spawner_V2.lua"))()
        local Configuration = {
            Kill = true,
            Speed = 160, 
            Time = 3
        }

        EntitySpawner:Spawn("Ambush", Configuration)
    end
})

Tab:AddButton({
    Name = "生产Seek",
    Callback = function ()
        local EntitySpawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/dreadmania/Scripts/main/EntitySpawner.lua"))()
        local Configuration = {}

        EntitySpawner:Spawn("Seek", unpack(Configuration))    
    end
})

Tab:AddButton({
    Name = "生产Eyes",
    Callback = function ()
        local enableDamage = false
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11488518082")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(10,30,0.7,0.1)
        ts = game:GetService("TweenService")
        wait(0.2)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(2,30,5,2)
        wait(3)

        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};

            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end

        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()

        camShake:ShakeOnce(5,50,0.7,0.2)
                wait(0.7)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "You died to the Eyes...",
                                "They don't like to be stared at.",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end


    end
})


Tab:AddButton({
    Name = "生产Eyes [可杀死的]",
    Callback = function ()
        local enableDamage = true
        repenttimes = 0
        local deadeyescrucifix = false
        local repentcomplete = false
        local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
        local eyes = game:GetObjects("rbxassetid://11488518082")[1]
        local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
        eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

        eyes.Parent = workspace
        eyes.Initiate:Play()
        task.wait(0.5)
        eyes.Attachment.Eyes.Enabled = true
        eyes.whisper:Play()
        eyes.whisper.Looped = true
        function EyesHell()
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(10,30,0.7,0.1)
        ts = game:GetService("TweenService")
        wait(0.2)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()
        camShake:ShakeOnce(2,30,5,2)
        wait(3)

        eyes.Scream:Play()
        ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
        wait(7)
        eyes:Destroy()
        end
        local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

        local function IsVisible(part)
            local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
            local onscreen = found and vec.Z > 0
            local cfg = RaycastParams.new();
            cfg.FilterType = Enum.RaycastFilterType.Blacklist
            cfg.FilterDescendantsInstances = {part};

            local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
            return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
        end

        while true do
            if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
                enableDamage = false
                task.wait(0.2)
                eyes:Destroy()
            end
            if enableDamage then
                if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
                game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
                wait(0.2)
                elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
                print("GET THAT AWAY FROM ME")
                eyes.Repent:Play()
                eyes.Attachment.Angry.Enabled = true
                local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
        local camara = game.Workspace.CurrentCamera
        local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
        camara.CFrame = camara.CFrame * shakeCf
        end)
        camShake:Start()

        camShake:ShakeOnce(5,50,0.7,0.2)
                wait(0.7)
                repenttimes = repenttimes + 1
                print(repenttimes)
                eyes.Attachment.Angry.Enabled = false
                wait(0.4)
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
                local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
                hi.Anchored = true
                hi.Parent = workspace
                hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
                game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
                EyesHell()
                enableDamage = false
                    if hum.Health <= 0 then
                        game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                            "Eyes"
                        debug.setupvalue(
                            getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                            1,
                            {
                                "你看上去死了...",
                                "他们不喜欢被人盯着看。",
                            }
                        )
                    end
                end
            end
            task.wait(0.2)
        end


    end
})



Tab:AddButton({
    Name = "生产Halt",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        require(game.ReplicatedStorage.ClientModules.EntityModules.Shade).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])

    end
})

Tab:AddButton({
    Name = "生产Glitch",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        require(game.ReplicatedStorage.ClientModules.EntityModules.Glitch).stuff(Data, workspace.CurrentRooms[tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)])

    end
})

Tab:AddButton({
    Name = "生产Rush",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rush", -- Custom name of your entity
            Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 100, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = false,
            KillRange = 25,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                1, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 1,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(0, 0, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 4,
                        Max = 4,
                    },
                },
            },
            CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
        })

        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end

        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end

        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end

        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end

        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end

        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end

        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------

        -- Run the created entity
        Creator.runEntity(entity)

    end
})



Tab:AddButton({
    Name = "生产Rush [可杀死的]",
    Callback = function ()
        local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

        -- Create entity
        local entity = Creator.createEntity({
            CustomName = "Rush", -- Custom name of your entity
            Model = "https://github.com/Johnny39871/assets/blob/main/Rush.rbxm?raw=true", -- Can be GitHub file or rbxassetid
            Speed = 100, -- Percentage, 100 = default Rush speed
            DelayTime = 2, -- Time before starting cycles (seconds)
            HeightOffset = 0,
            CanKill = true,
            KillRange = 25,
            BreakLights = true,
            BackwardsMovement = false,
            FlickerLights = {
                true, -- Enabled/Disabled
                1, -- Time (seconds)
            },
            Cycles = {
                Min = 1,
                Max = 1,
                WaitTime = 2,
            },
            CamShake = {
                true, -- Enabled/Disabled
                {3.5, 20, 0.1, 1}, -- Shake values (don't change if you don't know)
                100, -- Shake start distance (from Entity to you)
            },
            Jumpscare = {
                true, -- Enabled/Disabled
                {
                    Image1 = "rbxassetid://10483855823", -- Image1 url
                    Image2 = "rbxassetid://10483999903", -- Image2 url
                    Shake = true,
                    Sound1 = {
                        10483790459, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Sound2 = {
                        10483837590, -- SoundId
                        { Volume = 0.5 }, -- Sound properties
                    },
                    Flashing = {
                        true, -- Enabled/Disabled
                        Color3.fromRGB(0, 0, 255), -- Color
                    },
                    Tease = {
                        true, -- Enabled/Disabled
                        Min = 4,
                        Max = 4,
                    },
                },
            },
            CustomDialog = {"You died to Rush...", "your balls look dry", "Can I put some lotion on them?"}, -- Custom death message
        })

        -----[[ Advanced ]]-----
        entity.Debug.OnEntitySpawned = function(entityTable)
            print("Entity has spawned:", entityTable.Model)
        end

        entity.Debug.OnEntityDespawned = function(entityTable)
            print("Entity has despawned:", entityTable.Model)
        end

        entity.Debug.OnEntityStartMoving = function(entityTable)
            print("Entity has started moving:", entityTable.Model)
        end

        entity.Debug.OnEntityFinishedRebound = function(entityTable)
            print("Entity has finished rebound:", entityTable.Model)
        end

        entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
            print("Entity:", entityTable.Model, "has entered room:", room)
        end

        entity.Debug.OnLookAtEntity = function(entityTable)
            print("Player has looked at entity:", entityTable.Model)
        end

        entity.Debug.OnDeath = function(entityTable)
            warn("Player has died.")
        end
        ------------------------

        -- Run the created entity
        Creator.runEntity(entity)

    end
})

local Tab = Window:MakeTab({
  Name = "FE变身脚本",
  Icon = "rbxassetid://17053443669",
  PremiumOnly = false
  })

Tab:AddButton({
	Name = "FE SANS",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/i0yEjAry"))()
end
})

Tab:AddButton({
	Name = "FE Reaper",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/5rVDct9n"))()
end
})

Tab:AddButton({
	Name = "FE死侍",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/NVvdEySK"))()
end
})

Tab:AddButton({
	Name = "FE Knife",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/uAnpMVZR"))()
end
})

Tab:AddButton({
	Name = "Void BOSS",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/uP0MV6As"))()
end
})

Tab:AddButton({
	Name = "变大变小真的奇妙~",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/yRyNgpGE"))()
end
})

Tab:AddButton({
	Name = "FE PUNCH",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/gBrRFj8K"))()
end
})

Tab:AddButton({
	Name = "FE DEATH",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/sUcgGXkC"))()
end
})

Tab:AddButton({
	Name = "炸服(不要问我为什么加到这)",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/eU2wngHG"))()
end
})

Tab:AddButton({
	Name = "FE Giant AXE",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/lrjtanrp/raw'),true))()
end
})

Tab:AddButton({
	Name = "FE Saitama",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/HgbE1e6E"))()
end
})

Tab:AddButton({
	Name = "FE giant eye",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/nXEnZrdH"))()
end
})

Tab:AddButton({
	Name = "FE帅气小刀刀",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/PTQQGkYG"))()
end
})

Tab:AddButton({
	Name = "FE月亮之刃",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/rTSxZGSQ"))()
end
})

Tab:AddButton({
	Name = "Among us(逆天)",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/f1LTmTPZ"))()
end
})

local player = Window:MakeTab({
	Name = "极端",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "V1",
	Callback = function()
      	loadstring(game:HttpGet('https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true'))()
  	end
})

local itemsTab = Window:MakeTab({
    Name = "项目",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})

itemsTab:AddParagraph("警告！","仅适用于由脚本生成的实体！")

itemsTab:AddButton({
    Name = "给十字架",
    Callback = function ()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Fazedrab/Utilities-1/main/Crucifix"))()
        end
})

itemsTab:AddButton({
    Name = "给万能钥匙",
    Callback = function ()
        function skelly()
            local DoorReplication = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Door%20Replication/Source.lua"))()


        -- Get current room
        local room = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]


        -- Replicate door
        local replicatedDoor = DoorReplication.ReplicateDoor(room, {
            CustomKeyName = "Skeleton Key",
            DestroyKey = false,
        })


        -- Debug features [advanced]
        replicatedDoor.Debug.OnDoorOpened = function(doorTable)
            warn("Door", doorTable.Model, "has opened")
        end
        end
        local DoorReplication = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Door%20Replication/Source.lua"))()


        -- Get current room
        local room = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]


        -- Replicate door
        local replicatedDoor = DoorReplication.ReplicateDoor(room, {
            CustomKeyName = "Skeleton Key",
            DestroyKey = false,
        })


        -- Debug features [advanced]
        replicatedDoor.Debug.OnDoorOpened = function(doorTable)
            warn("Door", doorTable.Model, "has opened")
        end
                local shadow=game:GetObjects("rbxassetid://11491147151")[1]
        shadow.Parent = game.Players.LocalPlayer.Backpack
        local anim = Instance.new("Animation")
        local anim2 = Instance.new("Animation")
        anim.AnimationId = 'https://www.roblox.com/Assest?ID=6525854363'
        anim2.AnimationId = 'https://www.roblox.com/Assest?ID=10526835827'
        local track

        shadow.Equipped:Connect(function()
            track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim) 
                track.Priority = Enum.AnimationPriority.Action
                track:Play()
                track.Looped = false
                wait(1.4)
            track2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(anim2) 
                track2.Priority = Enum.AnimationPriority.Action
                track2:Play()
                track2.Looped = false

        end)

        shadow.Unequipped:Connect(function()
            if track then
                track:Stop()
                track2:Stop()
            end
        end)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            if workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Door:FindFirstChild("Lock") then
                print("YES KEY")
           skelly()
           else
               print("no.")
        end
        end)
    end
})

itemsTab:AddButton({
    Name = "十字架itemshop",
    Callback = function ()
    --// Crucifix (Execute in prerun shop)
function FullVersion() do
    local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
    local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()


    -- Create your tool here
    local exampleTool = game:GetObjects("rbxassetid://11556599019")[1]

    -- Create custom shop item
    CustomShop.CreateItem(exampleTool, {
        Title = "十字架",
        Desc = "一次性使用，阻止大多数攻击",
        Image = "https://static.wikia.nocookie.net/doors-game/images/8/88/Icon_crucifix2.png/revision/latest?cb=20220728033038",
        Price = 200,
        Stack = 1,
    })
    local Players = game:GetService("Players")
    local UIS = game:GetService("UserInputService")
    local tool = exampleTool
    local Plr = Players.LocalPlayer
    local Char = Plr.Character or Plr.CharacterAdded:Wait()
    local Hum = Char:WaitForChild("Humanoid")
    local RightArm = Char:WaitForChild("RightUpperArm")
    local LeftArm = Char:WaitForChild("LeftUpperArm")
    local RightC1 = RightArm.RightShoulder.C1
    local LeftC1 = LeftArm.LeftShoulder.C1
            local function setupCrucifix(tool)
            RightArm.Name = "R_Arm"
            LeftArm.Name = "L_Arm"

            RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
            LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
            for _, v in next, Hum:GetPlayingAnimationTracks() do
                v:Stop()
            end
            end
    tool.Equipped:Connect(function()
        setupCrucifix(exampleTool)
        game.Players.LocalPlayer:SetAttribute("Hidden", true)
    UIS.InputBegan:Connect(function(input)
       if input.UserInputType == Enum.UserInputType.MouseButton1 then
       if tool.Parent == game.Players.LocalPlayer.Character then
                       if game.Workspace:FindFirstChild("Lookman") then
                          local eyes = game.Workspace:FindFirstChild("Lookman").Core
                          local crucifixed = Instance.new("BoolValue")
                          crucifixed.Parent = eyes
                          crucifixed.Name = "GettingCrucifixed"
                          eyes.Ambience.Playing = false
                          eyes.Repent.Looped = true
                          eyes.Repent:Play()
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()

    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()

    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()

    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
    wait(1.2)
    local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()

    camShake:ShakeOnce(3.5, 10, 0.1, 1.5)
                          wait(1.2)
                          local ClonedMesh = tool.NewOneBro:Clone()
                          ClonedMesh.Parent = game.Workspace
                          ClonedMesh.Anchored = true
                          tool:Destroy()
                          eyes.Repent.Playing = false
                          eyes.Scream:Play()
                          eyes.PointLight.Enabled = false
                          eyes.PointLight.Enabled = false
                          local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
    local camara = game.Workspace.CurrentCamera
    local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
    camara.CFrame = camara.CFrame * shakeCf
    end)
    camShake:Start()

    camShake:ShakeOnce(6, 10, 0.1, 4.5)
                          loadstring(game:HttpGet(("https://raw.githubusercontent.com/lolthatseazy/KillEyes/main/Source.lua"),true))()
                          wait(0.3)
                          game.Workspace:FindFirstChild("Lookman"):Destroy()
                   end
                   end
                  end
    end)
        end)
    tool.Unequipped:Connect(function()
        game.Players.LocalPlayer:SetAttribute("Hidden", false)
            RightArm.Name = "RightUpperArm"
            LeftArm.Name = "LeftUpperArm"

            RightArm.RightShoulder.C1 = RightC1
            LeftArm.LeftShoulder.C1 = LeftC1
    end)

    local Unlock = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
    local Achievements = debug.getupvalue(Unlock, 1)

    local custom = {
        Title = "打开十字架",
        Desc = "你怎么..",  --first line
        Reason = "以某种方式..你拿到了十字架..", --change this for second line of the badgs desc
        BadgeId = 2127965910, --change badge id for image
        Category = 0,
    }

    local old = {}
    for i, v in next, Achievements.Join do
        old[i] = v
    end

    for i, v in next, custom do
        Achievements.Join[i] = v
    end

    Unlock(nil, "Join")

    for i, v in next, old do
        Achievements.Join[i] = v
    end
    end
    end
    FullVersion()
    end
})

itemsTab:AddButton({
    Name = "把枪给勒尔",
    Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/DOORSFpsGun.lua?token=GHSAT0AAAAAAB2POHILOXMAHBQ2GN2QD2MQY3SXTCQ"))()
    end
})

itemsTab:AddButton({
    Name = "给M4A1 Lel",
    Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EntitySpawnr/main/M4A1.lua"))()
    end
})

local VisualsTab = Window:MakeTab({
    Name = "娱乐",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})

VisualsTab:AddButton({
    Name = "获得所有成就",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        for i,v in pairs(require(game.ReplicatedStorage.Achievements)) do
            spawn(function()
                require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.AchievementUnlock)(nil, i)
            end)
        end
    end
})

local CF = CFrame.new
local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom
local ChaseStart = game:GetService("ReplicatedStorage").GameData.ChaseStart

local KeyChams = {}
VisualsTab:AddToggle({
        Name = "获得密钥",
        Default = false,
    Flag = "KeyToggle",
    Save = true,
        Callback = function(Value)
                for i,v in pairs(KeyChams) do
            v.Enabled = Value
        end
        end    
})

local function ApplyKeyChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(0.980392, 0.670588, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Adornee = inst
    Cham.Enabled = OrionLib.Flags["KeyToggle"].Value
    Cham.RobloxLocked = true
    return Cham
end

local KeyCoroutine = coroutine.create(function()
    workspace.CurrentRooms.DescendantAdded:Connect(function(inst)
        if inst.Name == "KeyObtain" then
            table.insert(KeyChams,ApplyKeyChams(inst))
        end
    end)
end)
for i,v in ipairs(workspace:GetDescendants()) do
    if v.Name == "KeyObtain" then
        table.insert(KeyChams,ApplyKeyChams(v))
    end
end
coroutine.resume(KeyCoroutine)

local BookChams = {}
VisualsTab:AddToggle({
        Name = "获得书",
        Default = false,
    Flag = "BookToggle",
    Save = true,
        Callback = function(Value)
                for i,v in pairs(BookChams) do
            v.Enabled = Value
        end
        end    
})

local FigureChams = {}
VisualsTab:AddToggle({
        Name = "获得数字",
        Default = false,
    Flag = "FigureToggle",
    Save = true,
    Callback = function(Value)
        for i,v in pairs(FigureChams) do
            v.Enabled = Value
        end
    end
})

local function ApplyBookChams(inst)
    if inst:IsDescendantOf(game:GetService("Workspace").CurrentRooms:FindFirstChild("50")) and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value == 50 then
        wait()
        local Cham = Instance.new("Highlight")
        Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        Cham.FillColor = Color3.new(0, 1, 0.749019)
        Cham.FillTransparency = 0.5
        Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
        Cham.Parent = game:GetService("CoreGui")
        Cham.Enabled = OrionLib.Flags["BookToggle"].Value
        Cham.Adornee = inst
        Cham.RobloxLocked = true
        return Cham
    end
end

local function ApplyEntityChams(inst)
    wait()
    local Cham = Instance.new("Highlight")
    Cham.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    Cham.FillColor = Color3.new(1, 0, 0)
    Cham.FillTransparency = 0.5
    Cham.OutlineColor = Color3.new(0.792156, 0.792156, 0.792156)
    Cham.Parent = game:GetService("CoreGui")
    Cham.Enabled = OrionLib.Flags["FigureToggle"].Value
    Cham.Adornee = inst
    Cham.RobloxLocked = true
    return Cham
end

local BookCoroutine = coroutine.create(function()
    task.wait(1)
    for i,v in pairs(game:GetService("Workspace").CurrentRooms["50"].Assets:GetDescendants()) do
        if v.Name == "LiveHintBook" then
            table.insert(BookChams,ApplyBookChams(v))
        end
    end
end)
local EntityCoroutine = coroutine.create(function()
    local Entity = game:GetService("Workspace").CurrentRooms["50"].FigureSetup:WaitForChild("FigureRagdoll",5)
    Entity:WaitForChild("Torso",2.5)
    table.insert(FigureChams,ApplyEntityChams(Entity))
end)

local GameTab = Window:MakeTab({
    Name = "游戏",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})

GameTab:AddToggle({
        Name = "即时互动",
        Default = false,
    Flag = "InstantToggle",
    Save = true
})
GameTab:AddButton({
        Name = "跳过门",
        Callback = function()
        pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
        end)
          end    
})

GameTab:AddToggle({
        Name = "自动跳门",
        Default = false,
    Save = false,
    Flag = "AutoSkip"
})

local AutoSkipCoro = coroutine.create(function()
        while true do
            task.wait()
            pcall(function()
            if OrionLib.Flags["AutoSkip"].Value == true and game:GetService("ReplicatedStorage").GameData.LatestRoom.Value < 100 then
                local HasKey = false
                local LatestRoom = game:GetService("ReplicatedStorage").GameData.LatestRoom.Value
                local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom)]:WaitForChild("Door")
                for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                    if v.Name == "KeyObtain" then
                        HasKey = v
                    end
                end
                if HasKey then
                    game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                    task.wait(0.3)
                    fireproximityprompt(HasKey.ModulePrompt,0)
                    game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                    task.wait(0.3)
                    fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
                end
                if LatestRoom == 50 then
                    CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
                end
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                task.wait(0.3)
                CurrentDoor.ClientOpen:FireServer()
            end
        end)
        end
end)
coroutine.resume(AutoSkipCoro)

GameTab:AddButton({
        Name = "没有惊吓",
        Callback = function()
        pcall(function()
            game:GetService("ReplicatedStorage").Bricks.Jumpscare:Destroy()
        end)
          end    
})
GameTab:AddToggle({
        Name = "避免 Rush/Ambush",
        Default = false,
    Flag = "AvoidRushToggle",
    Save = true
})
GameTab:AddToggle({
        Name = "没有尖叫",
        Default = false,
    Flag = "ScreechToggle",
    Save = true
})

GameTab:AddToggle({
        Name = "总是赢得心跳",
        Default = false,
    Flag = "HeartbeatWin",
    Save = true
})

GameTab:AddToggle({
        Name = "预测追逐",
        Default = false,
    Flag = "PredictToggle" ,
    Save = true
})
GameTab:AddToggle({
        Name = "当怪物出现时通知",
        Default = false,
    Flag = "MobToggle" ,
    Save = true
})
GameTab:AddButton({
        Name = "完整的断路器盒小游戏",
        Callback = function()
        game:GetService("ReplicatedStorage").Bricks.EBF:FireServer()
          end    
})
GameTab:AddButton({
        Name = "跳过门50",
        Callback = function()
        local CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
        game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
          end    
})




game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/50)
        end
    end)
end)

game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(descendant)
    if OrionLib.Flags["NoSeek"].Value == true and descendant.Name == ("Seek_Arm" or "ChandelierObstruction") then
        task.spawn(function()
            wait()
            descendant:Destroy()
        end)
    end
end)

game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
    if OrionLib.Flags["InstantToggle"].Value == true then
        fireproximityprompt(prompt)
    end
end)

local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()

    if tostring(self) == 'Screech' and method == "FireServer" and OrionLib.Flags["ScreechToggle"].Value == true then
        args[1] = true
        return old(self,unpack(args))
    end
    if tostring(self) == 'ClutchHeartbeat' and method == "FireServer" and OrionLib.Flags["HeartbeatWin"].Value == true then
        args[2] = true
        return old(self,unpack(args)).infiniteyield
    end

    return old(self,...)
end))

workspace.CurrentCamera.ChildAdded:Connect(function(child)
    if child.Name == "Screech" and OrionLib.Flags["ScreechToggle"].Value == true then
        child:Destroy()
    end
end)

local NotificationCoroutine = coroutine.create(function()
    LatestRoom.Changed:Connect(function()
        if OrionLib.Flags["PredictToggle"].Value == true then
            local n = ChaseStart.Value - LatestRoom.Value
            if 0 < n and n < 4 then
                OrionLib:MakeNotification({
                    Name = "警告！",
                    Content = "事件发生在" .. tostring(n) .. "房间。",
                    Time = 5
                })
            end
        end
        if OrionLib.Flags["BookToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(BookCoroutine)
            end
        end
        if OrionLib.Flags["FigureToggle"].Value == true then
            if LatestRoom.Value == 50 then
                coroutine.resume(EntityCoroutine)
            end
        end
    end)
    workspace.ChildAdded:Connect(function(inst)
        if inst.Name == "RushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "警告！",
                    Content = "避免Rush。请稍等。",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)

                inst.Destroying:Wait()
                con:Disconnect()

                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "警告!",
                    Content = "Rush已经繁殖了，藏起来！",
                    Time = 5
                })
            end
        elseif inst.Name == "AmbushMoving" and OrionLib.Flags["MobToggle"].Value == true then
            if OrionLib.Flags["AvoidRushToggle"].Value == true then
                OrionLib:MakeNotification({
                    Name = "警告!",
                    Content = "躲避Ambush。请稍等。",
                    Time = 5
                })
                local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                local con = game:GetService("RunService").Heartbeat:Connect(function()
                    game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
                end)

                inst.Destroying:Wait()
                con:Disconnect()

                game.Players.LocalPlayer.Character:MoveTo(OldPos)
            else
                OrionLib:MakeNotification({
                    Name = "警告！",
                    Content = "Ambush已经繁殖了，藏起来！",
                    Time = 5
                })
            end
        end
    end)
end)


local ExtraTab = Window:MakeTab({
    Name = "特别的",
    Icon = "rbxassetid://17053443669",
    PremiumOnly = false
})

ExtraTab:AddParagraph("警告！","这些剧本不是我的！")

ExtraTab:AddButton({
    Name = "打破灯",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "breakLights", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 0.416, 60) 
    end
})


ExtraTab:AddButton({
    Name = "闪烁的灯光",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1) 
    end
})


ExtraTab:AddButton({
    Name = "Seek的眼睛",
    Callback = function ()
        local Data = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
        require(game:GetService("ReplicatedStorage").ClientModules.EntityModules.Seek).tease(nil, workspace.CurrentRooms:WaitForChild(game.ReplicatedStorage.GameData.LatestRoom.Value), 14, 1665596753, true)
    end
})


ExtraTab:AddButton({
    Name = "红色房间",
    Callback = function ()
        local v1 = require(game.ReplicatedStorage.ClientModules.Module_Events)
        local room = workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")]
        local seconds = 1000000
        v1.tryp(workspace.CurrentRooms[game.Players.LocalPlayer:GetAttribute("CurrentRoom")], seconds)
    end
})

ExtraTab:AddButton({
    Name = "心跳小游戏",
    Callback = function ()
        firesignal(game.ReplicatedStorage.Bricks.ClutchHeartbeat.OnClientEvent) 
    end
})


ExtraTab:AddButton({
    Name = "无限产量",
    Callback = function ()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')))()

    end
})

ExtraTab:AddDropdown({
    Name = "下一个房间操作",
    Options = {"Hallway Jack","Shadow","Eyes"},
    CurretOption = "Input",
    Flag = "Dropdown1",
    Callback = function(Option)
        if Option == "Hallway Jack" then
                 game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
 local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local shadow=game:GetObjects("rbxassetid://11499539790")[1]
firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
shadow:PivotTo(currentLoadedRoom.RoomStart.CFrame)
wait(0.2)
shadow.Parent=workspace
shadow.Sound:Play()
task.wait(0.3)
shadow:Destroy()
firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "tryp", workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value], 10)
            elseif Option == "Shadow" then
                            game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
wait(0.2)
local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local shadow=game:GetObjects("rbxassetid://11454656473")[1]
local num=math.floor(#currentLoadedRoom.Nodes:GetChildren()/2)
shadow.CFrame=(
 num==0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]
).CFrame+Vector3.new(0,4,0)
firesignal(game.ReplicatedStorage.Bricks.UseEventModule.OnClientEvent, "flickerLights", game.ReplicatedStorage.GameData.LatestRoom.Value, 1)
wait(0.2)
shadow.Parent=workspace
shadow.Initiate:Play()
task.wait(0.3)
shadow:Destroy()
elseif Option == "Eyes" then
 game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
  local enableDamage = true
repenttimes = 0
local deadeyescrucifix = false
local repentcomplete = false
local currentLoadedRoom = workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes = game:GetObjects("rbxassetid://11488518082")[1]
local num = math.floor(#currentLoadedRoom.Nodes:GetChildren() / 2)
eyes.CFrame = (num == 0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]).CFrame + Vector3.new(0, 7, 0)

eyes.Parent = workspace
eyes.Initiate:Play()
task.wait(0.5)
eyes.Attachment.Eyes.Enabled = true
eyes.whisper:Play()
eyes.whisper.Looped = true
function EyesHell()
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(10,30,0.7,0.1)
ts = game:GetService("TweenService")
wait(0.2)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()
camShake:ShakeOnce(2,30,5,2)
wait(3)

eyes.Scream:Play()
ts:Create(eyes,TweenInfo.new(5),{CFrame = eyes.CFrame - Vector3.new(0,12,0)}):Play()
wait(7)
eyes:Destroy()
end
local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

local function IsVisible(part)
 local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
 local onscreen = found and vec.Z > 0
 local cfg = RaycastParams.new();
 cfg.FilterType = Enum.RaycastFilterType.Blacklist
 cfg.FilterDescendantsInstances = {part};

 local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg);
 return (onscreen and true) and ((cast and cast.Instance).Parent==game.Players.LocalPlayer.Character and true)
end

while true do
 if workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value] ~= currentLoadedRoom then
     enableDamage = false
     task.wait(0.2)
     eyes:Destroy()
 end
 if enableDamage then
     if (IsVisible(eyes)) and not game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and deadeyescrucifix == false then
     game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
     wait(0.2)
     elseif (IsVisible(eyes)) and game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes < 5 and deadeyescrucifix == false then
     print("GET THAT AWAY FROM ME")
     eyes.Repent:Play()
     eyes.Attachment.Angry.Enabled = true
     local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local CameraShaker = require(game.ReplicatedStorage.CameraShaker)
local camara = game.Workspace.CurrentCamera
local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
camara.CFrame = camara.CFrame * shakeCf
end)
camShake:Start()

camShake:ShakeOnce(5,50,0.7,0.2)
     wait(0.7)
     repenttimes = repenttimes + 1
     print(repenttimes)
     eyes.Attachment.Angry.Enabled = false
     wait(0.4)
     elseif game.Players.LocalPlayer.Character:FindFirstChild("Crucifix") and repenttimes == 5 and deadeyescrucifix == false then
     local hi = game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle:Clone()
     hi.Anchored = true
     hi.Parent = workspace
     hi:PivotTo(game.Players.LocalPlayer.Character:FindFirstChild("Crucifix").Handle.CFrame)
     game.Players.LocalPlayer.Character:FindFirstChild("Crucifix"):Destroy()
     EyesHell()
     enableDamage = false
         if hum.Health <= 0 then
             game:GetService("ReplicatedStorage").GameStats["Player_" .. game.Players.LocalPlayer.Name].Total.DeathCause.Value =
                 "Eyes"
             debug.setupvalue(
                 getconnections(game:GetService("ReplicatedStorage").Bricks.DeathHint.OnClientEvent)[1].Function,
                 1,
                 {
                     "你死了Eyes...",
                     "他们不喜欢被人盯着看。",
                 }
             )
         end
     end
 end
 task.wait(0.2)
end
end
end
})

ExtraTab:AddButton({
    Name = "Doors 速度运行模式",
    Callback = function ()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/DoorsModes/DoorSpeedRun%20Mode'))()
    end
})

local player = Window:MakeTab({
	Name = "福瑞模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
      	loadstring(game:HttpGet("https://shz.al/HFbx"))();
  	end
})

local player = Window:MakeTab({
	Name = "感恩节",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v3",
	Callback = function()
      	if thanksgivingEnabled then
            return Rayfield:Notify({
                Title = "Error",
                Content = "You have already ran this",
                Duration = 6.5,
                Image = 4483362458,
                Actions = {},
            })
        end
        thanksgivingEnabled=true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/DOORSthanksgiving"))()
  	end
})


local player = Window:MakeTab({
	Name = "极端",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "V1",
	Callback = function()
      	loadstring(game:HttpGet('https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true'))()
  	end
})

local player = Window:MakeTab({
	Name = "死寂模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "114514xhxh制作（噩梦模板）（deta）",
	Callback = function()
  local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "死寂模式已开启",
    Desc = "这里只有。。我吗？",
    Reason = "死寂。。。",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
})

local Functions = loadstring(game:HttpGet('https://shz.al/GxDRsitZQRKphMFxhmA4wTjR'))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://3499523244")

CustomShop.CreateItem(exampleTool, {
    Title = "死寂模式",
    Desc = "没有痛苦的地方。。。",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
    Price = 1000,
    Stack = 1,
})
  	end
})

player:AddButton({ 
	Name = "译官不会骂人（商场用）",
	Callback = function()
      	
  local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "译官不会骂人",
    Desc = "不要拿着免费的我硬导ĕ！",
    Reason = "（模式创造者之一）",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
})

local Functions = loadstring(game:HttpGet('https://pastebin.com/raw/bucRxAMi'))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://3499523244")

CustomShop.CreateItem(exampleTool, {
    Title = "译官不会骂人",
    Desc = "冲，冲力",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
    Price = 99999,
    Stack = 1,
})
  	end
})

player:AddButton({ 
	Name = "sunlight",
	Callback = function()
      	
  local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "希望",
    Desc = "我会…与你同行。",
    Reason = "（激活sunlight）",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
})

local Functions = loadstring(game:HttpGet('https://shz.al/CdfrZZamcdmPjptjyJzJwTEB'))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://3499523244")

CustomShop.CreateItem(exampleTool, {
    Title = "sunlight",
    Desc = "与你同在",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
    Price = 99999,
    Stack = 1,
})
  	end
})

player:AddButton({ 
	Name = "十字架",
	Callback = function()
      	
local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "圣十字！",
    Desc = "讨伐死寂时间到！",
    Reason = "（获得十字架）",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
})

local Functions = loadstring(game:HttpGet('https://raw.githubusercontent.com/Johnny39871/assets/main/crucifixo'))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://3499523244")

CustomShop.CreateItem(exampleTool, {
    Title = "死亡十字架（beta）",
    Desc = "最后的光芒。。。",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
    Price = 1000,
    Stack = 1,
})
  	end
})

player:AddButton({ 
	Name = "蜡烛",
	Callback = function()
      	
  local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

Achievements.Get({
    Title = "不会灭的蜡烛",
    Desc = "灵魂潮汐之中。。。",
    Reason = "（获得蜡烛）",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
})

local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Items/Candle.lua"))()
local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()

local exampleTool = LoadCustomInstance("rbxassetid://3499523244")

CustomShop.CreateItem(exampleTool, {
    Title = "灵魂烛",
    Desc = "死寂。。。",
    Image = "https://media.discordapp.net/attachments/1208026550826696755/1211487551429419058/Scanner_Icon.png?ex=65ee60b4&is=65dbebb4&hm=2578d23a194e667400b2bb1378cfba9a9c7d91c2e4e49daca9cfd6fb63375f19&=&width=810&height=810",
    Price = 10000000,
    Stack = 1,
})
  	end
})

local player = Window:MakeTab({
	Name = "硬核模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1.0.6",
	Callback = function()
      	loadstring(game:HttpGet('https://shz.al/jmQGJjQkZk5PCRCZMsYKt4GH'))()
  	end
})

player:AddButton({ 
	Name = "v3",
	Callback = function()
      	
loadstring(game:HttpGet('https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true'))()
  	end
})

player:AddButton({ 
	Name = "v4",
	Callback = function()
      	
loadstring(game:HttpGet('https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true'))()
  	end
})

player:AddButton({ 
	Name = "v5",
	Callback = function()
      	
loadstring(game:HttpGet('https://shz.al/GnpnANwXpD3b27ArfpEdbS7k'))()
  	end
})

player:AddButton({ 
	Name = "v6",
	Callback = function()
      	
loadstring(game:HttpGet("https://glot.io/snippets/gp5pu59o7f/raw"))()
  	end
})

player:AddButton({ 
	Name = "坏",
	Callback = function()
      	
loadstring(game:HttpGet('https://shz.al/XSnRPwpibnYTd8QxiAbHwBnj'))()
  	end
})

player:AddButton({ 
	Name = "FOX版",
	Callback = function()
      	
loadstring(game:HttpGet('https://shz.al/PTFbx7M76xxAJQpDywQEpzfF'))()
  	end
})

player:AddButton({ 
	Name = "重置版",
	Callback = function()
      	
loadstring(game:HttpGet('https://shz.al/aP8MCrRdWtyGCTRHrRD65zfw'))()
  	end
})

player:AddButton({ 
	Name = "noah版",
	Callback = function()
      	
loadstring(game:HttpGet("https://raw.githubusercontent.com/Check6969/Utilities/main/Mod/Hardcore_modified.lua"))()
  	end
})

player:AddButton({ 
	Name = "加强版",
	Callback = function()
      	
loadstring(game:HttpGet("https://raw.githubusercontent.com/Brololto/love-my-balls-and-dick/main/d%20%282%29.txt"))()
  	end
})

player:AddButton({ 
	Name = "生成硬核怪",
	Callback = function()
      	
loadstring(game:HttpGet("https://raw.githubusercontent.com/ha2ke3oer/Ripper-luyer/main/README.md"))()
  	end
})

local player = Window:MakeTab({
	Name = "地狱模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v2",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript'))()
  	end
})

local player = Window:MakeTab({
	Name = "不可能",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1.8a",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))()
  	end
})

player:AddButton({ 
	Name = "new",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/munciseek/Scriptmode/main/Impossible"))()
  	end
})

player:AddButton({ 
	Name = "十字架（不可能模式专属）",
	Callback = function()
      	loadstring(game:HttpGet('https://shz.al/hyF4nMWmFPRA64664nPCiiKG'))()
  	end
})

player:AddButton({ 
	Name = "不可能(阿尔宙斯专用)",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))()
  	end
})

local player = Window:MakeTab({
	Name = "恐惧",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/cool59572/freestuff/main/Fear_mode_multiplayer.lua"))()
  	end
})

player:AddButton({ 
	Name = "多人",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/cool59572/freestuff/main/Mods/FearMode.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "困难",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/cool59572/freestuff/main/Fear_mode_multiplayer.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "愤怒",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v5",
	Callback = function()
      	loadstring(game:HttpGet("https://shz.al/RxhG"))()
  	end
})

local player = Window:MakeTab({
	Name = "哈默",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v4",
	Callback = function()
      	loadstring(game:HttpGet("https://shz.al/wtscxsTkyQZTbZppMEyRKS7z"))()
  	end
})

local player = Window:MakeTab({
	Name = "疯狂",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v4",
	Callback = function()
      	loadstring(game:HttpGet(("https://raw.githubusercontent.com/thefigureblack/doors/main/insanemodev5.lua"),true))()
  	end
})

local player = Window:MakeTab({
	Name = "无尽",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v2",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/Script.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "困难",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v2",
	Callback = function()
      	loadstring(game:HttpGet("https://shz.al/s6AkfQzf2aRsRmsc2FpfHCZP"))()
  	end
})

local player = Window:MakeTab({
	Name = "极端",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v2",
	Callback = function()
      	loadstring(game:HttpGet("https://shz.al/Fm5Enw2RFHYc8nkHEdDi6pRE"))()
  	end
})

local player = Window:MakeTab({
	Name = "极限",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
      	loadstring(game:HttpGet("https://shz.al/4nYF2GcQNQwiM6YGBM74YR5J"))()
  	end
})

local player = Window:MakeTab({
	Name = "碎片",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
      	loadstring(game:HttpGet("https://glot.io/snippets/gpw1ypnl5o/raw/main.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "🎂",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/BirthdayModeDOORS/main/BirthdayModeScript'))()
  	end
})

local player = Window:MakeTab({
	Name = "巨魔",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
      	loadstring(game:HttpGet("https://glot.io/snippets/gotfeffesc/raw/main.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "禁止✋",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/Check6969/Utilities/main/Mod/forbidden_mode.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "噩梦",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
      	loadstring(game:HttpGet("https://shz.al/6w4AmXWAfPYNWEYHDd8tThs5"))()
  	end
})

local player = Window:MakeTab({
	Name = "奔跑（辅助",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "使用",
	Callback = function()
      	loadstring(game:HttpGet("https://shz.al/Kt8GMCG6ktTDrXF2rrZTmWGF"))()
  	end
})

local player = Window:MakeTab({
	Name = "朦胧模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "使用",
	Callback = function()
      	loadstring(game:HttpGet("https://shz.al/cWCFnz8RwBZAmzmjiXtpc4bd"))()
  	end
})

local player = Window:MakeTab({
	Name = "floor two(伪",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "使用",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod"))()
  	end
})

local player = Window:MakeTab({
	Name = "压力模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v4",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "混沌模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v4",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/HollowedOutMods/MayhemMode/main/loader.lua'))()
  	end
})

local player = Window:MakeTab({
	Name = "超简单模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v4",
	Callback = function()
      	loadstring(game:HttpGet('https://shz.al/CdfrZZamcdmPjptjyJzJwTEB'))()
  	end
})

local player = Window:MakeTab({
	Name = "MC小屋",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "使用",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/y2WmccLk"))()
  	end
})

local player = Window:MakeTab({
	Name = "2层材质包",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "使用",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/iCherryKardes/Doors/main/Floor%202%20Mod"))()
  	end
})

local player = Window:MakeTab({
	Name = "变怪",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "使用",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
  	end
})

player:AddButton({ 
	Name = "v2",
	Callback = function()
      	loadstring(game:HttpGet('https://shz.al/PMjr537Hk62tkZJSrDPhA65z'))()
  	end
})

local player = Window:MakeTab({
	Name = "FBL模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "使用",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/mW42PRKERYQHKbChQAbyWRnf"))();
  	end
})

local player = Window:MakeTab({
	Name = "支离破碎模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v6",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/mW42PRKERYQHKbChQAbyWRnf"))();
  	end
})

local player = Window:MakeTab({
	Name = "跳舞模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/mW42PRKERYQHKbChQAbyWRnf"))();
  	end
})

local player = Window:MakeTab({
	Name = "endless模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/Script.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "super极限模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/TJhRXikzPbiKey3FWFzzcw8i"))()
  	end
})

local player = Window:MakeTab({
	Name = "静止模式",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "v1",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Check6969/Utilities/main/Mod/forbidden_mode.lua"))()
  	end
})

local player = Window:MakeTab({
	Name = "外网脚本挂",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "MSDOORS≈2024",
	Callback = function()
  loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()
  	end
})

player:AddButton({ 
	Name = "砸瓦鲁多",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/djAd7g2W'))()
  	end
})

player:AddButton({ 
	Name = "瓦莱斯",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
  	end
})

player:AddButton({ 
	Name = "激派浪",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Doors"))()
  	end
})

player:AddButton({ 
	Name = "最强",
	Callback = function()
  loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
  	end
})

player:AddButton({ 
	Name = "backdoors(15天)",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/GYCjEpetF4DG3bpSYdMKRebr"))()
  	end
})

local player = Window:MakeTab({
	Name = "（不兼容？）注入器",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "fl",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/wmyndGxRyd8SN4D3iXTAB3NR"))()
  	end
})

player:AddButton({ 
	Name = "忍者",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/y47yrfmjZNzRKkWnYPsBT7Zt"))()
  	end
})

player:AddButton({ 
	Name = "codex",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/hCpNTpZ78Tys43N3EzDnd6HE"))()
  	end
})

player:AddButton({ 
	Name = "阿尔宙斯",
	Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
  	end
})

local player = Window:MakeTab({
	Name = "plus",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "管理员",
	Callback = function()
  loadstring(game:HttpGet("https://shz.al/rBQnhwA3SAZAzYRSrnZhNPJP"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "其他脚本",
	Icon = "rbxassetid://17053443669",
	PremiumOnly = false
})

Tab:AddParagraph("剑客需要加入群组","")

Tab:AddButton({
	Name = "脚本中心",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
end
})    
Tab:AddButton({
	Name = "剑客V4",
	Callback = function()
jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://shz.al/~JianKeV4')))()
end
})
Tab:AddButton({
	Name = "导管中心(会覆盖)",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
end
})
Tab:AddButton({
	Name = "白脚本(需要白名单)",
	Callback = function()
_G["白脚本作者修狗"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))() 
end
})

Tab:AddButton({
	Name = "皇脚本",
	Callback = function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\80\100\84\55\99\65\82\84"))()
end
})

Tab:AddButton({
	Name = "地岩脚本(需要白名单)",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\98\97\109\120\98\98\97\109\120\98\98\97\109\120\47\99\111\100\101\115\112\97\99\101\115\45\98\108\97\110\107\47\109\97\105\110\47\37\69\55\37\57\57\37\66\68\34\41\41\40\41")()
end
})

Tab:AddButton({
	Name = "忍脚本",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,52,81,74,109,75,50,99,72})end)())))();
end
})

Tab:AddButton({
	Name = "鸭HUB",
	Callback = function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,81,89,49,113,112,99,115,106})end)())))()
end
})

Tab:AddButton({
	Name = "Fish Script",
	Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\71\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\120\105\97\111\120\105\97\111\121\117\50\50\51\51\47\120\105\97\111\120\105\97\111\121\117\47\109\97\105\110\47\120\105\97\111\120\105\97\111\121\117\34\41\41\40\41\10")()
end
})

Tab:AddButton({
	Name = "狼脚本",
	Callback = function()
loadstring(game:HttpGet(('https://shz.al/~wolfScriptFree')))()
end
})

local Tab = Window:MakeTab({
	  Name = "俄亥俄州",
	  Icon = "rbxassetid://7734068321",
   	  PremiumOnly = false
      })
      
      Tab:AddButton({
	Name = "俄亥俄州",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/hkvHeHed",true))()
end})
      
      local Tab = Window:MakeTab({
	  Name = "监狱人生",
	  Icon = "rbxassetid://7734068321",
   	  PremiumOnly = false
      })
      
      Tab:AddButton({
	Name = "循环杀戮",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/ngdnaZbf"))()
  	end
})
      
      
      local Section = Tab:AddSection({
	  Name = "传送位置"
      })

Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})

Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})

Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})

Tab:AddButton({
	Name = "监狱室外",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})

local Tab = Window:MakeTab({
	Name = "极速传奇",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
    })      

    
      Tab:AddButton({ 
	  Name = "速度传奇",
 	  Callback = function()
      loadstring(game:HttpGet('https://pastebin.com/raw/rqnKXF4h'))();
      end    
      })                      
          
local Section = Tab:AddSection({
	Name = "传送岛屿"
})

Tab:AddButton({
	Name = "返还出生岛",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)      
  	end    
})

Tab:AddButton({
	Name = "白雪城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)   
  	end    
})

Tab:AddButton({
	Name = "熔岩城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)       
  	end    
})

Tab:AddButton({
	Name = "传奇公路",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)    
  	end    
})  

local Tab = Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "忍者传奇",
	Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/bGSJHMg5'))();
  	end    
})

Tab:AddButton({
	Name = "忍者传奇(英文)",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
  	end    
})

local Section = Tab:AddSection({
	Name = "自制功能"
})

Tab:AddButton({
	Name = "自动摆动",
	Callback = function()
     while wait(.0001)do
if
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")then
game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")else
for bcc,ccc in
pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
if
ccc.ClassName=="Tool"and ccc:FindFirstChild("attackShurikenScript")then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(ccc)wait(.0001)if ccc.ClassName=="Tool"and
ccc:FindFirstChild("attackKatanaScript")then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(ccc)
end 
end 
end 
end 
end
  	end    
})

Tab:AddButton({
	Name = "自动出售",
	Callback = function()
     while wait(0.01)do
game.workspace.sellAreaCircles.sellAreaCircle.circleInner.CFrame=game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame;wait(.05)
game.workspace.sellAreaCircles.sellAreaCircle.circleInner.CFrame=game.Workspace.Part.CFrame
end
  	end    
})

local Section = Tab:AddSection({
	Name = "传送岛屿"
})

Tab:AddButton({
	Name = "传送到出生点",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到附魔岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到星界岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.2932891845703, 2013.88037109375, 237.36672973632812)
  	end    
})
 
Tab:AddButton({
	Name = "传送到神秘岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
  	end    
})
 
Tab:AddButton({
	Name = "传送到太空岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
  	end    
})
 
Tab:AddButton({
	Name = "传送到冻土岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
  	end    
})
 
Tab:AddButton({
	Name = "传送到永恒岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
  	end    
})
 
Tab:AddButton({
	Name = "传送到沙暴岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
  	end    
})
 
Tab:AddButton({
	Name = "传送到雷暴岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
  	end    
})
 
Tab:AddButton({
	Name = "传送到远古炼狱岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
  	end    
})
 
Tab:AddButton({
	Name = "传送到午夜暗影岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
  	end    
})
 
Tab:AddButton({
	Name = "传送到神秘灵魂岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
  	end    
})
 
Tab:AddButton({
	Name = "传送到冬季奇迹岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
  	end    
})
 
Tab:AddButton({
	Name = "传送到黄金大师岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
  	end    
})
 
Tab:AddButton({
	Name = "传送到龙传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
  	end    
})
 
Tab:AddButton({
	Name = "传送到赛博传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
  	end    
})
 
Tab:AddButton({
	Name = "传送到天岚超能岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
  	end    
})
 
Tab:AddButton({
	Name = "传送到混沌传奇岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
  	end    
})
 
Tab:AddButton({
	Name = "传送到灵魂融合岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
  	end    
})
 
Tab:AddButton({
	Name = "传送到黑暗元素岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
  	end    
})
 
Tab:AddButton({
	Name = "传送到内心和平岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
  	end    
})
 
Tab:AddButton({
	Name = "传送到炽烈漩涡岛",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
  	end    
})
 
Tab:AddButton({
	Name = "传送到35倍金币区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
  	end    
})
 
Tab:AddButton({
	Name = "传送到死亡宠物",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
  	end    
})
    
local Tab = Window:MakeTab({
	Name = "Blox fruits",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "功能请自己翻译"
})


Tab:AddButton({
	Name = "Blox fruit",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/bf"))()
  	end
})

Tab:AddButton({ 
	Name = "自动拿宝箱",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/SHAREHACK/bloxfruit/main/autochest'))()
  	end
})
Tab:AddButton({ 
	Name = "1",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/BLCK"))()
  	end
})
Tab:AddButton({ 
	Name = "2",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
  	end
})
    
    
    local Tab = Window:MakeTab({
	Name = "力量传奇",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
    })
    
local Section = Tab:AddSection({
	Name = "传送"
})
 
Tab:AddButton({
	Name = "传送到出生点",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7, 3, 108)
  	end    
})
 
Tab:AddButton({
	Name = "传送到冰霜健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2543, 13, -410)
  	end    
})
 
Tab:AddButton({
	Name = "传送到神话健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2177, 13, 1070)
  	end    
})
 
Tab:AddButton({
	Name = "传送到永恒健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6686, 13, -1284)
  	end    
})
 
Tab:AddButton({
	Name = "传送到传说健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4676, 997, -3915)
  	end    
})
 
Tab:AddButton({
	Name = "传送到肌肉之王健身房",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8554, 22, -5642)
  	end    
})
 
Tab:AddButton({
	Name = "传送到安全岛",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-39, 10, 1838)
  	end    
})
 
Tab:AddButton({
	Name = "传送到幸运抽奖区域",
	Callback = function()
      		      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2606, -2, 5753)
  	end    
})
    
    local Tab = Window:MakeTab({
	Name = "伐木大亨2",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
    })
    

       
           Tab:AddButton({
      Name = "bark2.0",
      Callback = function()
       loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,110,111,111,98,54,49,54,49,54,49,47,82,79,66,76,79,88,47,109,97,105,110,47,98,97,114,107,50,46,48,46,108,117,97})end)())))();     
      end
      })         

      
         Tab:AddButton({
      Name = "白脚本伐木大亨2[免费](已修复)",
      Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/%E4%BC%90%E6%9C%A8"))();
      end
      })   
    
      Tab:AddButton({
      Name = "伐木大亨2多功能",
      Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt'))()
      end
      })   

local Section = Tab:AddSection({
	Name = "传送地点"
})          
      
      Tab:AddButton({
      Name = "火木",
      Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1615.8934326171875, 622.9998779296875, 1086.1234130859375)
      end
      })
      
      Tab:AddButton({
      Name = "画室",
      Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5241.55810546875, -166.00003051757812, 709.5656127929688)
      end
      })      
      
      Tab:AddButton({
      Name = "幻影木",
      Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.28166198730469, -213.13137817382812, -1357.8018798828125)
      end
      })

      Tab:AddButton({
      Name = "木材反斗城",
      Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252.31906127929688, 2.9999992847442627, 56.9854850769043)
      end
      })                             
       
      Tab:AddButton({
      Name = "冰木",
      Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1522.8817138671875, 412.3657531738281, 3277.71826171875)                                                                      
      end
      })  
      
      Tab:AddButton({
      Name = "椰子木",
      Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2615.709228515625, -5.899986743927002, -21.30138397216797)                                                                      
      end
      })
      
        local Tab = Window:MakeTab({
	Name = "能力战争",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/EH30eKNS"))();
      end
})   
  
    local Tab = Window:MakeTab({
	Name = "rc",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
    }) 
    
    Tab:AddButton({ 
	  Name = "白脚本rc[免费](已修复)",
 	  Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/rc"))();
      end    
      })
      
      local Tab = Window:MakeTab({
	Name = "骨折模拟器4",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "强但是英文",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/DuhwahScripts/BrokenBonesIV/main/source", true))()
      end
})   

local Tab = Window:MakeTab({
	Name = "寻宝模拟器",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Destiny/main/loader.lua",true))()
      end
})   

local Tab = Window:MakeTab({
	Name = "汽车经销商",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "英文",
	Callback = function()
pcall(function()
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/03sAlt/BlueLockSeason2/main/README.md"))()
end)
      end
})   

Tab:AddButton({
	Name = "太酷了",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zAuR0JUT"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "cw",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "碰撞箱",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/GPdwAHqR"))()
      end
})   

      
      local Tab = Window:MakeTab({
	Name = "GRANNY",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/yYQMZUb6"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "起床战争",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "VAPE",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
	end     
})
	
	local Tab = Window:MakeTab({
	Name = "逃脱",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
	end     
})

local Tab = Window:MakeTab({
	Name = "进击的僵尸",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/DCrSPuAG"))()
	end     
})

local Tab = Window:MakeTab({
	Name = "Flashlight Tag",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/FlashLight%20Tag"))()
      end
})   
      
      local Tab = Window:MakeTab({
	Name = "超级大力士模拟器",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "传送到开始区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.86943817138672, 11.751949310302734, -198.07127380371094)
  	end    
})
Tab:AddButton({
	Name = "传送到健身区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.60747528076172, 11.751947402954102, -10.266206741333008)
  	end    
})
Tab:AddButton({
	Name = "传送到食物区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.86384582519531, 11.751947402954102, 228.9690399169922)
  	end    
})
Tab:AddButton({
	Name = "传送到街机区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.99887084960938, 11.751949310302734, 502.90997314453125)
  	end    
})
Tab:AddButton({
	Name = "传送到农场区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(85.6707763671875, 11.751947402954102, 788.5997314453125)
  	end    
})
Tab:AddButton({
	Name = "传送到城堡区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.87281036376953, 11.84177017211914, 1139.7509765625)
  	end    
})
Tab:AddButton({
	Name = "传送到蒸汽朋克区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.63227081298828, 11.841767311096191, 1692.7890625)
  	end    
})
Tab:AddButton({
	Name = "传送到迪斯科区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.69613647460938, 16.015085220336914, 2505.213134765625)
  	end    
})
Tab:AddButton({
	Name = "传送到太空区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88.42948150634766, 11.841769218444824, 3425.941650390625)
  	end    
})
Tab:AddButton({
	Name = "传送到糖果区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.55805969238281, 11.841663360595703, 4340.69921875)
  	end    
})
Tab:AddButton({
	Name = "传送到实验室区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.00920867919922, 11.841663360595703, 5226.60205078125)
  	end    
})
Tab:AddButton({
	Name = "传送到热带区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.26090240478516, 12.0902681350708, 6016.16552734375)
  	end    
})
Tab:AddButton({
	Name = "传送到恐龙区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(38.4753303527832, 25.801530838012695, 6937.779296875)
  	end    
})

Tab:AddButton({
	Name = "传送到复古区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.81867218017578, 12.89099407196045, 7901.74755859375)
  	end    
})

Tab:AddButton({
	Name = "传送到冬季区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(63.47243881225586, 11.841662406921387, 8983.810546875)
  	end    
})
Tab:AddButton({
	Name = "传送到深海区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(105.36250305175781, 26.44820213317871, 9970.0849609375)
  	end    
})
Tab:AddButton({
	Name = "传送到狂野西部区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.69414520263672, 15.108586311340332, 10938.654296875)
  	end    
})
Tab:AddButton({
	Name = "传送到豪华公寓区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.75145721435547, 11.313281059265137, 12130.349609375)
  	end    
})
Tab:AddButton({
	Name = "传送到宝剑战斗区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.25597381591797, 11.408829689025879, 12945.57421875)
  	end    
})
Tab:AddButton({
	Name = "传送到童话区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121.14932250976562, 11.313281059265137, 14034.50390625)
  	end    
})
Tab:AddButton({
	Name = "传送到桃花区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(108.2142333984375, 11.813281059265137, 15131.861328125)
  	end    
})
Tab:AddButton({
	Name = "传送到厨房区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.78338623046875, 21.76291847229004, 16204.9755859375)
  	end    
})
Tab:AddButton({
	Name = "传送到下水道区域",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(47.36086654663086, 12.25178050994873, 17656.04296875)
  	end    
})

local Tab = Window:MakeTab({
	Name = "最强战场",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KirbleSensei/stuff/main/The%20Strongest%20Battlegrounds%20GUI"))()
	end     
})

local Tab = Window:MakeTab({
	Name = "Flashlight Tag",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/FlashLight%20Tag"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "Skibid Toilet Attack",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/Skibid%20Toilet%20Attack.lua"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "Carry Me! [2 Player Obby] ",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://github.com/KhSaeed90/Roblox/raw/workspace/14373879477"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "坦克模拟器",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "小白提供",
	Callback = function()
loadstring(game:HttpGet("https://paste.ee/r/6a9N6", true))()
      end
})   

local Tab = Window:MakeTab({
	Name = "比特种族复仇",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0GrimaceRace"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "末日大亨",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/WinterDinder/Apocalypse-Tycoon/main/Main", true))()
      end
})   

local Tab = Window:MakeTab({
	Name = "公寓大亨",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Apartment"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "与朋友赛跑",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/Race%20A%20Friend.lua"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "Money Simulator Z ",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "建议配上键盘使用",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Awakenchan/Misc-Release/main/Money%20Simulator%20Z"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "动漫能量突击",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0AnimeEnergy'))()
      end
})   

local Tab = Window:MakeTab({
	Name = "Block Race",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0BlockRace"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "强壮肌肉模拟器2",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0StrongMuscle"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "团队合作益智2",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Teamwork"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "拳击朋友模拟器",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Boxing"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "战争机器",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/war/main/machines"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "索纳里亚世界",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Mangnex/Lycan-X-Hub/main/Creature%20of%20Sonaria%20Mobile"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "Motorcycle Race",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/Motorcycle%20Race.lua"))()
      end
})   

local Tab = Window:MakeTab({
	Name = "餐厅大亨2",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "中文",
	Callback = function()
	local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local w = library:CreateWindow("餐厅大亨2汉化版")
local b = w:CreateFolder("主页")
b:Button("玩家快速烹饪",function()
    local Cooking = game.Players.LocalPlayer.PlayerScripts.CookingNew
local CookProgress = require(Cooking.CookProgress)
local MultiClick = require(Cooking.InputDetectors.MultiClick)
local MouseMovement = require(Cooking.InputDetectors.MouseMovement)
local MouseSpin = require(Cooking.InputDetectors.MouseSpin)

local run = CookProgress.run
CookProgress.run = function(...)
  local ARGS = {...}
  ARGS[3] = 0
  return run(unpack(ARGS))
end

MultiClick.start = function(...)
  ({...})[3]()
end

MouseMovement.start = function(...)
  ({...})[3]()
end

MouseSpin.start = function(...)
  ({...})[3]()
end
end)
b:Button("一键收钱",function()
    warn("Requiring API")do
  loadstring(game:HttpGet("https://pastebin.com/raw/KMc6aBky"))();
end warn("API Loaded")

local child = object.child
local descendant = object.descendant
local check = object.check

local Tycoon = game.Players.LocalPlayer.Tycoon.Value
descendant.foreach(Tycoon.Items.OftenFiltered.Surface,"Bill",function(Bill)
  local Settings = {
          ["name"] = "CollectBill",
          ["model"] = Bill.Parent
  }
 
  game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
end)

local Connection,Code = descendant.on_add(Tycoon.Items.OftenFiltered.Surface,function(Bill)
  check.it(Bill.Name == "Bill",function()
      local Settings = {
              ["name"] = "CollectBill",
              ["model"] = Bill.Parent
      }
     
      game.ReplicatedStorage.Events.ClientTycoonInput:FireServer(Tycoon,Settings)
  end)
end)
end)
b:Button("npc自动烹饪",function()
    local chiefInstantCook = true
local npcReach = true

local Client = game.Players.LocalPlayer
local PS = Client.PlayerScripts
local Module = require(PS.ClientMain.Replications.Workers.WalkDummy)
local Worker = require(PS.CookingNew.WorkerComponents.WorkerDefault)
local M1 = require(PS.ClientMain.Replications.Customers.GetNPCFolder)



if npcReach then
   hookfunction(Module,function()
       return task.wait()
   end)
end

if chiefInstantCook then
   Worker.event = function(...)
      local args = {...}
      local npc = M1.GetNPCFolder(args[1]).ClientWorkers:FindFirstChild(args[2])
      local M2 = game.ReplicatedStorage.MiscModules.CookingSharedCharacter:FindFirstChild(args[4])
      if M2 then
          require(M2).finishInteract(npc,args[3],args[4])
      end
      return
   end
end
end)
  	end    
})

Tab:AddButton({
	Name = "2",
	Callback = function()
	loadstring(game:httpget("https://raw.githubusercontent.com/LabibKazi858/Scripts/main/Restaurant%20Tycoon%202", true))()
	end
})


local Tab = Window:MakeTab({
	Name = "收养我吧",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
      end
})   

local Tab = Window:MakeTab({
  Name = "the rake静新提供",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RealZzHub/MainV2/main/Main.lua"))()
      end
})   

Tab:AddButton({
  Name = "2",
  Callback = function ()
    loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/ZeeroxHub/main/Loader.lua')()
      end
})   

local Tab = Window:MakeTab({
	Name = "彩虹朋友",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
      end
})   

local Tab = Window:MakeTab({
	Name = "只因剑",
	Icon = "rbxassetid://7734068321",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "1",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0swordwarrior"))()
      end
})   

OrionLib:Init()
    else
        game.Players.LocalPlayer:Kick("需要卡密✋")
    end
end)

  wait(3) --等待三秒
  --你的脚本
    else --验证失败执行↓
setclipboard("作者云")
local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "验证失败",
    Text = "你并没有白名单，去Q群834451572获得白名单",
    Duration = 10, --时间
})
end