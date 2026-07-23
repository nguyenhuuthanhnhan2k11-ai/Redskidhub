local L_1_ = {}
L_1_[3] = table["concat"]
if not game:IsLoaded() then
	repeat
		game["Loaded"]:Wait()
	until game:IsLoaded()
end;
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
task.spawn(function()
    repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
    WindUI:Notify({
        Title = "TIRO SYSTEM",
        Content = "Đang tải data...",
        Duration = 5,
        Icon = "rbxassetid://131304214923355"
    })
    task.wait(5)
    WindUI:Notify({
        Title = "TIRO SYSTEM",
        Content = "Tải data thành công!",
        Duration = 4,
        Icon = "rbxassetid://131304214923355"
    })
end)
-- ==========================
getgenv().Config = {
    ["Auto Farming"] = true,
    ["Settings"] = {
        ["FPS Booster"] = false,
    } ,
    ["Melee"] = {
        ["All Melee V1"] = true,
        ["Super Huamn"] = true,
        ["Dragon Talon"] = true,
        ["Sharkman Karate"] = true,
        ["Elechic Claw"] = true,
        ["GodHuman"] = true,
    },
    ["Sword"] = {
        ["All Sword"] = true,
        ["Saber"] = true,
        ["Pole"] = true,
        ["Rengoku"] = true,
        ["Midnight Blade"] = true,
        ["Soul Cane"] = true,
        ["Gravity Cane"] = true,
        ["Dragon Trident"] = true,
        ["Legendary Sword"] = true,
        ["True Triple Katana"] = true,
        ["Twin Hooks"] = true,
        ["Canvander"] = true,
        ["Buddy Sword"] = true,
        ["Hallow Scythe"] = true,
        ["Yama"] = true,
        ["Tushita"] = true,
        ["Cursed Dual Katana"] = true,
    },
    ["Gun"] = {
        ["All Gun"] = true,
        ["Acidum Rifle"] = true,
        ["Kabucha"] = true,
        ["Serpent Bow"] = true,
        ["Soul Guitar"] = true,
    },
    ["Race"] = {
        ["Auto V2"] = true,
        ["Auto V3"] = true,
    },
}
if not getgenv()["Configs"] then
    if getgenv().Config then
        local newConfig = getgenv().Config
        getgenv()["Configs"] = {
            ["Quest"] = {
                ["Evo Race V1"] = newConfig.Race and newConfig.Race["Auto V2"] or false,
                ["Evo Race V2"] = newConfig.Race and newConfig.Race["Auto V3"] or false,
                ["RGB Haki"] = true,
                ["Pull Lerver"] = true
            },
            ["Sword"] = {},
            ["Gun"] = {},
            ["FPS Booster"] = newConfig.Settings and newConfig.Settings["FPS Booster"] or false
        }
        
        if newConfig.Sword then
            if newConfig.Sword["All Sword"] then
                getgenv()["Configs"]["Sword"] = {
                    "Saber", "Pole (1st Form)", "Rengoku", "Midnight Blade",
                    "Soul Cane", "Gravity Blade", "Yama", "Tushita", "Cursed Dual Katana"
                }
            else
                local swords = {}
                if newConfig.Sword["Saber"] then table.insert(swords, "Saber") end
                if newConfig.Sword["Pole"] then table.insert(swords, "Pole (1st Form)") end
                if newConfig.Sword["Rengoku"] then table.insert(swords, "Rengoku") end
                if newConfig.Sword["Midnight Blade"] then table.insert(swords, "Midnight Blade") end
                if newConfig.Sword["Soul Cane"] then table.insert(swords, "Soul Cane") end
                if newConfig.Sword["Yama"] then table.insert(swords, "Yama") end
                if newConfig.Sword["Tushita"] then table.insert(swords, "Tushita") end
                if newConfig.Sword["Cursed Dual Katana"] then table.insert(swords, "Cursed Dual Katana") end
                getgenv()["Configs"]["Sword"] = swords
            end
        end
        
        if newConfig.Gun then
            if newConfig.Gun["All Gun"] then
                getgenv()["Configs"]["Gun"] = {"Soul Guitar", "Kabucha", "Venom Bow"}
            else
                local guns = {}
                if newConfig.Gun["Soul Guitar"] then table.insert(guns, "Soul Guitar") end
                if newConfig.Gun["Kabucha"] then table.insert(guns, "Kabucha") end
                if newConfig.Gun["Serpent Bow"] then table.insert(guns, "Venom Bow") end
                getgenv()["Configs"]["Gun"] = guns
            end
        end
    else
        getgenv()["Configs"] = {
            ["Quest"] = {["Evo Race V1"] = true, ["Evo Race V2"] = true, ["RGB Haki"] = true, ["Pull Lerver"] = true},
            ["Sword"] = {},
            ["Gun"] = {},
            ["FPS Booster"] = false
        }
    end
end

if game["Players"]["LocalPlayer"]["PlayerGui"]:FindFirstChild("Main (minimal)") then
	if game["Players"]["LocalPlayer"]["PlayerGui"]["Main (minimal)"]:FindFirstChild("ChooseTeam") then
		repeat
			wait()
			if (game["Players"]["LocalPlayer"]["PlayerGui"]:FindFirstChild("Main (minimal)"))["ChooseTeam"]["Visible"] then
				(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("SetTeam", "Pirates")
			end
		until game["Players"]["LocalPlayer"]["Team"] ~= nil and game:IsLoaded()
	end
end
wait(5)
if game["Players"]["LocalPlayer"]["PlayerGui"]:FindFirstChild("Main (minimal)") then
	if game["Players"]["LocalPlayer"]["PlayerGui"]["Main (minimal)"]:FindFirstChild("ChooseTeam") then
		repeat
			wait()
			if (game["Players"]["LocalPlayer"]["PlayerGui"]:FindFirstChild("Main (minimal)"))["ChooseTeam"]["Visible"] then
				(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("SetTeam", "Pirates")
			end
		until game["Players"]["LocalPlayer"]["Team"] ~= nil and game:IsLoaded()
	end
end
L_1_[29] = game:GetService("Players")
L_1_[5] = L_1_[29]["LocalPlayer"]
L_1_[30] = game["PlaceId"]
L_1_[19] = game:GetService("Workspace")
L_1_[40] = L_1_[19]:WaitForChild("Enemies")
L_1_[10] = game:GetService("TeleportService")
L_1_[7] = game:GetService("ReplicatedStorage")
L_1_[24] = (L_1_[5]:WaitForChild("Data")):WaitForChild("Level")
L_1_[17] = (L_1_[5]:WaitForChild("Data")):WaitForChild("Fragments")
L_1_[1] = (L_1_[5]:WaitForChild("Data")):WaitForChild("Beli")
L_1_[48] = require(L_1_[7]["Modules"]["Net"])
L_1_[16] = game:GetService("Lighting")
L_1_[2] = game:service("VirtualInputManager")
L_1_[33] = game:service("VirtualUser")
L_1_[4] = game:GetService("CoreGui")
L_1_[45] = {}
task["spawn"](function()
	if (getgenv())["Configs"] and (getgenv())["Configs"]["FPS Booster"] then
		L_1_[7]["Effect"]:Destroy()
		for L_2_forvar0, L_3_forvar1 in pairs(getconnections(L_1_[5]["PlayerGui"]["Main"]["Settings"]["Buttons"]["FastModeButton"]["Activated"])) do
			local L_4_ = {}
			L_4_[2], L_4_[3] = L_2_forvar0, L_3_forvar1
			L_4_[3]["Function"]()
		end
	end
end)
wait(2)
task["spawn"](function()
	if (getgenv())["Configs"]["FPS Booster"] then
		local L_5_ = {}
		L_5_[3] = L_1_[19]:WaitForChild("Enemies")
		L_5_[2] = (L_1_[19]:WaitForChild("Map")):GetDescendants()
		for L_6_forvar0, L_7_forvar1 in ipairs(L_5_[2]) do
			local L_8_ = {}
			L_8_[2], L_8_[1] = L_6_forvar0, L_7_forvar1
			if L_8_[1]:IsA("BasePart") then
				local L_9_ = {}
				L_9_[2] = false
				for L_10_forvar0 = 1, 5, 1 do
					local L_11_ = {}
					L_11_[3] = L_10_forvar0
					L_11_[1] = L_1_[19]["Map"]["Jungle"]["QuestPlates"]:FindFirstChild("Plate" .. L_11_[3])
					if L_11_[1] and (L_8_[1]["Name"] == "Button" and L_8_[1]:IsDescendantOf(L_11_[1])) then
						L_9_[2] = true
						break
					end
				end
				if L_9_[2] then
					continue
				end
				if L_8_[1]["Name"] == "Door" and L_8_[1]:IsDescendantOf(L_1_[19]["Map"]["Ice"]) then
					continue
				end
				if L_8_[1]:IsDescendantOf(L_1_[19]["Map"]["Jungle"]:FindFirstChild("Final")) then
					continue
				end
				if L_1_[19]["Map"]:FindFirstChild("IceCastle") then
					if L_8_[1]:IsDescendantOf(L_1_[19]["Map"]:FindFirstChild("IceCastle")) then
						continue
					end
				end
				L_9_[1] = true
				for L_12_forvar0, L_13_forvar1 in ipairs(L_5_[3]:GetChildren()) do
					local L_14_ = {}
					L_14_[3], L_14_[1] = L_12_forvar0, L_13_forvar1
					L_14_[2] = L_14_[1]:FindFirstChild("HumanoidRootPart")
					if L_14_[2] and (L_14_[2]["Position"] - L_8_[1]["Position"])["Magnitude"] < 10 then
						L_9_[1] = false
						break
					end
				end
				if L_9_[1] then
					L_8_[1]:Destroy()
				end
			end
		end
		if L_1_[5]["PlayerGui"]:FindFirstChild("Notifications") then
			L_1_[5]["PlayerGui"]["Notifications"]["Enabled"] = false
		end
		shared = shared or {}
		if shared["BC_1"] == nil then
			shared["BC_1"] = true
		end
		if shared["BC_1"] and shared["BC_2"] == nil then
			local L_15_ = {}
			L_15_[6] = workspace
			L_15_[4] = L_1_[16]
			L_15_[3] = L_15_[6]["Terrain"]
			L_15_[2] = L_1_[29]
			L_15_[1] = L_1_[5]["Character"]
			L_15_[3]["WaterWaveSize"] = 0
			L_15_[3]["WaterWaveSpeed"] = 0
			L_15_[3]["WaterReflectance"] = 0
			L_15_[3]["WaterTransparency"] = 0
			L_15_[4]["GlobalShadows"] = false
			L_15_[4]["FogEnd"] = 9000000000
			L_15_[4]["Brightness"] = 0
			if settings and (settings())["Rendering"] then
				(settings())["Rendering"]["QualityLevel"] = "Level01";
				(settings())["Rendering"]["GraphicsMode"] = "NoGraphics"
			end
			for L_16_forvar0, L_17_forvar1 in pairs(L_15_[6]:GetDescendants()) do
				local L_18_ = {}
				L_18_[2], L_18_[3] = L_16_forvar0, L_17_forvar1
				if L_18_[3]:IsA("BasePart") or L_18_[3]:IsA("SpawnLocation") or L_18_[3]:IsA("WedgePart") or L_18_[3]:IsA("Terrain") or L_18_[3]:IsA("MeshPart") then
					L_18_[3]["Material"] = Enum["Material"]["Plastic"]
					L_18_[3]["Reflectance"] = 0
					L_18_[3]["CastShadow"] = false
				elseif L_18_[3]:IsA("Decal") or L_18_[3]:IsA("Texture") then
					L_18_[3]["Texture"] = ""
					L_18_[3]["Transparency"] = 1
				elseif L_18_[3]:IsA("ParticleEmitter") or L_18_[3]:IsA("Trail") then
					L_18_[3]["LightInfluence"] = 0
					L_18_[3]["Texture"] = ""
					L_18_[3]["Lifetime"] = NumberRange["new"](0)
				elseif L_18_[3]:IsA("Explosion") then
					L_18_[3]["BlastPressure"] = 0
					L_18_[3]["BlastRadius"] = 0
				elseif L_18_[3]:IsA("Fire") or L_18_[3]:IsA("SpotLight") or L_18_[3]:IsA("Smoke") or L_18_[3]:IsA("Sparkles") then
					L_18_[3]["Enabled"] = false
				elseif L_18_[3]:IsA("MeshPart") then
					L_18_[3]["Material"] = Enum["Material"]["Plastic"]
					L_18_[3]["Reflectance"] = 0
					L_18_[3]["TextureID"] = ""
					L_18_[3]["CastShadow"] = false
					L_18_[3]["RenderFidelity"] = Enum["RenderFidelity"]["Performance"]
				elseif L_18_[3]:IsA("SpecialMesh") then
					L_18_[3]["TextureId"] = ""
				elseif L_18_[3]:IsA("Shirt") or L_18_[3]:IsA("Pants") or L_18_[3]:IsA("Accessory") then
					L_18_[3]:Destroy()
				end
			end
			for L_19_forvar0, L_20_forvar1 in pairs(L_15_[4]:GetDescendants()) do
				local L_21_ = {}
				L_21_[1], L_21_[2] = L_19_forvar0, L_20_forvar1
				if L_21_[2]:IsA("BlurEffect") or L_21_[2]:IsA("SunRaysEffect") or L_21_[2]:IsA(L_1_[3]({
					"ColorCorrectionEffec",
					"t"
				})) or L_21_[2]:IsA("BloomEffect") or L_21_[2]:IsA("DepthOfFieldEffect") then
					L_21_[2]["Enabled"] = false
				end
			end
			if L_15_[1] then
				for L_22_forvar0, L_23_forvar1 in pairs(L_15_[1]:GetDescendants()) do
					local L_24_ = {}
					L_24_[3], L_24_[2] = L_22_forvar0, L_23_forvar1
					if L_24_[2]:IsA("Shirt") or L_24_[2]:IsA("Pants") or L_24_[2]:IsA("Accessory") then
						L_24_[2]:Destroy()
					end
				end
			end
			if L_1_[30] == 2753915549 or L_1_[30] == 4442272183 or L_1_[30] == 7449423635 then
				local L_25_ = {}
				L_25_[1] = L_1_[7]:FindFirstChild("Effect") and L_1_[7]["Effect"]:FindFirstChild("Container")
				if L_25_[1] then
					local L_26_ = {}
					L_26_[1] = L_25_[1]:FindFirstChild("Shared")
					L_26_[3] = L_25_[1]:FindFirstChild("Misc")
					if L_26_[1] then
						if L_26_[1]:FindFirstChild("AirDash") then
							L_26_[1]["AirDash"]:Destroy()
						end
						if L_26_[1]:FindFirstChild("LightningTP") then
							L_26_[1]["LightningTP"]:Destroy()
						end
					end
					if L_26_[3] then
						if L_26_[3]:FindFirstChild("Damage") then
							L_26_[3]["Damage"]:Destroy()
						end
						if L_26_[3]:FindFirstChild("Confetti") then
							L_26_[3]["Confetti"]:Destroy()
						end
					end
					if L_25_[1]:FindFirstChild("LevelUp") then
						L_25_[1]["LevelUp"]:Destroy()
					end
				end
			end
		end
		shared["BC_2"] = true
	end
end)
L_1_[43] = game:GetService("CoreGui")
L_1_[6] = game:GetService("TweenService")
L_1_[5] = game:GetService("Players")["LocalPlayer"]

-- ===== UI TIRO HUB =====
task.spawn(function()
    repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer

    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local LP = Players.LocalPlayer
    local CoreGui = L_1_[4]

    if not L_1_[26] then
        L_1_[26] = Instance.new("TextLabel")
        L_1_[26].Name = "StatusLabel_Backup"
        L_1_[26].Parent = CoreGui
        L_1_[26].Visible = false
        L_1_[26].Text = "Status: Ready"
    end

    if CoreGui:FindFirstChild("Screengui") then CoreGui.Screengui:Destroy() end
    if CoreGui:FindFirstChild("TiroHubUI") then CoreGui.TiroHubUI:Destroy() end

    local fps = 0
    local frameCount = 0
    local lastFpsUpdate = tick()
    RunService.Heartbeat:Connect(function()
        frameCount = frameCount + 1
        local now = tick()
        if now - lastFpsUpdate >= 1 then
            fps = frameCount
            frameCount = 0
            lastFpsUpdate = now
        end
    end)

    local function getPlayerData()
        local level, beli, frag, race = 0, 0, 0, "Unknown"
        local data = LP:FindFirstChild("Data")
        if data then
            local lv = data:FindFirstChild("Level")
            if lv then level = lv.Value end
            local b = data:FindFirstChild("Beli")
            if b then beli = b.Value end
            local f = data:FindFirstChild("Fragments")
            if f then frag = f.Value end
            local r = data:FindFirstChild("Race")
            if r then race = r.Value end
        end
        return {level = level, beli = beli, frag = frag, race = race}
    end

    local function hasItem(name)
        if LP.Backpack and LP.Backpack:FindFirstChild(name) then return true end
        if LP.Character and LP.Character:FindFirstChild(name) then return true end
        local ok, inv = pcall(function()
            return ReplicatedStorage.Remotes.CommF_:InvokeServer("getInventory")
        end)
        if ok and type(inv) == "table" then
            for _, v in pairs(inv) do
                if type(v) == "table" and v.Name == name then return true end
            end
        end
        return false
    end

    local function formatMoney(n)
        local s = tostring(math.floor(n or 0))
        local out = s:reverse():gsub("(%d%d%d)", "%1,"):reverse()
        return out:gsub("^,", "")
    end

    local function formatTime(seconds)
        seconds = math.floor(seconds or 0)
        local h = math.floor(seconds / 3600)
        local m = math.floor((seconds % 3600) / 60)
        local s = seconds % 60
        return string.format("%02d:%02d:%02d", h, m, s)
    end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "TiroHubUI"
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.Parent = CoreGui

    local colors = {
        bg = Color3.fromRGB(8, 8, 12),
        surface = Color3.fromRGB(18, 18, 25),
        surfaceLight = Color3.fromRGB(30, 30, 40),
        primary = Color3.fromRGB(0, 170, 255),
        text = Color3.fromRGB(240, 240, 245),
        textSec = Color3.fromRGB(170, 170, 190),
        textMuted = Color3.fromRGB(100, 100, 120),
        success = Color3.fromRGB(80, 220, 120),
        error = Color3.fromRGB(240, 80, 80),
        border = Color3.fromRGB(60, 60, 75),
        gold = Color3.fromRGB(255, 200, 80),
        red = Color3.fromRGB(255, 50, 50),
    }

    local ICON_ID = "rbxassetid://131304214923355"

    local mainFrame = Instance.new("Frame")
    mainFrame.BackgroundColor3 = colors.bg
    mainFrame.BackgroundTransparency = 0.05
    mainFrame.BorderSizePixel = 0
    mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    mainFrame.Size = UDim2.new(0, 340, 0, 220)
    mainFrame.ClipsDescendants = true
    mainFrame.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = mainFrame

    local stroke = Instance.new("UIStroke")
    stroke.Color = colors.border
    stroke.Thickness = 1
    stroke.Transparency = 0.5
    stroke.Parent = mainFrame

    local blur = Instance.new("BlurEffect", game:GetService("Lighting"))
    blur.Name = "TiroHubBlur"
    blur.Size = 24

    local titleBar = Instance.new("Frame")
    titleBar.BackgroundColor3 = colors.surface
    titleBar.BackgroundTransparency = 0.8
    titleBar.BorderSizePixel = 0
    titleBar.Size = UDim2.new(1, 0, 0, 28)
    titleBar.Parent = mainFrame
    local titleCorner = Instance.new("UICorner")
    titleCorner.CornerRadius = UDim.new(0, 10)
    titleCorner.Parent = titleBar

    local titleLabel = Instance.new("TextLabel")
    titleLabel.BackgroundTransparency = 1
    titleLabel.Position = UDim2.new(0, 10, 0, 0)
    titleLabel.Size = UDim2.new(0.5, 0, 1, 0)
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Text = "TIRO HUB"
    titleLabel.TextColor3 = colors.primary
    titleLabel.TextSize = 13
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = titleBar

    local fpsLabel = Instance.new("TextLabel")
    fpsLabel.BackgroundTransparency = 1
    fpsLabel.Position = UDim2.new(0.5, 0, 0, 0)
    fpsLabel.Size = UDim2.new(0.3, 0, 1, 0)
    fpsLabel.Font = Enum.Font.GothamBold
    fpsLabel.Text = "FPS: 0"
    fpsLabel.TextColor3 = Color3.fromRGB(120, 220, 120)
    fpsLabel.TextSize = 11
    fpsLabel.TextXAlignment = Enum.TextXAlignment.Right
    fpsLabel.Parent = titleBar

    local toggleBtn = Instance.new("ImageButton")
    toggleBtn.BackgroundTransparency = 1
    toggleBtn.Position = UDim2.new(1, -34, 0.5, -8)
    toggleBtn.Size = UDim2.new(0, 18, 0, 18)
    toggleBtn.Image = ICON_ID
    toggleBtn.Parent = titleBar

    local minBtn = Instance.new("TextButton")
    minBtn.BackgroundTransparency = 1
    minBtn.Position = UDim2.new(1, -56, 0.5, -8)
    minBtn.Size = UDim2.new(0, 20, 0, 16)
    minBtn.Font = Enum.Font.GothamBold
    minBtn.Text = "—"
    minBtn.TextColor3 = colors.textMuted
    minBtn.TextSize = 14
    minBtn.Parent = titleBar

    local body = Instance.new("Frame")
    body.BackgroundTransparency = 1
    body.Position = UDim2.new(0, 8, 0, 32)
    body.Size = UDim2.new(1, -16, 1, -42)
    body.Parent = mainFrame

    local leftPanel = Instance.new("Frame")
    leftPanel.BackgroundTransparency = 1
    leftPanel.Size = UDim2.new(0.4, -4, 1, 0)
    leftPanel.Parent = body

    local function createStatRow(label, defaultColor, yPos, isSmall)
        local row = Instance.new("Frame")
        row.BackgroundTransparency = 1
        row.Size = UDim2.new(1, 0, 0, isSmall and 16 or 20)
        row.Position = UDim2.new(0, 0, 0, yPos)
        row.Parent = leftPanel

        local lbl = Instance.new("TextLabel")
        lbl.BackgroundTransparency = 1
        lbl.Size = UDim2.new(0.45, 0, 1, 0)
        lbl.Font = Enum.Font.GothamSemibold
        lbl.Text = label .. ":"
        lbl.TextColor3 = colors.textSec
        lbl.TextSize = isSmall and 10 or 11
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.Parent = row

        local val = Instance.new("TextLabel")
        val.BackgroundTransparency = 1
        val.Position = UDim2.new(0.45, 0, 0, 0)
        val.Size = UDim2.new(0.55, 0, 1, 0)
        val.Font = Enum.Font.GothamBold
        val.Text = "..."
        val.TextColor3 = defaultColor or colors.text
        val.TextSize = isSmall and 12 or 14
        val.TextXAlignment = Enum.TextXAlignment.Right
        val.Parent = row
        val.Name = "Value"
        return val
    end

    local levelVal = createStatRow("Level", colors.primary, 0, false)
    local raceVal = createStatRow("Race", colors.textSec, 22, true)
    local beliVal = createStatRow("Beli", colors.gold, 40, false)
    local fragVal = createStatRow("Fragments", Color3.fromRGB(120, 220, 120), 60, true)

    local rightPanel = Instance.new("Frame")
    rightPanel.BackgroundTransparency = 1
    rightPanel.Position = UDim2.new(0.4, 4, 0, 0)
    rightPanel.Size = UDim2.new(0.6, -4, 1, 0)
    rightPanel.Parent = body

    local itemList = {
        {name = "CDK", key = "Cursed Dual Katana"},
        {name = "Valkyrie Helm", key = "Valkyrie Helm"},
        {name = "Skull Guitar", key = "Skull Guitar"},
        {name = "Mirror Fractal", key = "Mirror Fractal"},
        {name = "Pull Lever", key = "Pull Lever"},
    }

    local itemRows = {}
    for i, item in ipairs(itemList) do
        local yPos = (i-1) * 18
        local row = Instance.new("Frame")
        row.BackgroundTransparency = 1
        row.Size = UDim2.new(1, 0, 0, 16)
        row.Position = UDim2.new(0, 0, 0, yPos)
        row.Parent = rightPanel

        local dot = Instance.new("TextLabel")
        dot.BackgroundTransparency = 1
        dot.Size = UDim2.new(0, 18, 1, 0)
        dot.Font = Enum.Font.GothamBold
        dot.Text = "●"
        dot.TextColor3 = colors.error
        dot.TextSize = 12
        dot.TextXAlignment = Enum.TextXAlignment.Center
        dot.Parent = row
        dot.Name = "Dot"

        local lbl = Instance.new("TextLabel")
        lbl.BackgroundTransparency = 1
        lbl.Position = UDim2.new(0, 20, 0, 0)
        lbl.Size = UDim2.new(1, -20, 1, 0)
        lbl.Font = Enum.Font.Gotham
        lbl.Text = item.name
        lbl.TextColor3 = colors.textSec
        lbl.TextSize = 10
        lbl.TextXAlignment = Enum.TextXAlignment.Left
        lbl.Parent = row
        lbl.Name = "Label"

        itemRows[item.key] = {row = row, dot = dot}
    end

    local footer = Instance.new("Frame")
    footer.BackgroundTransparency = 1
    footer.Position = UDim2.new(0, 8, 1, -22)
    footer.Size = UDim2.new(1, -16, 0, 18)
    footer.Parent = mainFrame

    local uptimeLabel = Instance.new("TextLabel")
    uptimeLabel.BackgroundTransparency = 1
    uptimeLabel.Size = UDim2.new(0.5, 0, 1, 0)
    uptimeLabel.Font = Enum.Font.Gotham
    uptimeLabel.Text = "Uptime: 00:00:00"
    uptimeLabel.TextColor3 = colors.textMuted
    uptimeLabel.TextSize = 9
    uptimeLabel.TextXAlignment = Enum.TextXAlignment.Left
    uptimeLabel.Parent = footer

    local statusFrame = Instance.new("Frame")
    statusFrame.BackgroundColor3 = colors.surfaceLight
    statusFrame.BackgroundTransparency = 0.5
    statusFrame.BorderSizePixel = 0
    statusFrame.Position = UDim2.new(0.5, 2, 0, 0)
    statusFrame.Size = UDim2.new(0.5, -2, 1, 0)
    statusFrame.Parent = footer
    local statusCorner = Instance.new("UICorner")
    statusCorner.CornerRadius = UDim.new(0, 4)
    statusCorner.Parent = statusFrame

    local statusLabel = Instance.new("TextLabel")
    statusLabel.BackgroundTransparency = 1
    statusLabel.Size = UDim2.new(1, -4, 1, 0)
    statusLabel.Position = UDim2.new(0, 2, 0, 0)
    statusLabel.Font = Enum.Font.GothamBold
    statusLabel.Text = "● Online"
    statusLabel.TextColor3 = colors.success
    statusLabel.TextSize = 9
    statusLabel.TextXAlignment = Enum.TextXAlignment.Left
    statusLabel.Parent = statusFrame

    local floatingBtn = Instance.new("ImageButton")
    floatingBtn.BackgroundTransparency = 1
    floatingBtn.BorderSizePixel = 0
    floatingBtn.AnchorPoint = Vector2.new(0, 0.5)
    floatingBtn.Position = UDim2.new(0, 8, 0.5, 0)
    floatingBtn.Size = UDim2.new(0, 34, 0, 34)
    floatingBtn.Image = ICON_ID
    floatingBtn.AutoButtonColor = false
    floatingBtn.ZIndex = 999
    floatingBtn.Parent = screenGui

    local uiVisible = true
    local minimized = false
    local startTime = os.time()

    floatingBtn.MouseButton1Click:Connect(function()
        uiVisible = not uiVisible
        mainFrame.Visible = uiVisible
        blur.Size = uiVisible and 24 or 0
    end)

    toggleBtn.MouseButton1Click:Connect(function()
        uiVisible = not uiVisible
        mainFrame.Visible = uiVisible
        blur.Size = uiVisible and 24 or 0
    end)

    minBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        if minimized then
            mainFrame.Size = UDim2.new(0, 340, 0, 30)
            body.Visible = false
            footer.Visible = false
            minBtn.Text = "+"
        else
            mainFrame.Size = UDim2.new(0, 340, 0, 220)
            body.Visible = true
            footer.Visible = true
            minBtn.Text = "—"
        end
    end)

    local dragging = false
    local dragStart, startPos
    titleBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = mainFrame.Position
        end
    end)
    titleBar.InputEnded:Connect(function() dragging = false end)
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
                                           startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    task.spawn(function()
        while screenGui and screenGui.Parent do
            task.wait(0.5)
            pcall(function()
                fpsLabel.Text = "FPS: " .. tostring(fps)
                local data = getPlayerData()
                levelVal.Text = tostring(data.level)
                raceVal.Text = data.race
                beliVal.Text = formatMoney(data.beli)
                fragVal.Text = tostring(data.frag)

                for key, row in pairs(itemRows) do
                    local has = hasItem(key)
                    row.dot.TextColor3 = has and colors.success or colors.error
                end

                local elapsed = os.time() - startTime
                uptimeLabel.Text = "Uptime: " .. formatTime(elapsed)

                local statusText = L_1_[26] and L_1_[26].Text or "Farming..."
                statusLabel.Text = "● " .. (statusText ~= "" and statusText or "Online")
            end)
        end
    end)

    task.wait(0.5)
    local oldStatus = L_1_[45]["Status"]
    L_1_[45]["Status"] = function(msg)
        if L_1_[26] then L_1_[26].Text = tostring(msg) end
        if statusLabel then statusLabel.Text = "● " .. tostring(msg) end
        if oldStatus then oldStatus(msg) end
    end

    print("[UI] Tiro Hub đã được tích hợp vào hệ thống L1!")
end)

-- World check
if L_1_[30] == 2753915549 or L_1_[30] == 85211729168715 then
	Old_World = true
elseif L_1_[30] == 4442272183 or L_1_[30] == 79091703265657 then
	New_World = true
elseif L_1_[30] == 7449423635 or L_1_[30] == 100117331123089 then
	Three_World = true
end
L_1_[22] = (L_1_[5]:WaitForChild("Data")):WaitForChild("Level")
function CheckLevel2()
    local level = game.Players.LocalPlayer.Data.Level.Value
    if Old_World then
        if level >= 1 and level <= 9 then
            Ms = "Bandit"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
            CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
        elseif level >= 10 and level <= 14 then
            Ms = "Monkey"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838)
            CFrameMon = CFrame.new(-1448.51806640625, 67.85301208496094, 11.46579647064209)
        elseif level >= 15 and level <= 29 then
            Ms = "Gorilla"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = CFrame.new(-1598.08911, 35.5501175, 153.377838)
            CFrameMon = CFrame.new(-1129.8836669921875, 40.46354675292969, -525.4237060546875)
        elseif level >= 30 and level <= 39 then
            Ms = "Pirate"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
            CFrameMon = CFrame.new(-1103.513427734375, 13.752052307128906, 3896.091064453125)
        elseif level >= 40 and level <= 59 then
            Ms = "Brute"
            NameQuest = "BuggyQuest1"
            QuestLv = 2
            NameMon = "Brute"
            CFrameQ = CFrame.new(-1141.07483, 4.10001802, 3831.5498)
            CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
        elseif level >= 60 and level <= 74 then
            Ms = "Desert Bandit"
            NameQuest = "DesertQuest"
            QuestLv = 1
            NameMon = "Desert Bandit"
            CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359)
            CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
        elseif level >= 75 and level <= 89 then
            Ms = "Desert Officer"
            NameQuest = "DesertQuest"
            QuestLv = 2
            NameMon = "Desert Officer"
            CFrameQ = CFrame.new(894.488647, 5.14000702, 4392.43359)
            CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
        elseif level >= 90 and level <= 99 then
            Ms = "Snow Bandit"
            NameQuest = "SnowQuest"
            QuestLv = 1
            NameMon = "Snow Bandit"
            CFrameQ = CFrame.new(1389.74451, 88.1519318, -1298.90796)
            CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
        elseif level >= 100 and level <= 119 then
            Ms = "Snowman"
            NameQuest = "SnowQuest"
            QuestLv = 2
            NameMon = "Snowman"
            CFrameQ = CFrame.new(1389.74451, 88.1519318, -1298.90796)
            CFrameMon = CFrame.new(1201.6412353516, 144.57958984375, -1550.0670166016)
        elseif level >= 120 and level <= 149 then
            Ms = "Chief Petty Officer"
            NameQuest = "MarineQuest2"
            QuestLv = 1
            NameMon = "Chief Petty Officer"
            CFrameQ = CFrame.new(-5039.58643, 27.3500385, 4324.68018)
            CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
        elseif level >= 150 and level <= 174 then
            Ms = "Sky Bandit"
            NameQuest = "SkyQuest"
            QuestLv = 1
            NameMon = "Sky Bandit"
            CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165)
            CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
        elseif level >= 175 and level <= 189 then
            Ms = "Dark Master"
            NameQuest = "SkyQuest"
            QuestLv = 2
            NameMon = "Dark Master"
            CFrameQ = CFrame.new(-4839.53027, 716.368591, -2619.44165)
            CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
        elseif level >= 190 and level <= 209 then
            Ms = "Prisoner"
            NameQuest = "PrisonerQuest"
            QuestLv = 1
            NameMon = "Prisoner"
            CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514)
            CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
        elseif level >= 210 and level <= 249 then
            Ms = "Dangerous Prisoner"
            NameQuest = "PrisonerQuest"
            QuestLv = 2
            NameMon = "Dangerous Prisoner"
            CFrameQ = CFrame.new(5308.93115, 1.65517521, 475.120514)
            CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
        elseif level >= 250 and level <= 274 then
            Ms = "Toga Warrior"
            NameQuest = "ColosseumQuest"
            QuestLv = 1
            NameMon = "Toga Warrior"
            CFrameQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
            CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
        elseif level >= 275 and level <= 299 then
            Ms = "Gladiator"
            NameQuest = "ColosseumQuest"
            QuestLv = 2
            NameMon = "Gladiator"
            CFrameQ = CFrame.new(-1580.04663, 6.35000277, -2986.47534)
            CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
        elseif level >= 300 and level <= 324 then
            Ms = "Military Soldier"
            NameQuest = "MagmaQuest"
            QuestLv = 1
            NameMon = "Military Soldier"
            CFrameQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
            CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
        elseif level >= 325 and level <= 374 then
            Ms = "Military Spy"
            NameQuest = "MagmaQuest"
            QuestLv = 2
            NameMon = "Military Spy"
            CFrameQ = CFrame.new(-5313.37012, 10.9500084, 8515.29395)
            CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
        elseif level >= 375 and level <= 399 then
            Ms = "Fishman Warrior"
            NameQuest = "FishmanQuest"
            QuestLv = 1
            NameMon = "Fishman Warrior"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
        elseif level >= 400 and level <= 449 then
            Ms = "Fishman Commando"
            NameQuest = "FishmanQuest"
            QuestLv = 2
            NameMon = "Fishman Commando"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
        elseif level >= 450 and level <= 474 then
            Ms = "God's Guard"
            NameQuest = "SkyExp1Quest"
            QuestLv = 1
            NameMon = "God's Guard"
            CFrameQ = CFrame.new(-4721.88867, 843.874695, -1949.96643)
            CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
        elseif level >= 475 and level <= 524 then
            Ms = "Shanda"
            NameQuest = "SkyExp1Quest"
            QuestLv = 2
            NameMon = "Shanda"
            CFrameQ = CFrame.new(-7859.09814, 5544.19043, -381.476196)
            CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
        elseif level >= 525 and level <= 549 then
            Ms = "Royal Squad"
            NameQuest = "SkyExp2Quest"
            QuestLv = 1
            NameMon = "Royal Squad"
            CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
            CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
        elseif level >= 550 and level <= 624 then
            Ms = "Royal Soldier"
            NameQuest = "SkyExp2Quest"
            QuestLv = 2
            NameMon = "Royal Soldier"
            CFrameQ = CFrame.new(-7906.81592, 5634.6626, -1411.99194)
            CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
        elseif level >= 625 and level <= 649 then
            Ms = "Galley Pirate"
            NameQuest = "FountainQuest"
            QuestLv = 1
            NameMon = "Galley Pirate"
            CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293)
            CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
        elseif level >= 650 then
            Ms = "Galley Captain"
            NameQuest = "FountainQuest"
            QuestLv = 2
            NameMon = "Galley Captain"
            CFrameQ = CFrame.new(5259.81982, 37.3500175, 4050.0293)
            CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
        end
    elseif New_World then
        if level >= 700 and level <= 724 then
            Ms = "Raider"
            NameQuest = "Area1Quest"
            QuestLv = 1
            NameMon = "Raider"
            CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188)
            CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
        elseif level >= 725 and level <= 774 then
            Ms = "Mercenary"
            NameQuest = "Area1Quest"
            QuestLv = 2
            NameMon = "Mercenary"
            CFrameQ = CFrame.new(-429.543518, 71.7699966, 1836.18188)
            CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
        elseif level >= 775 and level <= 799 then
            Ms = "Swan Pirate"
            NameQuest = "Area2Quest"
            QuestLv = 1
            NameMon = "Swan Pirate"
            CFrameQ = CFrame.new(638.43811, 71.769989, 918.282898)
            CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
        elseif level >= 800 and level <= 874 then
            Ms = "Factory Staff"
            NameQuest = "Area2Quest"
            QuestLv = 2
            NameMon = "Factory Staff"
            CFrameQ = CFrame.new(632.698608, 73.1055908, 918.666321)
            CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
        elseif level >= 875 and level <= 899 then
            Ms = "Marine Lieutenant"
            NameQuest = "MarineQuest3"
            QuestLv = 1
            NameMon = "Marine Lieutenant"
            CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812)
            CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
        elseif level >= 900 and level <= 949 then
            Ms = "Marine Captain"
            NameQuest = "MarineQuest3"
            QuestLv = 2
            NameMon = "Marine Captain"
            CFrameQ = CFrame.new(-2440.79639, 71.7140732, -3216.06812)
            CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
        elseif level >= 950 and level <= 974 then
            Ms = "Zombie"
            NameQuest = "ZombieQuest"
            QuestLv = 1
            NameMon = "Zombie"
            CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061)
            CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
        elseif level >= 975 and level <= 999 then
            Ms = "Vampire"
            NameQuest = "ZombieQuest"
            QuestLv = 2
            NameMon = "Vampire"
            CFrameQ = CFrame.new(-5497.06152, 47.5923004, -795.237061)
            CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
        elseif level >= 1000 and level <= 1049 then
            Ms = "Snow Trooper"
            NameQuest = "SnowMountainQuest"
            QuestLv = 1
            NameMon = "Snow Trooper"
            CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928)
            CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
        elseif level >= 1050 and level <= 1099 then
            Ms = "Winter Warrior"
            NameQuest = "SnowMountainQuest"
            QuestLv = 2
            NameMon = "Winter Warrior"
            CFrameQ = CFrame.new(609.858826, 400.119904, -5372.25928)
            CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
        elseif level >= 1100 and level <= 1124 then
            Ms = "Lab Subordinate"
            NameQuest = "IceSideQuest"
            QuestLv = 1
            NameMon = "Lab Subordinate"
            CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852)
            CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
        elseif level >= 1125 and level <= 1174 then
            Ms = "Horned Warrior"
            NameQuest = "IceSideQuest"
            QuestLv = 2
            NameMon = "Horned Warrior"
            CFrameQ = CFrame.new(-6064.06885, 15.2422857, -4902.97852)
            CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
        elseif level >= 1175 and level <= 1199 then
            Ms = "Magma Ninja"
            NameQuest = "FireSideQuest"
            QuestLv = 1
            NameMon = "Magma Ninja"
            CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457)
            CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
        elseif level >= 1200 and level <= 1249 then
            Ms = "Lava Pirate"
            NameQuest = "FireSideQuest"
            QuestLv = 2
            NameMon = "Lava Pirate"
            CFrameQ = CFrame.new(-5428.03174, 15.0622921, -5299.43457)
            CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
        elseif level >= 1250 and level <= 1274 then
            Ms = "Ship Deckhand"
            NameQuest = "ShipQuest1"
            QuestLv = 1
            NameMon = "Ship Deckhand"
            CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)
        elseif level >= 1275 and level <= 1299 then
            Ms = "Ship Engineer"
            NameQuest = "ShipQuest1"
            QuestLv = 2
            NameMon = "Ship Engineer"
            CFrameQ = CFrame.new(1037.80127, 125.092171, 32911.6016)
            CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)
        elseif level >= 1300 and level <= 1324 then
            Ms = "Ship Steward"
            NameQuest = "ShipQuest2"
            QuestLv = 1
            NameMon = "Ship Steward"
            CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)
        elseif level >= 1325 and level <= 1349 then
            Ms = "Ship Officer"
            NameQuest = "ShipQuest2"
            QuestLv = 2
            NameMon = "Ship Officer"
            CFrameQ = CFrame.new(968.80957, 125.092171, 33244.125)
            CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
        elseif level >= 1350 and level <= 1374 then
            Ms = "Arctic Warrior"
            NameQuest = "FrostQuest"
            QuestLv = 1
            NameMon = "Arctic Warrior"
            CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984)
            CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
        elseif level >= 1375 and level <= 1424 then
            Ms = "Snow Lurker"
            NameQuest = "FrostQuest"
            QuestLv = 2
            NameMon = "Snow Lurker"
            CFrameQ = CFrame.new(5667.6582, 26.7997818, -6486.08984)
            CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
        elseif level >= 1425 and level <= 1449 then
            Ms = "Sea Soldier"
            NameQuest = "ForgottenQuest"
            QuestLv = 1
            NameMon = "Sea Soldier"
            CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193)
            CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
        elseif level >= 1450 then
            Ms = "Water Fighter"
            NameQuest = "ForgottenQuest"
            QuestLv = 2
            NameMon = "Water Fighter"
            CFrameQ = CFrame.new(-3054.44458, 235.544281, -10142.8193)
            CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
        end
    elseif Three_World then
        if level >= 1500 and level <= 1524 then
            Ms = "Pirate Millionaire"
            NameQuest = "PiratePortQuest"
            QuestLv = 1
            NameMon = "Pirate Millionaire"
            CFrameQ = CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625)
            CFrameMon = CFrame.new(-712.8272705078125, 98.5770492553711, 5711.9541015625)
        elseif level >= 1525 and level <= 1574 then
            Ms = "Pistol Billionaire"
            NameQuest = "PiratePortQuest"
            QuestLv = 2
            NameMon = "Pistol Billionaire"
            CFrameQ = CFrame.new(-723.4331665039062, 147.42906188964844, 5931.9931640625)
            CFrameMon = CFrame.new(-723.4331665039062, 147.42906188964844, 5931.9931640625)
        elseif level >= 1575 and level <= 1599 then
            Ms = "Dragon Crew Warrior"
            NameQuest = "AmazonQuest"
            QuestLv = 1
            NameMon = "Dragon Crew Warrior"
            CFrameQ = CFrame.new(6779.03271484375, 111.16865539550781, -801.2130737304688)
            CFrameMon = CFrame.new(6779.03271484375, 111.16865539550781, -801.2130737304688)
        elseif level >= 1600 and level <= 1624 then
            Ms = "Dragon Crew Archer"
            NameQuest = "AmazonQuest"
            QuestLv = 2
            NameMon = "Dragon Crew Archer"
            CFrameQ = CFrame.new(6955.8974609375, 546.6658935546875, 309.0401306152344)
            CFrameMon = CFrame.new(6955.8974609375, 546.6658935546875, 309.0401306152344)
        elseif level >= 1625 and level <= 1649 then
            Ms = "Hydra Enforcer"
            NameQuest = "VenomCrewQuest"
            QuestLv = 1
            NameMon = "Hydra Enforcer"
            CFrameQ = CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219)
            CFrameMon = CFrame.new(4620.61572265625, 1002.2954711914062, 399.0868835449219)
        elseif level >= 1650 and level <= 1699 then
            Ms = "Venomous Assailant"
            NameQuest = "VenomCrewQuest"
            QuestLv = 2
            NameMon = "Venomous Assailant"
            CFrameQ = CFrame.new(4697.5918, 1100.65137, 946.401978)
            CFrameMon = CFrame.new(4697.5918, 1100.65137, 946.401978)
        elseif level >= 1700 and level <= 1724 then
            Ms = "Marine Commodore"
            NameQuest = "MarineTreeIsland"
            QuestLv = 1
            NameMon = "Marine Commodore"
            CFrameQ = CFrame.new(2180.54126, 27.8156815, -6741.5498)
            CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
        elseif level >= 1725 and level <= 1774 then
            Ms = "Marine Rear Admiral"
            NameQuest = "MarineTreeIsland"
            QuestLv = 2
            NameMon = "Marine Rear Admiral"
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
            CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
        elseif level >= 1775 and level <= 1799 then
            Ms = "Fishman Raider"
            NameQuest = "DeepForestIsland3"
            QuestLv = 1
            NameMon = "Fishman Raider"
            CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
        elseif level >= 1800 and level <= 1824 then
            Ms = "Fishman Captain"
            NameQuest = "DeepForestIsland3"
            QuestLv = 2
            NameMon = "Fishman Captain"
            CFrameQ = CFrame.new(-10581.6563, 330.872955, -8761.18652)
            CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625)
        elseif level >= 1825 and level <= 1849 then
            Ms = "Forest Pirate"
            NameQuest = "DeepForestIsland"
            QuestLv = 1
            NameMon = "Forest Pirate"
            CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
        elseif level >= 1850 and level <= 1899 then
            Ms = "Mythological Pirate"
            NameQuest = "DeepForestIsland"
            QuestLv = 2
            NameMon = "Mythological Pirate"
            CFrameQ = CFrame.new(-13234.04, 331.488495, -7625.40137)
            CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
        elseif level >= 1900 and level <= 1924 then
            Ms = "Jungle Pirate"
            NameQuest = "DeepForestIsland2"
            QuestLv = 1
            NameMon = "Jungle Pirate"
            CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
        elseif level >= 1925 and level <= 1974 then
            Ms = "Musketeer Pirate"
            NameQuest = "DeepForestIsland2"
            QuestLv = 2
            NameMon = "Musketeer Pirate"
            CFrameQ = CFrame.new(-12680.3818, 389.971039, -9902.01953)
            CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
        elseif level >= 1975 and level <= 1999 then
            Ms = "Reborn Skeleton"
            NameQuest = "HauntedQuest1"
            QuestLv = 1
            NameMon = "Reborn Skeleton"
            CFrameQ = CFrame.new(-9479.2168, 141.215088, 5566.09277)
            CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
        elseif level >= 2000 and level <= 2024 then
            Ms = "Living Zombie"
            NameQuest = "HauntedQuest1"
            QuestLv = 2
            NameMon = "Living Zombie"
            CFrameQ = CFrame.new(-9479.2168, 141.215088, 5566.09277)
            CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
        elseif level >= 2025 and level <= 2049 then
            Ms = "Demonic Soul"
            NameQuest = "HauntedQuest2"
            QuestLv = 1
            NameMon = "Demonic Soul"
            CFrameQ = CFrame.new(-9516.99316, 172.017181, 6078.46533)
            CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
        elseif level >= 2050 and level <= 2074 then
            Ms = "Posessed Mummy"
            NameQuest = "HauntedQuest2"
            QuestLv = 2
            NameMon = "Posessed Mummy"
            CFrameQ = CFrame.new(-9516.99316, 172.017181, 6078.46533)
            CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
        elseif level >= 2075 and level <= 2099 then
            Ms = "Peanut Scout"
            NameQuest = "NutsIslandQuest"
            QuestLv = 1
            NameMon = "Peanut Scout"
            CFrameQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875)
            CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
        elseif level >= 2100 and level <= 2124 then
            Ms = "Peanut President"
            NameQuest = "NutsIslandQuest"
            QuestLv = 2
            NameMon = "Peanut President"
            CFrameQ = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875)
            CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
        elseif level >= 2125 and level <= 2149 then
            Ms = "Ice Cream Chef"
            NameQuest = "IceCreamIslandQuest"
            QuestLv = 1
            NameMon = "Ice Cream Chef"
            CFrameQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438)
            CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
        elseif level >= 2150 and level <= 2199 then
            Ms = "Ice Cream Commander"
            NameQuest = "IceCreamIslandQuest"
            QuestLv = 2
            NameMon = "Ice Cream Commander"
            CFrameQ = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438)
            CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
        elseif level >= 2200 and level <= 2224 then
            Ms = "Cookie Crafter"
            NameQuest = "CakeQuest1"
            QuestLv = 1
            NameMon = "Cookie Crafter"
            CFrameQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295)
            CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
        elseif level >= 2225 and level <= 2249 then
            Ms = "Cake Guard"
            NameQuest = "CakeQuest1"
            QuestLv = 2
            NameMon = "Cake Guard"
            CFrameQ = CFrame.new(-2021.32007, 37.7982254, -12028.7295)
            CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
        elseif level >= 2250 and level <= 2274 then
            Ms = "Baking Staff"
            NameQuest = "CakeQuest2"
            QuestLv = 1
            NameMon = "Baking Staff"
            CFrameQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391)
            CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
        elseif level >= 2275 and level <= 2299 then
            Ms = "Head Baker"
            NameQuest = "CakeQuest2"
            QuestLv = 2
            NameMon = "Head Baker"
            CFrameQ = CFrame.new(-1927.91602, 37.7981339, -12842.5391)
            CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
        elseif level >= 2300 and level <= 2324 then
            Ms = "Cocoa Warrior"
            NameQuest = "ChocQuest1"
            QuestLv = 1
            NameMon = "Cocoa Warrior"
            CFrameQ = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
        elseif level >= 2325 and level <= 2349 then
            Ms = "Chocolate Bar Battler"
            NameQuest = "ChocQuest1"
            QuestLv = 2
            NameMon = "Chocolate Bar Battler"
            CFrameQ = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
            CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
        elseif level >= 2350 and level <= 2374 then
            Ms = "Sweet Thief"
            NameQuest = "ChocQuest2"
            QuestLv = 1
            NameMon = "Sweet Thief"
            CFrameQ = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
        elseif level >= 2375 and level <= 2399 then
            Ms = "Candy Rebel"
            NameQuest = "ChocQuest2"
            QuestLv = 2
            NameMon = "Candy Rebel"
            CFrameQ = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
            CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
        elseif level >= 2400 and level <= 2449 then
            Ms = "Candy Pirate"
            NameQuest = "CandyQuest1"
            QuestLv = 1
            NameMon = "Candy Pirate"
            CFrameQ = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
            CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
        elseif level >= 2450 and level <= 2474 then
            Ms = "Isle Outlaw"
            NameQuest = "TikiQuest1"
            QuestLv = 1
            NameMon = "Isle Outlaw"
            CFrameQ = CFrame.new(-16548.8164, 55.6059914, -172.8125)
            CFrameMon = CFrame.new(-16479.900390625, 226.6117401123047, -300.3114318847656)
        elseif level >= 2475 and level <= 2499 then
            Ms = "Island Boy"
            NameQuest = "TikiQuest1"
            QuestLv = 2
            NameMon = "Island Boy"
            CFrameQ = CFrame.new(-16548.8164, 55.6059914, -172.8125)
            CFrameMon = CFrame.new(-16849.396484375, 192.86505126953125, -150.7853240966797)
        elseif level >= 2500 and level <= 2524 then
            Ms = "Sun-kissed Warrior"
            NameQuest = "TikiQuest2"
            QuestLv = 1
            NameMon = "Sun-kissed Warrior"
            CFrameQ = CFrame.new(-16538, 55, 1049)
            CFrameMon = CFrame.new(-16347, 64, 984)
        elseif level >= 2525 and level <= 2550 then
            Ms = "Isle Champion"
            NameQuest = "TikiQuest2"
            QuestLv = 2
            NameMon = "Isle Champion"
            CFrameQ = CFrame.new(-16541.0215, 57.3082275, 1051.46118)
            CFrameMon = CFrame.new(-16602.1015625, 130.38734436035156, 1087.24560546875)
        elseif level >= 2551 and level <= 2574 then
            Ms = "Serpent Hunter"
            NameQuest = "TikiQuest3"
            QuestLv = 1
            NameMon = "Serpent Hunter"
            CFrameQ = CFrame.new(-16679.4785, 176.7473, 1474.3995)
            CFrameMon = CFrame.new(-16679.4785, 176.7473, 1474.3995)
        elseif level >= 2575 and level <= 2599 then
            Ms = "Skull Slayer"
            NameQuest = "TikiQuest3"
            QuestLv = 2
            NameMon = "Skull Slayer"
            CFrameQ = CFrame.new(-16759.5898, 71.2837, 1595.3399)
            CFrameMon = CFrame.new(-16759.5898, 71.2837, 1595.3399)
        elseif level >= 2600 and level <= 2624 then
            Ms = "Reef Bandit"
            NameQuest = "SubmergedQuest1"
            QuestLv = 1
            NameMon = "Reef Bandit"
            CFrameQ = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMon = CFrame.new(10736.6191, -2087.8439, 9338.4882)
        elseif level >= 2625 and level <= 2649 then
            Ms = "Coral Pirate"
            NameQuest = "SubmergedQuest1"
            QuestLv = 2
            NameMon = "Coral Pirate"
            CFrameQ = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMon = CFrame.new(10965.1025, -2158.8842, 9177.2597)
        elseif level >= 2650 and level <= 2674 then
            Ms = "Sea Chanter"
            NameQuest = "SubmergedQuest2"
            QuestLv = 1
            NameMon = "Sea Chanter"
            CFrameQ = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMon = CFrame.new(10621.0342, -2087.8440, 10102.0332)
        elseif level >= 2675 and level <= 2699 then
            Ms = "Ocean Prophet"
            NameQuest = "SubmergedQuest2"
            QuestLv = 2
            NameMon = "Ocean Prophet"
            CFrameQ = CFrame.new(10882.264, -2086.322, 10034.226)
            CFrameMon = CFrame.new(11056.1445, -2001.6717, 10117.4493)
        elseif level >= 2700 and level <= 2724 then
            Ms = "High Disciple"
            NameQuest = "SubmergedQuest3"
            QuestLv = 1
            NameMon = "High Disciple"
            CFrameQ = CFrame.new(9636.52441, -1992.19507, 9609.52832)
            CFrameMon = CFrame.new(9828.087890625, -1940.908935546875, 9693.0634765625)
        elseif level >= 2725 and level <= 2800 then
            Ms = "Grand Devotee"
            NameQuest = "SubmergedQuest3"
            QuestLv = 2
            NameMon = "Grand Devotee"
            CFrameQ = CFrame.new(9636.52441, -1992.19507, 9609.52832)
            CFrameMon = CFrame.new(9557.5849609375, -1928.0404052734375, 9859.1826171875)
        end
    end
    SelectMonster = Ms
end

L_1_[8] = function()
	if Old_World and (L_1_[22]["Value"] >= 1 and L_1_[22]["Value"] <= 9) then
		Enemy = "Bandit"
		NameEnemy = "Bandit"
		QuestName = "BanditQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](1059.58728, 16.412075, 1549.54443, -0.963007867, 4.12775627e-08, .269473195, 2.39519959e-08, 1, -6.75822349e-08, -0.269473195, -5.86278048e-08, -0.963007867)
		EnemyPos = CFrame["new"](1175.00793, 43.7162018, 1680.39185, .940636754, 1.67726082e-08, .339414984, -3.54472718e-08, 1, 4.88204712e-08, -0.339414984, -5.79536632e-08, .940636754)
	elseif Old_World and (L_1_[22]["Value"] >= 10 and L_1_[22]["Value"] <= 14) then
		Enemy = "Monkey"
		NameEnemy = "Monkey"
		QuestName = "JungleQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-1598.92285, 36.9012909, 148.748718, -0.969585121, -1.11576668e-07, -0.244754329, -1.2733129e-07, 1, 4.8546088e-08, .244754329, 7.823445e-08, -0.969585121)
		EnemyPos = CFrame["new"](-1660.75586, 40.1013031, 320.152313, .82476908, -4.88485696e-08, -0.565469682, 5.81200084e-08, 1, -1.61455704e-09, .565469682, -3.15334674e-08, .82476908)
	elseif Old_World and (L_1_[22]["Value"] >= 15 and L_1_[22]["Value"] <= 29) then
		Enemy = "Gorilla"
		NameEnemy = "Gorilla"
		QuestName = "JungleQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-1598.92285, 36.9012909, 148.748718, -0.969585121, -1.11576668e-07, -0.244754329, -1.2733129e-07, 1, 4.8546088e-08, .244754329, 7.823445e-08, -0.969585121)
		EnemyPos = CFrame["new"](-1196.64343, 7.74201918, -445.539734, -0.919930279, -4.16423696e-08, .392081946, -1.71233108e-08, 1, 6.60324133e-08, -0.392081946, 5.40314744e-08, -0.919930279)
		if Old_World and (L_1_[22]["Value"] >= 20 and L_1_[22]["Value"] <= 29) then
			Name_Boss = "The Gorilla King"
			QuestName_Boss = "JungleQuest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 30 and L_1_[22]["Value"] <= 39) then
		Enemy = "Pirate"
		NameEnemy = "Pirate"
		QuestName = "BuggyQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](-1139.5631103516, 4.7520513534546, 3830.38671875)
		EnemyPos = CFrame["new"](-1045.9431152344, 64.419502258301, 3930.3020019531)
	elseif Old_World and (L_1_[22]["Value"] >= 40 and L_1_[22]["Value"] <= 59) then
		Enemy = "Brute"
		NameEnemy = "Brute"
		QuestName = "BuggyQuest1"
		QuestNumber = 2
		QuestPos = CFrame["new"](-1139.5631103516, 4.7520513534546, 3830.38671875)
		EnemyPos = CFrame["new"](-1150.2763671875, 130.60118103027, 4164.9345703125)
		if Old_World and (L_1_[22]["Value"] >= 55 and L_1_[22]["Value"] <= 59) then
			Name_Boss = "Bobby"
			QuestName_Boss = "BuggyQuest1"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 60 and L_1_[22]["Value"] <= 74) then
		Enemy = "Desert Bandit"
		NameEnemy = "Desert Bandit"
		QuestName = "DesertQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
		EnemyPos = CFrame["new"](935.8798046975, 6.4486746788025, 4481.5859375)
	elseif Old_World and (L_1_[22]["Value"] >= 75 and L_1_[22]["Value"] <= 89) then
		Enemy = "Desert Officer"
		NameEnemy = "Desert Officer"
		QuestName = "DesertQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693)
		EnemyPos = CFrame["new"](1608.2822265625, 8.6142244338989, 4371.0073242188)
	elseif Old_World and (L_1_[22]["Value"] >= 90 and L_1_[22]["Value"] <= 99) then
		Enemy = "Snow Bandit"
		NameEnemy = "Snow Bandit"
		QuestName = "SnowQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
		EnemyPos = CFrame["new"](1354.3479003906, 87.272773742676, -1393.9465332031)
	elseif Old_World and (L_1_[22]["Value"] >= 100 and L_1_[22]["Value"] <= 119) then
		Enemy = "Snowman"
		NameEnemy = "Snowman"
		QuestName = "SnowQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
		EnemyPos = CFrame["new"](1201.6412353516, 144.57958984375, -1550.0670166016)
		if Old_World and (L_1_[22]["Value"] >= 110 and L_1_[22]["Value"] <= 119) then
			Name_Boss = "Yeti"
			QuestName_Boss = "SnowQuest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 120 and L_1_[22]["Value"] <= 149) then
		Enemy = "Chief Petty Officer"
		NameEnemy = "Chief Petty Officer"
		QuestName = "MarineQuest2"
		QuestNumber = 1
		QuestPos = CFrame["new"](-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-4710.3598632812, 112.02615356445, 4584.92578125)
		if Old_World and (L_1_[22]["Value"] >= 130 and L_1_[22]["Value"] <= 149) then
			Name_Boss = "Vice Admiral"
			QuestName_Boss = "MarineQuest2"
			QuestNumber_Boss = 2
		end
	elseif Old_World and (L_1_[22]["Value"] >= 150 and L_1_[22]["Value"] <= 174) then
		Enemy = "Sky Bandit"
		NameEnemy = "Sky Bandit"
		QuestName = "SkyQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-4838.701171875, 717.66931152344, -2617.8647460938)
		EnemyPos = CFrame["new"](-4965.37890625, 357.37414550781, -2848.7023925781)
	elseif Old_World and (L_1_[22]["Value"] >= 175 and L_1_[22]["Value"] <= 189) then
		Enemy = "Dark Master"
		NameEnemy = "Dark Master"
		QuestName = "SkyQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-4838.701171875, 717.66931152344, -2617.8647460938)
		EnemyPos = CFrame["new"](-5224.05859375, 484.44784545898, -2275.9985351562)
	elseif Old_World and (L_1_[22]["Value"] >= 190 and L_1_[22]["Value"] <= 209) then
		Enemy = "Prisoner"
		NameEnemy = "Prisoner"
		QuestName = "PrisonerQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](5309.6474609375, 1.6542626619339, 477.8815612793)
		EnemyPos = CFrame["new"](5276.5576171875, 87.836639404297, 561.01007080078)
	elseif Old_World and (L_1_[22]["Value"] >= 210 and L_1_[22]["Value"] <= 249) then
		Enemy = "Dangerous Prisoner"
		NameEnemy = "Dangerous Prisoner"
		QuestName = "PrisonerQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](5309.6474609375, 1.6542626619339, 477.8815612793)
		EnemyPos = CFrame["new"](5276.5576171875, 87.836639404297, 561.01007080078)
		if Old_World and (L_1_[22]["Value"] >= 240 and L_1_[22]["Value"] <= 249) then
			Name_Boss = "Swan"
			QuestName_Boss = "ImpelQuest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 250 and L_1_[22]["Value"] <= 299) then
		Enemy = "Toga Warrior"
		NameEnemy = "Toga Warrior"
		QuestName = "ColosseumQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298)
		EnemyPos = CFrame["new"](-1820.21484375, 51.683856964111, -2740.6650390625)
	elseif Old_World and (L_1_[22]["Value"] >= 300 and L_1_[22]["Value"] <= 324) then
		Enemy = "Military Soldier"
		NameEnemy = "Military Soldier"
		QuestName = "MagmaQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
		EnemyPos = CFrame["new"](-5411.1645507812, 11.081554412842, 8454.29296875)
	elseif Old_World and (L_1_[22]["Value"] >= 325 and L_1_[22]["Value"] <= 374) then
		Enemy = "Military Spy"
		NameEnemy = "Military Spy"
		QuestName = "MagmaQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
		EnemyPos = CFrame["new"](-5802.8681640625, 86.262413024902, 8828.859375)
		if Old_World and (L_1_[22]["Value"] >= 350 and L_1_[22]["Value"] <= 374) then
			Name_Boss = "Magma Admiral"
			QuestName_Boss = "MagmaQuest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 375 and L_1_[22]["Value"] <= 399) then
		Enemy = "Fishman Warrior"
		NameEnemy = "Fishman Warrior"
		QuestName = "FishmanQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](61122.65234375, 18.497442245483, 1569.3997802734)
		EnemyPos = CFrame["new"](60878.30078125, 18.482830047607, 1543.7574462891)
		if ((CFrame["new"](61164, 12, 1820))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 2000 then
			L_1_[5]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](61164, 12, 1820)
		end
	elseif Old_World and (L_1_[22]["Value"] >= 400 and L_1_[22]["Value"] <= 449) then
		Enemy = "Fishman Commando"
		NameEnemy = "Fishman Commando"
		QuestName = "FishmanQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](61122.65234375, 18.497442245483, 1569.3997802734)
		EnemyPos = CFrame["new"](61922.6328125, 18.482830047607, 1493.9343261719)
		if Old_World and (L_1_[22]["Value"] >= 425 and L_1_[22]["Value"] <= 449) then
			Name_Boss = "Fishman Lord"
			QuestName_Boss = "FishmanQuest"
			QuestNumber_Boss = 3
		end
		if ((CFrame["new"](61164, 12, 1820))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 2000 then
			L_1_[5]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](61164, 12, 1820)
		end
	elseif Old_World and (L_1_[22]["Value"] >= 450 and L_1_[22]["Value"] <= 474) then
		Enemy = "God's Guard"
		NameEnemy = "God's Guard"
		QuestName = "SkyExp1Quest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859)
		EnemyPos = CFrame["new"](-4710.04296875, 845.27697753906, -1927.3079833984)
		if ((CFrame["new"](-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
			L_1_[7]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-4607.82275, 872.54248, -1667.55688))
		end
	elseif Old_World and (L_1_[22]["Value"] >= 475 and L_1_[22]["Value"] <= 524) then
		Enemy = "Shanda"
		NameEnemy = "Shanda"
		QuestName = "SkyExp1Quest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, .906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
		EnemyPos = CFrame["new"](-7678.4897460938, 5566.4038085938, -497.21560668945)
	elseif Old_World and (L_1_[22]["Value"] >= 525 and L_1_[22]["Value"] <= 549) then
		Enemy = "Royal Squad"
		NameEnemy = "Royal Squad"
		QuestName = "SkyExp2Quest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-7624.2524414062, 5658.1333007812, -1467.3542480469)
	elseif Old_World and (L_1_[22]["Value"] >= 550 and L_1_[22]["Value"] <= 624) then
		Enemy = "Royal Soldier"
		NameEnemy = "Royal Soldier"
		QuestName = "SkyExp2Quest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		EnemyPos = CFrame["new"](-7836.7534179688, 5645.6640625, -1790.6236572266)
		if Old_World and (L_1_[22]["Value"] >= 575 and L_1_[22]["Value"] <= 624) then
			Name_Boss = "Thunder God"
			QuestName_Boss = "SkyExp2Quest"
			QuestNumber_Boss = 3
		end
	elseif Old_World and (L_1_[22]["Value"] >= 625 and L_1_[22]["Value"] <= 649) then
		Enemy = "Galley Pirate"
		NameEnemy = "Galley Pirate"
		QuestName = "FountainQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
		EnemyPos = CFrame["new"](5551.0219726562, 78.901351928711, 3930.4128417969)
	elseif Old_World and (L_1_[22]["Value"] >= 650 and L_1_[22]["Value"] <= 99999) then
		Enemy = "Galley Captain"
		NameEnemy = "Galley Captain"
		QuestName = "FountainQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381)
		EnemyPos = CFrame["new"](5441.9516601562, 42.502059936523, 4950.09375)
		if Old_World and (L_1_[22]["Value"] >= 675 and L_1_[22]["Value"] <= 99999) then
			Name_Boss = "Cyborg"
			QuestName_Boss = "FountainQuest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 700 and L_1_[22]["Value"] <= 724) then
		Enemy = "Raider"
		NameEnemy = "Raider"
		QuestName = "Area1Quest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
		EnemyPos = CFrame["new"](-728.32672119141, 52.779319763184, 2345.7705078125)
	elseif New_World and (L_1_[22]["Value"] >= 725 and L_1_[22]["Value"] <= 774) then
		Enemy = "Mercenary"
		NameEnemy = "Mercenary"
		QuestName = "Area1Quest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985)
		EnemyPos = CFrame["new"](-1004.3244018555, 80.158866882324, 1424.6193847656)
		if New_World and (L_1_[22]["Value"] >= 750 and L_1_[22]["Value"] <= 774) then
			Name_Boss = "Diamond"
			QuestName_Boss = "Area1Quest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 775 and L_1_[22]["Value"] <= 799) then
		Enemy = "Swan Pirate"
		NameEnemy = "Swan Pirate"
		QuestName = "Area2Quest"
		QuestNumber = 1
		QuestPos = CFrame["new"](638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906)
		EnemyPos = CFrame["new"](1068.6643066406, 137.61428833008, 1322.1060791016)
	elseif New_World and (L_1_[22]["Value"] >= 800 and L_1_[22]["Value"] <= 874) then
		Enemy = "Factory Staff"
		NameEnemy = "Factory Staff"
		QuestName = "Area2Quest"
		QuestNumber = 2
		QuestPos = CFrame["new"](632.698608, 73.1055908, 918.666321, -0.0319722369, 8.960749e-10, -0.999488771, 1.3632653e-10, 1, 8.9217234e-10, .999488771, -1.0773209e-10, -0.0319722369)
		EnemyPos = CFrame["new"](73.078674316406, 81.863441467285, -27.470672607422)
		if New_World and (L_1_[22]["Value"] >= 850 and L_1_[22]["Value"] <= 874) then
			Name_Boss = "Jeremy"
			QuestName_Boss = "Area2Quest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 875 and L_1_[22]["Value"] <= 899) then
		Enemy = "Marine Lieutenant"
		NameEnemy = "Marine Lieutenant"
		QuestName = "MarineQuest3"
		QuestNumber = 1
		QuestPos = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
		EnemyPos = CFrame["new"](-2821.3723144531, 75.897277832031, -3070.0891113281)
	elseif New_World and (L_1_[22]["Value"] >= 900 and L_1_[22]["Value"] <= 949) then
		Enemy = "Marine Captain"
		NameEnemy = "Marine Captain"
		QuestName = "MarineQuest3"
		QuestNumber = 2
		QuestPos = CFrame["new"](-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268)
		EnemyPos = CFrame["new"](-1861.2310791016, 80.176582336426, -3254.6975097656)
		if New_World and (L_1_[22]["Value"] >= 925 and L_1_[22]["Value"] <= 949) then
			Name_Boss = "Fajita"
			QuestName_Boss = "MarineQuest3"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 950 and L_1_[22]["Value"] <= 974) then
		Enemy = "Zombie"
		NameEnemy = "Zombie"
		QuestName = "ZombieQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
		EnemyPos = CFrame["new"](-5657.7768554688, 78.969734191895, -928.68701171875)
	elseif New_World and (L_1_[22]["Value"] >= 975 and L_1_[22]["Value"] <= 999) then
		Enemy = "Vampire"
		NameEnemy = "Vampire"
		QuestName = "ZombieQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146)
		EnemyPos = CFrame["new"](-6037.66796875, 32.184638977051, -1340.6597900391)
	elseif New_World and (L_1_[22]["Value"] >= 1000 and L_1_[22]["Value"] <= 1049) then
		Enemy = "Snow Trooper"
		NameEnemy = "Snow Trooper"
		QuestName = "SnowMountainQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
		EnemyPos = CFrame["new"](549.14733886719, 427.38705444336, -5563.6987304688)
	elseif New_World and (L_1_[22]["Value"] >= 1050 and L_1_[22]["Value"] <= 1099) then
		Enemy = "Winter Warrior"
		NameEnemy = "Winter Warrior"
		QuestName = "SnowMountainQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
		EnemyPos = CFrame["new"](1142.7451171875, 475.63980102539, -5199.4165039062)
	elseif New_World and (L_1_[22]["Value"] >= 1100 and L_1_[22]["Value"] <= 1124) then
		Enemy = "Lab Subordinate"
		NameEnemy = "Lab Subordinate"
		QuestName = "IceSideQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
		EnemyPos = CFrame["new"](-5707.4716796875, 15.951709747314, -4513.3920898438)
	elseif New_World and (L_1_[22]["Value"] >= 1125 and L_1_[22]["Value"] <= 1174) then
		Enemy = "Horned Warrior"
		NameEnemy = "Horned Warrior"
		QuestName = "IceSideQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578)
		EnemyPos = CFrame["new"](-6341.3666992188, 15.951770782471, -5723.162109375)
		if New_World and (L_1_[22]["Value"] >= 1150 and L_1_[22]["Value"] <= 1174) then
			Name_Boss = "Smoke Admiral"
			QuestName_Boss = "IceSideQuest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 1175 and L_1_[22]["Value"] <= 1199) then
		Enemy = "Magma Ninja"
		NameEnemy = "Magma Ninja"
		QuestName = "FireSideQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		EnemyPos = CFrame["new"](-5449.6728515625, 76.658744812012, -5808.2006835938)
	elseif New_World and (L_1_[22]["Value"] >= 1200 and L_1_[22]["Value"] <= 1249) then
		Enemy = "Lava Pirate"
		NameEnemy = "Lava Pirate"
		QuestName = "FireSideQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
		EnemyPos = CFrame["new"](-5213.3315429688, 49.737880706787, -4701.451171875)
	elseif New_World and (L_1_[22]["Value"] >= 1250 and L_1_[22]["Value"] <= 1274) then
		Enemy = "Ship Deckhand"
		NameEnemy = "Ship Deckhand"
		QuestName = "ShipQuest1"
		QuestNumber = 1
		QuestPos = CFrame["new"](1037.80127, 125.092171, 32911.6016)
		EnemyPos = CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375)
		if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
			((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
		end
	elseif New_World and (L_1_[22]["Value"] >= 1275 and L_1_[22]["Value"] <= 1299) then
		Enemy = "Ship Engineer"
		NameEnemy = "Ship Engineer"
		QuestName = "ShipQuest1"
		QuestNumber = 2
		QuestPos = CFrame["new"](1037.80127, 125.092171, 32911.6016)
		EnemyPos = CFrame["new"](919.47863769531, 43.544013977051, 32779.96875)
		if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
			((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
		end
	elseif New_World and (L_1_[22]["Value"] >= 1300 and L_1_[22]["Value"] <= 1324) then
		Enemy = "Ship Steward"
		NameEnemy = "Ship Steward"
		QuestName = "ShipQuest2"
		QuestNumber = 1
		QuestPos = CFrame["new"](968.80957, 125.092171, 33244.125)
		EnemyPos = CFrame["new"](919.43853759766, 129.55599975586, 33436.03515625)
		if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
			((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
		end
	elseif New_World and (L_1_[22]["Value"] >= 1325 and L_1_[22]["Value"] <= 1349) then
		Enemy = "Ship Officer"
		NameEnemy = "Ship Officer"
		QuestName = "ShipQuest2"
		QuestNumber = 2
		QuestPos = CFrame["new"](968.80957, 125.092171, 33244.125)
		EnemyPos = CFrame["new"](1036.0179443359, 181.4390411377, 33315.7265625)
		if ((CFrame["new"](1212.0111083984, 150.79205322266, 33059.24609375))["Position"] - L_1_[5]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 5000 then
			((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", Vector3["new"](923.21301269531, 126.9759979248, 32852.83203125))
		end
	elseif New_World and (L_1_[22]["Value"] >= 1350 and L_1_[22]["Value"] <= 1374) then
		Enemy = "Arctic Warrior"
		NameEnemy = "Arctic Warrior"
		QuestName = "FrostQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
		EnemyPos = CFrame["new"](5966.24609375, 62.970020294189, -6179.3828125)
	elseif New_World and (L_1_[22]["Value"] >= 1375 and L_1_[22]["Value"] <= 1424) then
		Enemy = "Snow Lurker"
		NameEnemy = "Snow Lurker"
		QuestName = "FrostQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909)
		EnemyPos = CFrame["new"](5407.0737304688, 69.194374084473, -6880.8803710938)
		if New_World and (L_1_[22]["Value"] >= 1400 and L_1_[22]["Value"] <= 1424) then
			Name_Boss = "Awakened Ice Admiral"
			QuestName_Boss = "FrostQuest"
			QuestNumber_Boss = 3
		end
	elseif New_World and (L_1_[22]["Value"] >= 1425 and L_1_[22]["Value"] <= 1449) then
		Enemy = "Sea Soldier"
		NameEnemy = "Sea Soldier"
		QuestName = "ForgottenQuest"
		QuestNumber = 1
		QuestPos = CFrame["new"](-3055, 240, -10145)
		EnemyPos = CFrame["new"](-3433, 26, -9784)
	elseif New_World and (L_1_[22]["Value"] >= 1450 and L_1_[22]["Value"] <= 999999) then
		Enemy = "Water Fighter"
		NameEnemy = "Water Fighter"
		QuestName = "ForgottenQuest"
		QuestNumber = 2
		QuestPos = CFrame["new"](-3054.53, 239.96, -10144.42)
		EnemyPos = CFrame["new"](-3360.23, 284.21, -10533.07)
		if New_World and (L_1_[22]["Value"] >= 1475 and L_1_[22]["Value"] <= 1499) then
			Name_Boss = "Tide Keeper"
			QuestName_Boss = "ForgottenQuest"
			QuestNumber_Boss = 3
		end
	elseif Three_World then
		local lv = L_1_[22]["Value"]
		if lv >= 1500 and lv <= 1524 then
			Enemy = "Pirate Millionaire"
			NameEnemy = "Pirate Millionaire"
			QuestName = "PiratePortQuest"
			QuestNumber = 1
			QuestPos = CFrame["new"](-712.8272705078125, 98.5770492553711, 5711.9541015625)
			EnemyPos = CFrame["new"](-712.8272705078125, 98.5770492553711, 5711.9541015625)
		elseif lv >= 1525 and lv <= 1574 then
			Enemy = "Pistol Billionaire"
			NameEnemy = "Pistol Billionaire"
			QuestName = "PiratePortQuest"
			QuestNumber = 2
			QuestPos = CFrame["new"](-723.4331665039062, 147.42906188964844, 5931.9931640625)
			EnemyPos = CFrame["new"](-723.4331665039062, 147.42906188964844, 5931.9931640625)
		elseif lv >= 1575 and lv <= 1599 then
			Enemy = "Dragon Crew Warrior"
			NameEnemy = "Dragon Crew Warrior"
			QuestName = "AmazonQuest"
			QuestNumber = 1
			QuestPos = CFrame["new"](6779.03271484375, 111.16865539550781, -801.2130737304688)
			EnemyPos = CFrame["new"](6779.03271484375, 111.16865539550781, -801.2130737304688)
		elseif lv >= 1600 and lv <= 1624 then
			Enemy = "Dragon Crew Archer"
			NameEnemy = "Dragon Crew Archer"
			QuestName = "AmazonQuest"
			QuestNumber = 2
			QuestPos = CFrame["new"](6955.8974609375, 546.6658935546875, 309.0401306152344)
			EnemyPos = CFrame["new"](6955.8974609375, 546.6658935546875, 309.0401306152344)
		elseif lv >= 1625 and lv <= 1649 then
			Enemy = "Hydra Enforcer"
			NameEnemy = "Hydra Enforcer"
			QuestName = "VenomCrewQuest"
			QuestNumber = 1
			QuestPos = CFrame["new"](4620.61572265625, 1002.2954711914062, 399.0868835449219)
			EnemyPos = CFrame["new"](4620.61572265625, 1002.2954711914062, 399.0868835449219)
		elseif lv >= 1650 and lv <= 1699 then
			Enemy = "Venomous Assailant"
			NameEnemy = "Venomous Assailant"
			QuestName = "VenomCrewQuest"
			QuestNumber = 2
			QuestPos = CFrame["new"](4697.5918, 1100.65137, 946.401978)
			EnemyPos = CFrame["new"](4697.5918, 1100.65137, 946.401978)
		elseif lv >= 1700 and lv <= 1724 then
			Enemy = "Marine Commodore"
			NameEnemy = "Marine Commodore"
			QuestName = "MarineTreeIsland"
			QuestNumber = 1
			QuestPos = CFrame["new"](2180.54126, 27.8156815, -6741.5498)
			EnemyPos = CFrame["new"](2286.0078125, 73.13391876220703, -7159.80908203125)
		elseif lv >= 1725 and lv <= 1774 then
			Enemy = "Marine Rear Admiral"
			NameEnemy = "Marine Rear Admiral"
			QuestName = "MarineTreeIsland"
			QuestNumber = 2
			QuestPos = CFrame["new"](2179.98828125, 28.731239318848, -6740.0551757813)
			EnemyPos = CFrame["new"](3656.773681640625, 160.52406311035156, -7001.5986328125)
		elseif lv >= 1775 and lv <= 1799 then
			Enemy = "Fishman Raider"
			NameEnemy = "Fishman Raider"
			QuestName = "DeepForestIsland3"
			QuestNumber = 1
			QuestPos = CFrame["new"](-10581.6563, 330.872955, -8761.18652)
			EnemyPos = CFrame["new"](-10407.5263671875, 331.76263427734375, -8368.5166015625)
		elseif lv >= 1800 and lv <= 1824 then
			Enemy = "Fishman Captain"
			NameEnemy = "Fishman Captain"
			QuestName = "DeepForestIsland3"
			QuestNumber = 2
			QuestPos = CFrame["new"](-10581.6563, 330.872955, -8761.18652)
			EnemyPos = CFrame["new"](-10994.701171875, 352.38140869140625, -9002.1103515625)
		elseif lv >= 1825 and lv <= 1849 then
			Enemy = "Forest Pirate"
			NameEnemy = "Forest Pirate"
			QuestName = "DeepForestIsland"
			QuestNumber = 1
			QuestPos = CFrame["new"](-13234.04, 331.488495, -7625.40137)
			EnemyPos = CFrame["new"](-13274.478515625, 332.3781433105469, -7769.58056640625)
		elseif lv >= 1850 and lv <= 1899 then
			Enemy = "Mythological Pirate"
			NameEnemy = "Mythological Pirate"
			QuestName = "DeepForestIsland"
			QuestNumber = 2
			QuestPos = CFrame["new"](-13234.04, 331.488495, -7625.40137)
			EnemyPos = CFrame["new"](-13680.607421875, 501.08154296875, -6991.189453125)
		elseif lv >= 1900 and lv <= 1924 then
			Enemy = "Jungle Pirate"
			NameEnemy = "Jungle Pirate"
			QuestName = "DeepForestIsland2"
			QuestNumber = 1
			QuestPos = CFrame["new"](-12680.3818, 389.971039, -9902.01953)
			EnemyPos = CFrame["new"](-12256.16015625, 331.73828125, -10485.8369140625)
		elseif lv >= 1925 and lv <= 1974 then
			Enemy = "Musketeer Pirate"
			NameEnemy = "Musketeer Pirate"
			QuestName = "DeepForestIsland2"
			QuestNumber = 2
			QuestPos = CFrame["new"](-12680.3818, 389.971039, -9902.01953)
			EnemyPos = CFrame["new"](-13457.904296875, 391.545654296875, -9859.177734375)
		elseif lv >= 1975 and lv <= 1999 then
			Enemy = "Reborn Skeleton"
			NameEnemy = "Reborn Skeleton"
			QuestName = "HauntedQuest1"
			QuestNumber = 1
			QuestPos = CFrame["new"](-9479.2168, 141.215088, 5566.09277)
			EnemyPos = CFrame["new"](-8763.7236328125, 165.72299194335938, 6159.86181640625)
		elseif lv >= 2000 and lv <= 2024 then
			Enemy = "Living Zombie"
			NameEnemy = "Living Zombie"
			QuestName = "HauntedQuest1"
			QuestNumber = 2
			QuestPos = CFrame["new"](-9479.2168, 141.215088, 5566.09277)
			EnemyPos = CFrame["new"](-10144.1318359375, 138.62667846679688, 5838.0888671875)
		elseif lv >= 2025 and lv <= 2049 then
			Enemy = "Demonic Soul"
			NameEnemy = "Demonic Soul"
			QuestName = "HauntedQuest2"
			QuestNumber = 1
			QuestPos = CFrame["new"](-9516.99316, 172.017181, 6078.46533)
			EnemyPos = CFrame["new"](-9505.8720703125, 172.10482788085938, 6158.9931640625)
		elseif lv >= 2050 and lv <= 2074 then
			Enemy = "Posessed Mummy"
			NameEnemy = "Posessed Mummy"
			QuestName = "HauntedQuest2"
			QuestNumber = 2
			QuestPos = CFrame["new"](-9516.99316, 172.017181, 6078.46533)
			EnemyPos = CFrame["new"](-9582.0224609375, 6.251527309417725, 6205.478515625)
		elseif lv >= 2075 and lv <= 2099 then
			Enemy = "Peanut Scout"
			NameEnemy = "Peanut Scout"
			QuestName = "NutsIslandQuest"
			QuestNumber = 1
			QuestPos = CFrame["new"](-2104.3908691406, 38.104167938232, -10194.21875)
			EnemyPos = CFrame["new"](-2143.241943359375, 47.72198486328125, -10029.9951171875)
		elseif lv >= 2100 and lv <= 2124 then
			Enemy = "Peanut President"
			NameEnemy = "Peanut President"
			QuestName = "NutsIslandQuest"
			QuestNumber = 2
			QuestPos = CFrame["new"](-2104.3908691406, 38.104167938232, -10194.21875)
			EnemyPos = CFrame["new"](-1859.35400390625, 38.10316848754883, -10422.4296875)
		elseif lv >= 2125 and lv <= 2149 then
			Enemy = "Ice Cream Chef"
			NameEnemy = "Ice Cream Chef"
			QuestName = "IceCreamIslandQuest"
			QuestNumber = 1
			QuestPos = CFrame["new"](-820.64825439453, 65.819526672363, -10965.795898438)
			EnemyPos = CFrame["new"](-872.24658203125, 65.81957244873047, -10919.95703125)
		elseif lv >= 2150 and lv <= 2199 then
			Enemy = "Ice Cream Commander"
			NameEnemy = "Ice Cream Commander"
			QuestName = "IceCreamIslandQuest"
			QuestNumber = 2
			QuestPos = CFrame["new"](-820.64825439453, 65.819526672363, -10965.795898438)
			EnemyPos = CFrame["new"](-558.06103515625, 112.04895782470703, -11290.7744140625)
		elseif lv >= 2200 and lv <= 2224 then
			Enemy = "Cookie Crafter"
			NameEnemy = "Cookie Crafter"
			QuestName = "CakeQuest1"
			QuestNumber = 1
			QuestPos = CFrame["new"](-2021.32007, 37.7982254, -12028.7295)
			EnemyPos = CFrame["new"](-2374.13671875, 37.79826354980469, -12125.30859375)
		elseif lv >= 2225 and lv <= 2249 then
			Enemy = "Cake Guard"
			NameEnemy = "Cake Guard"
			QuestName = "CakeQuest1"
			QuestNumber = 2
			QuestPos = CFrame["new"](-2021.32007, 37.7982254, -12028.7295)
			EnemyPos = CFrame["new"](-1598.3070068359375, 43.773197174072266, -12244.5810546875)
		elseif lv >= 2250 and lv <= 2274 then
			Enemy = "Baking Staff"
			NameEnemy = "Baking Staff"
			QuestName = "CakeQuest2"
			QuestNumber = 1
			QuestPos = CFrame["new"](-1927.91602, 37.7981339, -12842.5391)
			EnemyPos = CFrame["new"](-1887.8099365234375, 77.6185073852539, -12998.3505859375)
		elseif lv >= 2275 and lv <= 2299 then
			Enemy = "Head Baker"
			NameEnemy = "Head Baker"
			QuestName = "CakeQuest2"
			QuestNumber = 2
			QuestPos = CFrame["new"](-1927.91602, 37.7981339, -12842.5391)
			EnemyPos = CFrame["new"](-2216.188232421875, 82.884521484375, -12869.2939453125)
		elseif lv >= 2300 and lv <= 2324 then
			Enemy = "Cocoa Warrior"
			NameEnemy = "Cocoa Warrior"
			QuestName = "ChocQuest1"
			QuestNumber = 1
			QuestPos = CFrame["new"](233.22836303710938, 29.876001358032227, -12201.2333984375)
			EnemyPos = CFrame["new"](-21.55328369140625, 80.57499694824219, -12352.3876953125)
		elseif lv >= 2325 and lv <= 2349 then
			Enemy = "Chocolate Bar Battler"
			NameEnemy = "Chocolate Bar Battler"
			QuestName = "ChocQuest1"
			QuestNumber = 2
			QuestPos = CFrame["new"](233.22836303710938, 29.876001358032227, -12201.2333984375)
			EnemyPos = CFrame["new"](582.590576171875, 77.18809509277344, -12463.162109375)
		elseif lv >= 2350 and lv <= 2374 then
			Enemy = "Sweet Thief"
			NameEnemy = "Sweet Thief"
			QuestName = "ChocQuest2"
			QuestNumber = 1
			QuestPos = CFrame["new"](150.5066375732422, 30.693693161010742, -12774.5029296875)
			EnemyPos = CFrame["new"](165.1884765625, 76.05885314941406, -12600.8369140625)
		elseif lv >= 2375 and lv <= 2399 then
			Enemy = "Candy Rebel"
			NameEnemy = "Candy Rebel"
			QuestName = "ChocQuest2"
			QuestNumber = 2
			QuestPos = CFrame["new"](150.5066375732422, 30.693693161010742, -12774.5029296875)
			EnemyPos = CFrame["new"](134.86563110351562, 77.2476806640625, -12876.5478515625)
		elseif lv >= 2400 and lv <= 2449 then
			Enemy = "Candy Pirate"
			NameEnemy = "Candy Pirate"
			QuestName = "CandyQuest1"
			QuestNumber = 1
			QuestPos = CFrame["new"](-1150.0400390625, 20.378934860229492, -14446.3349609375)
			EnemyPos = CFrame["new"](-1310.5003662109375, 26.016523361206055, -14562.404296875)
		elseif lv >= 2450 and lv <= 2474 then
			Enemy = "Isle Outlaw"
			NameEnemy = "Isle Outlaw"
			QuestName = "TikiQuest1"
			QuestNumber = 1
			QuestPos = CFrame["new"](-16548.8164, 55.6059914, -172.8125)
			EnemyPos = CFrame["new"](-16479.900390625, 226.6117401123047, -300.3114318847656)
		elseif lv >= 2475 and lv <= 2499 then
			Enemy = "Island Boy"
			NameEnemy = "Island Boy"
			QuestName = "TikiQuest1"
			QuestNumber = 2
			QuestPos = CFrame["new"](-16548.8164, 55.6059914, -172.8125)
			EnemyPos = CFrame["new"](-16849.396484375, 192.86505126953125, -150.7853240966797)
		elseif lv >= 2500 and lv <= 2524 then
			Enemy = "Sun-kissed Warrior"
			NameEnemy = "Sun-kissed Warrior"
			QuestName = "TikiQuest2"
			QuestNumber = 1
			QuestPos = CFrame["new"](-16538, 55, 1049)
			EnemyPos = CFrame["new"](-16347, 64, 984)
		elseif lv >= 2525 and lv <= 2550 then
			Enemy = "Isle Champion"
			NameEnemy = "Isle Champion"
			QuestName = "TikiQuest2"
			QuestNumber = 2
			QuestPos = CFrame["new"](-16541.0215, 57.3082275, 1051.46118)
			EnemyPos = CFrame["new"](-16602.1015625, 130.38734436035156, 1087.24560546875)
		elseif lv >= 2551 and lv <= 2574 then
			Enemy = "Serpent Hunter"
			NameEnemy = "Serpent Hunter"
			QuestName = "TikiQuest3"
			QuestNumber = 1
			QuestPos = CFrame["new"](-16679.4785, 176.7473, 1474.3995)
			EnemyPos = CFrame["new"](-16679.4785, 176.7473, 1474.3995)
		elseif lv >= 2575 and lv <= 2599 then
			Enemy = "Skull Slayer"
			NameEnemy = "Skull Slayer"
			QuestName = "TikiQuest3"
			QuestNumber = 2
			QuestPos = CFrame["new"](-16759.5898, 71.2837, 1595.3399)
			EnemyPos = CFrame["new"](-16759.5898, 71.2837, 1595.3399)
		elseif lv >= 2600 and lv <= 2624 then
			Enemy = "Reef Bandit"
			NameEnemy = "Reef Bandit"
			QuestName = "SubmergedQuest1"
			QuestNumber = 1
			QuestPos = CFrame["new"](10882.264, -2086.322, 10034.226)
			EnemyPos = CFrame["new"](10736.6191, -2087.8439, 9338.4882)
		elseif lv >= 2625 and lv <= 2649 then
			Enemy = "Coral Pirate"
			NameEnemy = "Coral Pirate"
			QuestName = "SubmergedQuest1"
			QuestNumber = 2
			QuestPos = CFrame["new"](10882.264, -2086.322, 10034.226)
			EnemyPos = CFrame["new"](10965.1025, -2158.8842, 9177.2597)
		elseif lv >= 2650 and lv <= 2674 then
			Enemy = "Sea Chanter"
			NameEnemy = "Sea Chanter"
			QuestName = "SubmergedQuest2"
			QuestNumber = 1
			QuestPos = CFrame["new"](10882.264, -2086.322, 10034.226)
			EnemyPos = CFrame["new"](10621.0342, -2087.8440, 10102.0332)
		elseif lv >= 2675 and lv <= 2699 then
			Enemy = "Ocean Prophet"
			NameEnemy = "Ocean Prophet"
			QuestName = "SubmergedQuest2"
			QuestNumber = 2
			QuestPos = CFrame["new"](10882.264, -2086.322, 10034.226)
			EnemyPos = CFrame["new"](11056.1445, -2001.6717, 10117.4493)
		elseif lv >= 2700 and lv <= 2724 then
			Enemy = "High Disciple"
			NameEnemy = "High Disciple"
			QuestName = "SubmergedQuest3"
			QuestNumber = 1
			QuestPos = CFrame["new"](9636.52441, -1992.19507, 9609.52832)
			EnemyPos = CFrame["new"](9828.087890625, -1940.908935546875, 9693.0634765625)
		elseif lv >= 2725 and lv <= 2800 then
			Enemy = "Grand Devotee"
			NameEnemy = "Grand Devotee"
			QuestName = "SubmergedQuest3"
			QuestNumber = 2
			QuestPos = CFrame["new"](9636.52441, -1992.19507, 9609.52832)
			EnemyPos = CFrame["new"](9557.5849609375, -1928.0404052734375, 9859.1826171875)
		else
			Enemy = "Grand Devotee"
			NameEnemy = "Grand Devotee"
			QuestName = "SubmergedQuest3"
			QuestNumber = 2
			QuestPos = CFrame["new"](9636.52441, -1992.19507, 9609.52832)
			EnemyPos = CFrame["new"](9557.5849609375, -1928.0404052734375, 9859.1826171875)
		end
	end
	SelectMonster = Enemy
end
-- ============================================================
-- HỆ THỐNG TWEEN MỚI (CHỈ TWEEN, KHÔNG BTP)
-- SỬ DỤNG BLOCK + HEARTBEAT ĐỂ MƯỢT HƠN
-- GIỮ NGUYÊN LOGIC TỐC ĐỘ THEO KHOẢNG CÁCH CỦA TIRO HUB
-- ============================================================

-- Biến toàn cục
getgenv().TweenSpeed = 300          -- tốc độ mặc định
getgenv()._tween = nil
getgenv().StopTween = false

-- Hàm tạo Block ẩn (dùng làm mốc di chuyển)
local function GetTweenBlock()
    local block = workspace:FindFirstChild("_TweenBlock")
    if not block then
        block = Instance.new("Part")
        block.Name = "_TweenBlock"
        block.Anchored = true
        block.CanCollide = false
        block.CanTouch = false
        block.Transparency = 1
        block.Size = Vector3.new(1, 1, 1)
        block.Parent = workspace
    end
    return block
end

-- Hàm dừng tween (gọi khi cần)
function StopTween()
    pcall(function()
        if getgenv()._tween then
            getgenv()._tween:Cancel()
            getgenv()._tween = nil
        end
        local block = workspace:FindFirstChild("_TweenBlock")
        if block then block:Destroy() end
        local player = game:GetService("Players").LocalPlayer
        local char = player.Character
        if char then
            local root = char:FindFirstChild("HumanoidRootPart")
            if root then
                root.Anchored = false
                local bc = root:FindFirstChild("BodyClip")
                if bc then bc:Destroy() end
            end
        end
        getgenv().StopTween = false
        getgenv().Clip = false
    end)
end

-- Hàm topos (tween bằng block + heartbeat)
function topos(targetCFrame, speed)
    speed = speed or getgenv().TweenSpeed or 300
    local player = game:GetService("Players").LocalPlayer
    local char = player.Character
    if not char then return false end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return false end

    local block = GetTweenBlock()
    block.CFrame = root.CFrame

    local distance = (root.Position - targetCFrame.Position).Magnitude
    if distance < 2 then return true end
    local duration = math.max(0.1, distance / speed)

    local tweenService = game:GetService("TweenService")
    local tween = tweenService:Create(block, TweenInfo.new(duration, Enum.EasingStyle.Linear), {CFrame = targetCFrame})

    getgenv()._tween = tween
    local stopUpdate = false
    local connection

    connection = game:GetService("RunService").Heartbeat:Connect(function()
        if stopUpdate then return end
        local currentChar = player.Character
        if currentChar then
            local currentRoot = currentChar:FindFirstChild("HumanoidRootPart")
            if currentRoot and block.Parent then
                currentRoot.CFrame = block.CFrame
            end
        end
    end)

    tween:Play()
    local completed = false
    tween.Completed:Connect(function() completed = true end)

    while not completed and getgenv()._tween == tween do
        task.wait(0.1)
    end

    stopUpdate = true
    if connection then connection:Disconnect() end
    if block and block.Parent then block:Destroy() end
    getgenv()._tween = nil

    local finalChar = player.Character
    if finalChar then
        local finalRoot = finalChar:FindFirstChild("HumanoidRootPart")
        if finalRoot then finalRoot.CFrame = targetCFrame end
    end
    return true
end

-- ============================================================
-- GHI ĐÈ CÁC HÀM CŨ (GIỮ TÊN, THAY NỘI DUNG)
-- ============================================================

-- Hàm TPZ – giữ nguyên logic tốc độ cũ
function TPZ(targetCFrame)
    local player = game:GetService("Players").LocalPlayer
    local char = player.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    local distance = (targetCFrame.Position - root.Position).Magnitude
    local speed = 300
    if distance < 100 then
        speed = 50
    elseif distance < 400 then
        speed = 400
    elseif distance < 1000 then
        speed = 300
    elseif distance < 1500 then
        speed = 260
    else
        speed = 300
    end

    topos(targetCFrame, speed)
end

-- Hàm L_1_[31] – giữ nguyên logic requestEntrance và điều chỉnh speed
L_1_[31] = function(targetCFrame, speedParam, rangeParam)
    local player = game:GetService("Players").LocalPlayer
    local char = player.Character
    if not char then return end
    local root = char:FindFirstChild("HumanoidRootPart")
    local humanoid = char:FindFirstChild("Humanoid")
    if not root or not humanoid then return end

    -- Tính tốc độ ban đầu
    local speed = 300
    if speedParam == 1.6 then
        speed = 350
    end
    local range = rangeParam or 130

    local distance = (targetCFrame.Position - root.Position).Magnitude

    -- Xử lý requestEntrance khi khoảng cách quá xa (giữ nguyên code cũ)
    if distance > 3000 and humanoid.Health > 0 then
        local entranceList = {
            {Vector3.new(61163.85, 11.67, 1819.78), "Old_World"},
            {Vector3.new(-4607.82, 872.54, -1667.55), "Old_World"},
            {Vector3.new(-7894.61, 5547.14, -380.29), "Old_World"},
            {Vector3.new(923.21, 126.97, 32852.83), "New_World"},
            {Vector3.new(-2953.31, 41.01, 2099.17), "Old_World"}
        }
        for _, item in pairs(entranceList) do
            if _G[item[2]] and (item[1] - targetCFrame.Position).Magnitude <= 2300 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", item[1])
                break
            end
        end
    end

    -- Cập nhật thời gian (giống cũ)
    L_1_[13] = tick()
    if L_1_[32] then L_1_[32]() end  -- hủy tween cũ nếu có

    -- Điều chỉnh tốc độ nếu khoảng cách < range (giống cũ)
    if distance < range then
        speed = 350
    end

    -- Gọi topos với tốc độ đã tính
    topos(targetCFrame, speed)
end

-- Gán alias để tương thích (nếu có)
L_1_[23] = nil  -- xóa tween cũ

print("[✅] Hệ thống Tween đã được nâng cấp (chỉ tween, không BTP)")
L_1_[13] = tick()
L_1_[35] = (game:GetService("Players"))["LocalPlayer"]
L_1_[32] = function()
	if L_1_[47] then
		L_1_[47]:Cancel()
		L_1_[47] = nil
	end
end
L_1_[14] = function()
	if God_Human_C_M then
		local L_43_ = {}
		L_43_[1] = (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("getInventory")
		for L_44_forvar0, L_45_forvar1 in pairs(L_43_[1]) do
			local L_46_ = {}
			L_46_[1], L_46_[3] = L_44_forvar0, L_45_forvar1
			if L_46_[3]["Type"] == "Sword" then
				if L_46_[3]["Name"] == "Tushita" and L_46_[3]["Mastery"] >= 400 then
					Tushita_M = true
				elseif L_46_[3]["Name"] == "Yama" and L_46_[3]["Mastery"] >= 400 then
					Yama_M = true
				end
			end
		end
		if not Tushita_M then
			if not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Tushita") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Tushita") then
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LoadItem", "Tushita")
			end
		elseif not Yama_M then
			if not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Yama") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Yama") then
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LoadItem", "Yama")
			end
		end
		for L_47_forvar0, L_48_forvar1 in pairs(L_1_[35]["Backpack"]:GetChildren()) do
			local L_49_ = {}
			L_49_[2], L_49_[1] = L_47_forvar0, L_48_forvar1
			if L_49_[1]:IsA("Tool") and tostring(L_49_[1]["ToolTip"]) == "Sword" then
				(L_1_[35]["Character"]:WaitForChild("Humanoid")):EquipTool(L_49_[1])
			end
		end
	else
		for L_50_forvar0, L_51_forvar1 in pairs(L_1_[35]["Backpack"]:GetChildren()) do
			local L_52_ = {}
			L_52_[2], L_52_[1] = L_50_forvar0, L_51_forvar1
			if L_52_[1]:IsA("Tool") and tostring(L_52_[1]["ToolTip"]) == "Melee" then
				(L_1_[35]["Character"]:WaitForChild("Humanoid")):EquipTool(L_52_[1])
			end
		end
	end
end
function TPBoat(L_53_arg0, L_54_arg1, L_55_arg2, L_56_arg3)
	local L_57_ = {}
	L_57_[3], L_57_[5], L_57_[4], L_57_[6] = L_53_arg0, L_54_arg1, L_55_arg2, L_56_arg3
	if L_57_[6] == nil then
		L_57_[6] = false
	end
	L_57_[1] = (L_57_[3]["Position"] - L_57_[5]["Position"])["Magnitude"]
	Speed = L_57_[4]
	TweenP = (game:GetService("TweenService")):Create(L_57_[5], TweenInfo["new"](L_57_[1] / Speed, Enum["EasingStyle"]["Linear"]), {
		["CFrame"] = L_57_[3]
	})
	if L_57_[6] == true then
		TweenP:Cancel()
	else
		TweenP:Play()
	end
end

-- ===== METATABLE =====
setmetatable(L_1_[45], {
	["__index"] = function(L_58_arg0, L_59_arg1)
		local L_60_ = {}
		L_60_[2], L_60_[3] = L_58_arg0, L_59_arg1
		if L_60_[3] == "wt" then
			return function(L_61_arg0)
				local L_62_ = {}
				L_62_[2] = L_61_arg0
				return task["wait"](L_62_[2])
			end
		elseif L_60_[3] == "p" then
			return function(...)
				return pcall(...)
			end
		elseif L_60_[3] == "sf" then
			return function(L_63_arg0, L_64_arg1)
				local L_65_ = {}
				L_65_[2], L_65_[3] = L_63_arg0, L_64_arg1
				return string["find"](L_65_[2], tostring(L_65_[3]))
			end
		elseif L_60_[3] == "cf" then
			return function(...)
				L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer(...)
			end
		elseif L_60_[3] == "ffc" then
			return function(L_66_arg0, L_67_arg1)
				local L_68_ = {}
				L_68_[3], L_68_[2] = L_66_arg0, L_67_arg1
				return L_68_[3] and L_68_[3]:FindFirstChild(L_68_[2])
			end
		elseif L_60_[3] == "Equip" then
			return function(L_69_arg0)
				local L_70_ = {}
				L_70_[2] = L_69_arg0
				if not L_70_[2] or type(L_70_[2]) ~= "string" then
					return
				end
				for L_71_forvar0, L_72_forvar1 in pairs(L_1_[35]["Backpack"]:GetChildren()) do
					local L_73_ = {}
					L_73_[3], L_73_[2] = L_71_forvar0, L_72_forvar1
					if L_73_[2]:IsA("Tool") and L_73_[2]["Name"] == L_70_[2] then
						(L_1_[35]["Character"]:WaitForChild("Humanoid")):EquipTool(L_73_[2])
					end
				end
			end
		elseif L_60_[3] == "gi" then
			return function(L_74_arg0)
				local L_75_ = {}
				L_75_[2] = L_74_arg0
				if L_1_[45]["ffc"](L_1_[35]["Backpack"], L_75_[2]) or L_1_[45]["ffc"](L_1_[35]["Character"], L_75_[2]) then
					return true
				end
				for L_76_forvar0, L_77_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("getInventoryWeapons")) do
					local L_78_ = {}
					L_78_[2], L_78_[1] = L_76_forvar0, L_77_forvar1
					if L_78_[1]["Name"] == L_75_[2] then
						return true
					end
				end
				return false
			end
		elseif L_60_[3] == "tf" then
			return function(L_79_arg0, L_80_arg1)
				local L_81_ = {}
				L_81_[3], L_81_[1] = L_79_arg0, L_80_arg1
				return table["find"](L_81_[3], L_81_[1])
			end
		elseif L_60_[3] == "CheckBoss" then
			return function(L_82_arg0)
				local L_83_ = {}
				L_83_[1] = L_82_arg0
				if L_1_[45]["ffc"](L_1_[7], L_83_[1]) or L_1_[45]["ffc"](L_1_[40], L_83_[1]) then
					return true
				end
				return false
			end
		elseif L_60_[3] == "IsHall" then
			return function()
				if L_1_[45]["ffc"](L_1_[19]["Map"], "IceCastle") then
					if L_1_[45]["ffc"](L_1_[19]["Map"]["IceCastle"]["Hall"]["LibraryDoor"], "Keyhole") then
						return true
					end
				end
				return false
			end
		elseif L_60_[3] == "CheckBackpack" then
			return function(L_84_arg0)
				local L_85_ = {}
				L_85_[1] = L_84_arg0
				if L_1_[45]["ffc"](L_1_[35]["Backpack"], L_85_[1]) or L_1_[45]["ffc"](L_1_[35]["Character"], L_85_[1]) then
					return true
				end
				return false
			end
		elseif L_60_[3] == "GetMobRaid" then
			return function()
				local L_86_ = {}
				L_86_[2] = {}
				for L_87_forvar0, L_88_forvar1 in pairs(L_1_[40]:GetChildren()) do
					local L_89_ = {}
					L_89_[1], L_89_[2] = L_87_forvar0, L_88_forvar1
					if L_89_[2]:FindFirstChild("HumanoidRootPart") and (L_89_[2]:FindFirstChild("Humanoid") and (L_89_[2]["Humanoid"]["Health"] > 0 and (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - L_89_[2]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5000)) then
						table["insert"](L_86_[2], L_89_[2])
					end
				end
				return L_86_[2]
			end
		elseif L_60_[3] == "GetFruits" then
			return function()
				local L_90_ = {}
				L_90_[2] = {}
				for L_91_forvar0, L_92_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
					local L_93_ = {}
					L_93_[3], L_93_[1] = L_91_forvar0, L_92_forvar1
					if L_93_[1]["Type"] == "Blox Fruit" and L_93_[1]["Value"] <= 999999 then
						table["insert"](L_90_[2], {
							["Name"] = L_93_[1]["Name"],
							["Value"] = L_93_[1]["Value"]
						})
					end
				end
				return L_90_[2]
			end
		elseif L_60_[3] == "GetRaid" then
			return function(L_94_arg0, L_95_arg1)
				local L_96_ = {}
				L_96_[3], L_96_[1] = L_94_arg0, L_95_arg1
				for L_97_forvar0, L_98_forvar1 in pairs(L_1_[19]["_WorldOrigin"]["Locations"]:GetChildren()) do
					local L_99_ = {}
					L_99_[1], L_99_[2] = L_97_forvar0, L_98_forvar1
					if L_99_[2]:IsA("Part") or L_99_[2]:IsA("BasePart") then
						if L_99_[2]["Name"] == L_96_[3] and (L_99_[2]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= L_96_[1] then
							return L_99_[2]
						end
					end
				end
				return nil
			end
		elseif L_60_[3] == "GetType" then
			return function()
				local L_100_ = {}
				L_100_[1] = {}
				for L_101_forvar0, L_102_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
					local L_103_ = {}
					L_103_[2], L_103_[3] = L_101_forvar0, L_102_forvar1
					if L_103_[3]["Type"] == "Blox Fruit" then
						table["insert"](L_100_[1], L_103_[3]["Name"])
					end
				end
				return L_100_[1]
			end
		elseif L_60_[3] == "IsInList" then
			return function(L_104_arg0, L_105_arg1)
				local L_106_ = {}
				L_106_[3], L_106_[2] = L_104_arg0, L_105_arg1
				for L_107_forvar0, L_108_forvar1 in pairs(L_106_[3]) do
					local L_109_ = {}
					L_109_[2], L_109_[3] = L_107_forvar0, L_108_forvar1
					if L_109_[3] == L_106_[2] then
						return true
					end
				end
				return false
			end
		elseif L_60_[3] == "IsHeavenly" then
			return function()
				for L_110_forvar0, L_111_forvar1 in pairs(((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("getTitles")) do
					local L_112_ = {}
					L_112_[1], L_112_[3] = L_110_forvar0, L_111_forvar1
					if L_112_[3]["Name"] == "Heavenly Devil" then
						return true
					end
				end
				return false
			end
		elseif L_60_[3] == "GetMonster" then
			return function(L_113_arg0)
				local L_114_ = {}
				L_114_[2] = L_113_arg0
				pcall(function()
					for L_115_forvar0, L_116_forvar1 in pairs(L_1_[40]:GetChildren()) do
						local L_117_ = {}
						L_117_[3], L_117_[1] = L_115_forvar0, L_116_forvar1
						if L_117_[1]:IsA("Model") and (L_117_[1]:FindFirstChild("Humanoid") and (L_117_[1]["Humanoid"]["Health"] > 0 and (L_117_[1]["HumanoidRootPart"]["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= L_114_[2])) then
							Monster = L_117_[1]
							return
						end
					end
				end)
			end
		elseif L_60_[3] == "GetMon_Soul" then
			return function()
				for L_118_forvar0, L_119_forvar1 in next, (game:GetService("Workspace"))["Enemies"]:GetChildren() do
					local L_120_ = {}
					L_120_[3], L_120_[2] = L_118_forvar0, L_119_forvar1
					if L_120_[2]["Name"] == "Living Zombie" then
						table["insert"](get_mon, L_120_[2]["Name"])
					end
				end
			end
		elseif L_60_[3] == "click" then
			return function(L_121_arg0)
				local L_122_ = {}
				L_122_[1] = L_121_arg0
				L_1_[2]:SendMouseButtonEvent(L_122_[1]["AbsolutePosition"]["X"] + L_122_[1]["AbsoluteSize"]["X"] / 2, L_122_[1]["AbsolutePosition"]["Y"] + 90, 0, true, L_122_[1], 1)
				L_1_[2]:SendMouseButtonEvent(L_122_[1]["AbsolutePosition"]["X"] + L_122_[1]["AbsoluteSize"]["X"] / 2, L_122_[1]["AbsolutePosition"]["Y"] + 90, 0, false, L_122_[1], 1)
			end
		elseif L_60_[3] == "CheckItem" then
			return function(L_137_arg0)
				local L_138_ = {}
				L_138_[2] = L_137_arg0
				for L_139_forvar0, L_140_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
					local L_141_ = {}
					L_141_[2], L_141_[3] = L_139_forvar0, L_140_forvar1
					if type(L_141_[3]) == "table" then
						if L_141_[3]["Type"] == "Material" then
							if L_141_[3]["Name"] == L_138_[2] then
								return L_141_[3]["Count"]
							end
						end
					end
				end
				return 0
			end
		elseif L_60_[3] == "FarmBone" then
			return function(L_142_arg0)
				local L_143_ = {}
				L_143_[1] = L_142_arg0
				if L_143_[1] then
					if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Fire Essence") or L_1_[45]["ffc"](L_1_[35]["Character"], "Fire Essence") then
						repeat
							L_1_[45]["Status"](L_1_[3]({
								" Status : Use Fire E";
								"ssence"
							}))
							L_1_[45]["Equip"]("Fire Essence")
							L_1_[45]["wt"](.5)
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon", true)
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
						until not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Fire Essence") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Fire Essence")
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
						Dragon_Talon_C = true
					else
						if L_1_[45]["ffc"](L_1_[40], "Demonic Soul") or L_1_[45]["ffc"](L_1_[40], "Posessed Mummy") or L_1_[45]["ffc"](L_1_[40], "Reborn Skeleton") or L_1_[45]["ffc"](L_1_[40], "Living Zombie") then
							for L_144_forvar0, L_145_forvar1 in pairs(L_1_[40]:GetChildren()) do
								local L_146_ = {}
								L_146_[3], L_146_[1] = L_144_forvar0, L_145_forvar1
								if L_146_[1]["Name"] == "Reborn Skeleton" or L_146_[1]["Name"] == "Living Zombie" or L_146_[1]["Name"] == "Demonic Soul" or L_146_[1]["Name"] == "Posessed Mummy" then
									if L_146_[1]:FindFirstChild("HumanoidRootPart") and (L_146_[1]:FindFirstChild("Humanoid") and L_146_[1]["Humanoid"]["Health"] > 0) then
										repeat
											L_1_[45]["wt"](.1)
											if L_1_[45]["CheckItem"]("Bones") > 500 and L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") > 0 then
												repeat
													L_1_[45]["wt"](.2)
													L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check")
													L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
												until L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") == 0
											end
											if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
												L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
											end
											L_1_[31](L_146_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5, 200)
											L_1_[14]()
											L_1_[45]["BN"](L_146_[1]["Name"])
										until not L_146_[1]["Parent"] or L_146_[1]["Humanoid"]["Health"] <= 0
									end
								end
							end
						else
							L_1_[31](CFrame["new"](-9505.8720703125, 172.10482788086, 6158.9931640625), 1.5)
						end
					end
				else
					if L_1_[45]["ffc"](L_1_[40], "Demonic Soul") or L_1_[45]["ffc"](L_1_[40], "Posessed Mummy") or L_1_[45]["ffc"](L_1_[40], "Reborn Skeleton") or L_1_[45]["ffc"](L_1_[40], "Living Zombie") then
						for L_147_forvar0, L_148_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_149_ = {}
							L_149_[1], L_149_[2] = L_147_forvar0, L_148_forvar1
							if L_149_[2]["Name"] == "Reborn Skeleton" or L_149_[2]["Name"] == "Living Zombie" or L_149_[2]["Name"] == "Demonic Soul" or L_149_[2]["Name"] == "Posessed Mummy" then
								if L_149_[2]:FindFirstChild("HumanoidRootPart") and (L_149_[2]:FindFirstChild("Humanoid") and L_149_[2]["Humanoid"]["Health"] > 0) then
									repeat
										L_1_[45]["wt"](.1)
										if L_1_[45]["CheckItem"]("Bones") > 500 and L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") > 0 then
											repeat
												L_1_[45]["wt"](.2)
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check")
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
											until L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") == 0
										end
										if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
											L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
										end
										L_1_[31](L_149_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5, 200)
										L_1_[14]()
										L_1_[45]["BN"](L_149_[2]["Name"])
									until not L_149_[2]["Parent"] or L_149_[2]["Humanoid"]["Health"] <= 0
								end
							end
						end
					else
						L_1_[31](CFrame["new"](-9505.8720703125, 172.10482788086, 6158.9931640625), 1.5)
					end
				end
			end
		elseif L_60_[3] == "Get_Item_Inventory" then
			return function(L_150_arg0)
				local L_151_ = {}
				L_151_[2] = L_150_arg0
				if not L_1_[45]["ffc"](L_1_[35]["Backpack"], L_151_[2]) and not L_1_[45]["ffc"](L_1_[35]["Character"], L_151_[2]) then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LoadItem", tostring(L_151_[2]))
				end
			end
		elseif L_60_[3] == "BN" then
			return function(L_152_arg0)
				local L_153_ = {}
				L_153_[2] = L_152_arg0
				pcall(function()
					local L_154_ = {}
					L_154_[3] = game["Players"]["LocalPlayer"]
					L_154_[2] = L_154_[3]["Character"] and L_154_[3]["Character"]:FindFirstChild("HumanoidRootPart")
					if not L_154_[2] then
						return
					end
					for L_155_forvar0, L_156_forvar1 in pairs(game["Workspace"]["Enemies"]:GetChildren()) do
						local L_157_ = {}
						L_157_[2], L_157_[3] = L_155_forvar0, L_156_forvar1
						if L_157_[3]:IsA("Model") and (L_157_[3]["Name"] == L_153_[2] and (L_157_[3]:FindFirstChild("Humanoid") and L_157_[3]:FindFirstChild("HumanoidRootPart"))) then
							local L_158_ = {}
							L_158_[3], L_158_[2] = L_157_[3]["Humanoid"], L_157_[3]["HumanoidRootPart"]
							if L_158_[3]["Health"] > 0 and (L_158_[2]["Position"] - L_154_[2]["Position"])["Magnitude"] <= 350 then
								local L_159_ = {}
								L_159_[2] = nil
								for L_160_forvar0, L_161_forvar1 in pairs(game["Workspace"]["Enemies"]:GetChildren()) do
									local L_162_ = {}
									L_162_[1], L_162_[2] = L_160_forvar0, L_161_forvar1
									if L_162_[2] ~= L_157_[3] and (L_162_[2]:IsA("Model") and (L_162_[2]["Name"] == L_153_[2] and L_162_[2]:FindFirstChild("HumanoidRootPart"))) then
										L_159_[2] = L_162_[2]["HumanoidRootPart"]
										break
									end
								end
								if L_159_[2] then
									local L_163_ = {}
									L_163_[1] = Instance["new"]("BodyPosition")
									L_163_[1]["Position"] = L_159_[2]["Position"] + Vector3["new"](0, 0, 0)
									L_163_[1]["MaxForce"] = Vector3["new"](1000000, 1000000, 1000000)
									L_163_[1]["P"] = 3000
									L_163_[1]["D"] = 100
									L_163_[1]["Name"] = "EnemyFlyPosition"
									L_163_[1]["Parent"] = L_158_[2]
								end
								L_158_[2]["CanCollide"] = false
								L_158_[3]:ChangeState(14)
								L_158_[3]["WalkSpeed"] = 0
								if L_158_[3]:FindFirstChild("Animator") then
									L_158_[3]["Animator"]:Destroy()
								end
								for L_164_forvar0, L_165_forvar1 in pairs(L_157_[3]:GetDescendants()) do
									local L_166_ = {}
									L_166_[2], L_166_[3] = L_164_forvar0, L_165_forvar1
									if L_166_[3]:IsA("BasePart") then
										L_166_[3]["CanCollide"] = false
										L_166_[3]["CanTouch"] = false
										L_166_[3]["CanQuery"] = false
									end
								end
								if L_157_[3]:FindFirstChild("Head") then
									L_157_[3]["Head"]["CanCollide"] = false
								end
							end
						end
					end
					sethiddenproperty(L_154_[3], "SimulationRadius", math["huge"])
				end)
			end
		elseif L_60_[3] == "Status" then
			return function(L_167_arg0)
				local L_168_ = {}
				L_168_[2] = L_167_arg0
				L_1_[26]["Text"] = L_168_[2]
			end
		elseif L_60_[3] == "GetQuest" then
			return function(L_169_arg0)
				local L_170_ = {}
				L_170_[1] = L_169_arg0
				if (Vector3["new"](-12379.1406, 601.433167, -6543.60742) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 30 then
					L_1_[31](CFrame["new"](-12379.1406, 601.433167, -6543.60742), 1.5)
				elseif (Vector3["new"](-12379.1406, 601.433167, -6543.60742) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] < 30 then
					if L_170_[1] == "Good" then
						repeat
							wait(.1)
							L_1_[31](CFrame["new"](-12392.5068, 603.319763, -6596.00586), 1.5)
						until (Vector3["new"](-12392.5068, 603.319763, -6596.00586) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
						wait(1)
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress", "Good")
						wait(1)
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "StartTrial", "Good")
					elseif L_170_[1] == "Evil" then
						repeat
							wait(.1)
							L_1_[31](CFrame["new"](-12392.2637, 603.319763, -6503.27832), 1.5)
						until (Vector3["new"](-12392.2637, 603.319763, -6503.27832) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
						wait(1)
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress", "Evil")
						wait(1)
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "StartTrial", "Evil")
					end
				end
			end
		elseif L_60_[3] == "GetTorch" then
			return function(L_171_arg0)
				local L_172_ = {}
				L_172_[2] = L_171_arg0
				repeat
					wait()
					L_1_[31](L_1_[19]["Map"]["HeavenlyDimension"][L_172_[2]]["CFrame"], 1.5)
				until (L_1_[19]["Map"]["HeavenlyDimension"][L_172_[2]]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 7
				fireproximityprompt(workspace["Map"]["HeavenlyDimension"][L_172_[2]]["ProximityPrompt"])
				wait(.5)
			end
		elseif L_60_[3] == "GetTorchX" then
			return function(L_173_arg0)
				local L_174_ = {}
				L_174_[1] = L_173_arg0
				repeat
					wait()
					L_1_[31](L_1_[19]["Map"]["HellDimension"][L_174_[1]]["CFrame"], 1.5)
				until (L_1_[19]["Map"]["HellDimension"][L_174_[1]]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 7
				fireproximityprompt(workspace["Map"]["HellDimension"][L_174_[1]]["ProximityPrompt"])
				wait(.5)
			end
		end
	end
})
-- ===== KẾT THÚC METATABLE =====

L_1_[27] = game:GetService("Players")
L_1_[46] = game:GetService("ReplicatedStorage")
L_1_[25] = game:GetService("Workspace")
L_1_[34] = {}
L_1_[34]["__index"] = L_1_[34]
L_1_[51] = L_1_[27]["LocalPlayer"]
task["spawn"](function()
	while task["wait"](.5) do
		L_1_[45]["p"](function()
			if L_1_[35]["Data"]["Points"]["Value"] > 0 and L_1_[35]["Data"]["Stats"]["Melee"]["Level"]["Value"] < 2650 then
				L_1_[46]["Remotes"]["CommF_"]:InvokeServer("AddPoint", "Melee", L_1_[35]["Data"]["Points"]["Value"])
			end
			if L_1_[35]["Data"]["Stats"]["Melee"]["Level"]["Value"] >= 2650 and (L_1_[35]["Data"]["Points"]["Value"] > 0 and L_1_[35]["Data"]["Stats"]["Defense"]["Level"]["Value"] < 2550) then
				L_1_[46]["Remotes"]["CommF_"]:InvokeServer("AddPoint", "Defense", L_1_[35]["Data"]["Points"]["Value"])
			end
			if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
				L_1_[46]["Remotes"]["CommF_"]:InvokeServer("Buso")
			end
		end)
	end
end);
(getgenv())["Fast Attack"] = true
L_1_[20] = 0
task["spawn"](function()
	while task["wait"](L_1_[20]) do
		if (getgenv())["Fast Attack"] and not Stop_Fast_Attack then
			if L_1_[45]["sf"](L_1_[35]["PlayerGui"]["Main"]["Version"]["Text"], "v26.6.1") then
				xpcall(function()
					if (L_1_[51]["Character"] or L_1_[51]["CharacterAdded"]:Wait()):FindFirstChildOfClass("Tool") and ((L_1_[51]["Character"] or L_1_[51]["CharacterAdded"]:Wait()):FindFirstChildOfClass("Humanoid") and (L_1_[51]["Character"] or L_1_[51]["CharacterAdded"]:Wait())["Humanoid"]["Health"] > 0) then
						for L_175_forvar0, L_176_forvar1 in pairs(L_1_[25]["Enemies"]:GetChildren()) do
							local L_177_ = {}
							L_177_[1], L_177_[3] = L_175_forvar0, L_176_forvar1
							if L_177_[3]:FindFirstChildOfClass("Humanoid") and (L_177_[3]["Humanoid"]["Health"] > 0 and L_177_[3]:FindFirstChild("HumanoidRootPart")) then
								if (L_177_[3]["HumanoidRootPart"]["Position"] - L_1_[51]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 60 then
									local L_178_ = {}
									if (L_1_[51]["Character"] or L_1_[51]["CharacterAdded"]:Wait()):FindFirstChild("Stun") then
										(L_1_[51]["Character"] or L_1_[51]["CharacterAdded"]:Wait())["Stun"]["Value"] = 0
									end
									if (L_1_[51]["Character"] or L_1_[51]["CharacterAdded"]:Wait()):FindFirstChild("Busy") then
										(L_1_[51]["Character"] or L_1_[51]["CharacterAdded"]:Wait())["Busy"]["Value"] = false
									end
									if L_177_[3]:FindFirstChild("Stun") then
										L_177_[3]["Stun"]["Value"] = 0
									end
									if L_177_[3]:FindFirstChild("Busy") then
										L_177_[3]["Busy"]["Value"] = false
									end
									if L_1_[7]["Modules"]["Net"]:FindFirstChild("RE") and L_1_[7]["Modules"]["Net"]["RE"]:FindFirstChild("RegisterHit") then
										L_1_[7]["Modules"]["Net"]["RE"]["RegisterHit"]:SetAttribute("Virtual", not L_1_[7]["Modules"]["Net"]["RE"]["RegisterHit"]:GetAttribute("Virtual"))
									end
									if L_1_[51]["Character"] then
										L_1_[51]["Character"]:SetAttribute("Clashable", not L_1_[51]["Character"]:GetAttribute("Clashable"))
									end
									L_178_[2] = 0
									for L_179_forvar0, L_180_forvar1 in pairs(L_1_[25]["Enemies"]:GetChildren()) do
										local L_181_ = {}
										L_181_[1], L_181_[3] = L_179_forvar0, L_180_forvar1
										if L_181_[3]:FindFirstChildOfClass("Humanoid") and (L_181_[3]["Humanoid"]["Health"] > 0 and (L_181_[3]:FindFirstChild("HumanoidRootPart") and (L_181_[3]["HumanoidRootPart"]["Position"] - L_1_[51]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 60)) then
											L_178_[2] = L_178_[2] + 1
											if L_178_[2] > 5 then
												L_1_[20] = .1
											elseif L_178_[2] > 2 and L_178_[2] <= 5 then
												L_1_[20] = .03
											else
												L_1_[20] = 0
											end;
											(L_1_[48]:RemoteEvent("RegisterAttack")):FireServer(math["huge"]);
											(L_1_[48]:RemoteEvent("RegisterHit", true)):FireServer(L_181_[3]["Head"], {
												{
													L_181_[3],
													L_181_[3]["Head"]
												};
												L_181_[3]["Head"]
											}, nil, (tostring(L_1_[51]["UserId"])):sub(2, 4) .. (tostring(coroutine["running"]())):sub(11, 15))
										end
									end
								end
							end
						end
					end
				end, warn)
			else
				local L_182_ = {}
				assert(getrenv, L_1_[3]({
					"Exploit not supporte";
					"d"
				}))
				L_182_[11] = game:GetService("CollectionService")
				L_182_[2] = game:GetService("ReplicatedStorage")
				L_182_[8] = game:GetService("Players")
				L_182_[6] = L_182_[8]["LocalPlayer"]
				L_182_[3] = debug["getupvalue"]((getrenv())["_G"]["SendHitsToServer"], 1)
				L_182_[5] = L_182_[2]["Modules"]["Net"]["RE/RegisterAttack"]
				L_182_[4] = function()
					local L_183_ = {}
					L_183_[3] = L_182_[11]:GetTagged("BasicMob")
					if #L_183_[3] == 0 then
						return nil
					end
					L_183_[4] = {}
					L_183_[2] = L_182_[6]["Character"] and L_182_[6]["Character"]["PrimaryPart"]["Position"]
					if not L_183_[2] then
						return nil
					end
					for L_184_forvar0, L_185_forvar1 in pairs(L_183_[3]) do
						local L_186_ = {}
						L_186_[1], L_186_[4] = L_184_forvar0, L_185_forvar1
						L_186_[5] = L_186_[4]:FindFirstChildOfClass("Humanoid")
						L_186_[3] = L_186_[4]["PrimaryPart"]
						if L_186_[5] and (L_186_[5]["Health"] > 0 and L_186_[3]) then
							local L_187_ = {}
							L_187_[1] = (L_186_[3]["Position"] - L_183_[2])["Magnitude"]
							if L_187_[1] <= 100 then
								L_183_[4][#L_183_[4] + 1] = {
									["mob"] = L_186_[4];
									["distance"] = L_187_[1]
								}
							end
						end
					end
					if #L_183_[4] == 0 then
						return nil
					end
					table["sort"](L_183_[4], function(L_188_arg0, L_189_arg1)
						local L_190_ = {}
						L_190_[1], L_190_[2] = L_188_arg0, L_189_arg1
						return L_190_[1]["distance"] < L_190_[2]["distance"]
					end)
					return #L_183_[4] > 2 and {
						L_183_[4][1],
						L_183_[4][2]
					} or L_183_[4]
				end
				L_182_[1] = function()
					local L_191_ = {}
					L_191_[3] = L_182_[4]()
					if not L_191_[3] then
						return
					end
					L_191_[2] = {}
					for L_192_forvar0, L_193_forvar1 in pairs(L_191_[3]) do
						local L_194_ = {}
						L_194_[4], L_194_[2] = L_192_forvar0, L_193_forvar1
						L_194_[1] = L_194_[2]["mob"]:FindFirstChild("HumanoidRootPart")
						if L_194_[1] then
							L_191_[2][#L_191_[2] + 1] = {
								L_194_[2]["mob"];
								L_194_[1]
							}
						end
					end
					if #L_191_[2] > 0 then
						L_182_[5]:FireServer(0 / 0)
						coroutine["resume"](L_182_[3], L_191_[2][1][2], {
							table["unpack"](L_191_[2], 2)
						})
					end
				end
				L_182_[7], L_182_[9] = pcall(function()
					L_182_[1]()
				end)
				if not L_182_[7] then
					warn(L_1_[3]({
						"Error in Combat scri",
						"pt: "
					}) .. tostring(L_182_[9]))
				end
			end
		end
	end
end)
for L_195_forvar0, L_196_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
	local L_197_ = {}
	L_197_[1], L_197_[3] = L_195_forvar0, L_196_forvar1
	if L_197_[3]["Type"] == "Material" then
		if L_197_[3]["Name"] == "Mirror Fractal" then
			Mirror_Fractal_H = true
		end
	end
end
L_1_[35]["PlayerGui"]["Notifications"]["Enabled"] = false
if (((L_1_[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
	["StorageName"] = "Pure Red";
	["Type"] = "AuraSkin";
	["Context"] = "Equip"
}) ~= false then
	Pure_Red_H = true
end
if (((L_1_[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
	["StorageName"] = "Snow White";
	["Type"] = "AuraSkin",
	["Context"] = "Equip"
}) ~= false then
	Snow_White = true
end
if (((L_1_[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
	["StorageName"] = "Snow White";
	["Type"] = "AuraSkin";
	["Context"] = "Equip"
}) ~= false then
	Winter_Sky = true
end
if (((L_1_[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
	["StorageName"] = "Rainbow Saviour";
	["Type"] = "AuraSkin";
	["Context"] = "Equip"
}) ~= false then
	Rainbow_Saviour = true
end
if Three_World and (L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TushitaProgress"))["OpenedDoor"] then
	Unlock_Tushita_Quest = true
end
L_1_[39] = function()
	local L_198_ = {}
	if Three_World then
		if tostring(string["match"](tostring(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+")) == "nil" or tostring(string["match"](tostring(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+")) == nil then
			L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
		end
	end
	if Three_World then
		if L_1_[45]["ffc"](L_1_[40], "Cake Prince") or L_1_[45]["ffc"](L_1_[7], "Cake Prince") then
			if L_1_[45]["ffc"](L_1_[40], "Cake Prince") then
				for L_199_forvar0, L_200_forvar1 in pairs(L_1_[40]:GetChildren()) do
					local L_201_ = {}
					L_201_[2], L_201_[3] = L_199_forvar0, L_200_forvar1
					if L_201_[3]["Name"] == "Cake Prince" and L_201_[3]["Humanoid"]["Health"] > 0 then
						repeat
							L_1_[45]["wt"]()
							if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
								L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
							end
							L_1_[31](L_201_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
							L_1_[14]()
						until not L_201_[3]["Parent"] or L_201_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
					end
				end
			elseif L_1_[45]["ffc"](L_1_[7], "Cake Prince") then
				for L_202_forvar0, L_203_forvar1 in pairs(L_1_[7]:GetChildren()) do
					local L_204_ = {}
					L_204_[1], L_204_[3] = L_202_forvar0, L_203_forvar1
					if L_204_[3]["Name"] == "Cake Prince" and L_204_[3]["Humanoid"]["Health"] > 0 then
						repeat
							L_1_[45]["wt"]()
							if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
								L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
							end
							L_1_[31](L_204_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
							L_1_[14]()
						until not L_204_[3]["Parent"] or L_204_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
					end
				end
			end
		end
	end
	if Three_World then
		if L_1_[40]:FindFirstChild("rip_indra True Form") or L_1_[7]:FindFirstChild("rip_indra True Form") then
			if not(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TushitaProgress"))["OpenedDoor"] then
				local L_205_ = {}
				L_205_[1] = L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TushitaProgress")
				if not L_205_[1]["OpenedDoor"] then
					if L_1_[35]["Backpack"]:FindFirstChild("Holy Torch") or L_1_[35]["Character"]:FindFirstChild("Holy Torch") then
						L_1_[45]["Equip"]("Holy Torch")
						for L_206_forvar0 = 1, 5, 1 do
							local L_207_ = {}
							L_207_[1] = L_206_forvar0
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TushitaProgress", "Torch", L_207_[1])
						end
					elseif L_1_[7]:FindFirstChild("rip_indra True Form") or L_1_[40]:FindFirstChild("rip_indra True Form") then
						if L_1_[35]["Backpack"]:FindFirstChild("Holy Torch") or L_1_[35]["Character"]:FindFirstChild("Holy Torch") then
							L_1_[45]["Equip"]("Holy Torch")
							for L_208_forvar0 = 1, 5, 1 do
								local L_209_ = {}
								L_209_[1] = L_208_forvar0
								L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TushitaProgress", "Torch", L_209_[1])
							end
						elseif L_1_[7]:FindFirstChild("rip_indra True Form") or L_1_[40]:FindFirstChild("rip_indra True Form") then
							task["spawn"](function()
								repeat
									L_1_[45]["wt"]()
									L_1_[2]:SendKeyEvent(true, "Space", false, game)
									L_1_[45]["wt"](.3)
									L_1_[2]:SendKeyEvent(false, "Space", false, game)
								until L_1_[35]["Backpack"]:FindFirstChild("Holy Torch") or L_1_[35]["Character"]:FindFirstChild("Holy Torch") or not L_1_[7]:FindFirstChild("rip_indra True Form") and not L_1_[40]:FindFirstChild("rip_indra True Form")
							end)
							repeat
								L_1_[45]["wt"]()
								L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](5714, 19, 254)
							until L_1_[35]["Backpack"]:FindFirstChild("Holy Torch") or L_1_[35]["Character"]:FindFirstChild("Holy Torch") or not L_1_[7]:FindFirstChild("rip_indra True Form") and not L_1_[40]:FindFirstChild("rip_indra True Form")
							if L_1_[35]["Backpack"]:FindFirstChild("Holy Torch") or L_1_[35]["Character"]:FindFirstChild("Holy Torch") then
								L_1_[45]["Equip"]("Holy Torch")
								for L_210_forvar0 = 1, 5, 1 do
									local L_211_ = {}
									L_211_[2] = L_210_forvar0
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TushitaProgress", "Torch", L_211_[2])
								end
							end
						end
					end
				elseif L_205_[1]["OpenedDoor"] then
					Unlock_Tushita_Quest = true
					return
				end
			else
				if L_1_[40]:FindFirstChild("rip_indra True Form") or L_1_[7]:FindFirstChild("rip_indra True Form") then
					if L_1_[40]:FindFirstChild("rip_indra True Form") then
						for L_212_forvar0, L_213_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_214_ = {}
							L_214_[3], L_214_[1] = L_212_forvar0, L_213_forvar1
							if L_214_[1]["Name"] == "rip_indra True Form" and L_214_[1]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"](.1)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[31](L_214_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
									L_1_[14]()
								until not L_214_[1]["Parent"] or L_214_[1]["Humanoid"]["Health"] <= 0
							end
						end
					elseif L_1_[7]:FindFirstChild("rip_indra True Form") then
						L_1_[31]((L_1_[7]:FindFirstChild("rip_indra True Form"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
					end
				elseif L_1_[35]["Backpack"]:FindFirstChild("God's Chalice") or L_1_[35]["Character"]:FindFirstChild("God's Chalice") then
					repeat
						L_1_[45]["wt"](.1)
						Oyster_H = false
						Hot_pink_H = false
						Really_red_H = false
						for L_215_forvar0, L_216_forvar1 in pairs(L_1_[19]["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
							local L_217_ = {}
							L_217_[1], L_217_[2] = L_215_forvar0, L_216_forvar1
							if L_217_[2]["Name"] == "Part" and (tostring(L_217_[2]["BrickColor"]) == "Oyster" and tostring(L_217_[2]["Part"]["BrickColor"]) == "Lime green") then
								Oyster_H = true
							end
						end
						for L_218_forvar0, L_219_forvar1 in pairs(L_1_[19]["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
							local L_220_ = {}
							L_220_[3], L_220_[1] = L_218_forvar0, L_219_forvar1
							if L_220_[1]["Name"] == "Part" and (tostring(L_220_[1]["BrickColor"]) == "Hot pink" and tostring(L_220_[1]["Part"]["BrickColor"]) == "Lime green") then
								Hot_pink_H = true
							end
						end
						for L_221_forvar0, L_222_forvar1 in pairs(L_1_[19]["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
							local L_223_ = {}
							L_223_[1], L_223_[3] = L_221_forvar0, L_222_forvar1
							if L_223_[3]["Name"] == "Part" and (tostring(L_223_[3]["BrickColor"]) == "Really red" and tostring(L_223_[3]["Part"]["BrickColor"]) == "Lime green") then
								Really_red_H = true
							end
						end
						if Oyster_H and (Hot_pink_H and Really_red_H) then
							repeat
								L_1_[45]["wt"](.1)
								L_1_[45]["Equip"]("God's Chalice")
								L_1_[31](CFrame["new"](-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, .952628076, .000226983335, .999996245, .00273981248, -0.952631414, .00104948215, -0.304125458), 1.5)
							until (Vector3["new"](-5561.06738, 314.375793, -2663.88892) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5
							L_1_[45]["wt"](1)
						else
							if L_1_[35]["Backpack"]:FindFirstChild("God's Chalice") or L_1_[35]["Character"]:FindFirstChild("God's Chalice") then
								repeat
									L_1_[45]["wt"](.1)
									L_1_[14]()
									L_1_[31](CFrame["new"](-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, .952628076, .000226983335, .999996245, .00273981248, -0.952631414, .00104948215, -0.304125458), 1.5)
								until (Vector3["new"](-5561.06738, 314.375793, -2663.88892) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5
								if Snow_White and not Oyster_H then
									for L_224_forvar0, L_225_forvar1 in pairs(L_1_[19]["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
										local L_226_ = {}
										L_226_[3], L_226_[2] = L_224_forvar0, L_225_forvar1
										if L_226_[2]["Name"] == "Part" and tostring(L_226_[2]["BrickColor"]) == "Oyster" then
											if tostring(L_226_[2]["Part"]["BrickColor"]) ~= "Lime green" then
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("activateColor", "Snow White")
												L_1_[45]["wt"](1)
												repeat
													L_1_[45]["wt"]()
													if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
														L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
													end
													L_1_[31](L_226_[2]["Part"]["CFrame"], 1.5)
												until tostring(L_226_[2]["Part"]["BrickColor"]) == "Lime green"
												Oyster_H = true
											end
										end
									end
								end
								if Pure_Red_H and not Really_red_H then
									for L_227_forvar0, L_228_forvar1 in pairs(L_1_[19]["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
										local L_229_ = {}
										L_229_[1], L_229_[2] = L_227_forvar0, L_228_forvar1
										if L_229_[2]["Name"] == "Part" and tostring(L_229_[2]["BrickColor"]) == "Really red" then
											if tostring(L_229_[2]["Part"]["BrickColor"]) ~= "Lime green" then
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("activateColor", "Pure Red")
												L_1_[45]["wt"](1)
												repeat
													L_1_[45]["wt"]()
													if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
														L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
													end
													L_1_[31](L_229_[2]["Part"]["CFrame"], 1.5)
												until tostring(L_229_[2]["Part"]["BrickColor"]) == "Lime green"
												Really_red_H = true
											end
										end
									end
								end
								if Winter_Sky and not Hot_pink_H then
									for L_230_forvar0, L_231_forvar1 in pairs(L_1_[19]["Map"]["Boat Castle"]["Summoner"]["Circle"]:GetChildren()) do
										local L_232_ = {}
										L_232_[1], L_232_[2] = L_230_forvar0, L_231_forvar1
										if L_232_[2]["Name"] == "Part" and tostring(L_232_[2]["BrickColor"]) == "Hot pink" then
											if tostring(L_232_[2]["Part"]["BrickColor"]) ~= "Lime green" then
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("activateColor", "Winter Sky")
												L_1_[45]["wt"](1)
												repeat
													L_1_[45]["wt"]()
													if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
														L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
													end
													L_1_[31](L_232_[2]["Part"]["CFrame"], 1.5)
												until tostring(L_232_[2]["Part"]["BrickColor"]) == "Lime green"
												Hot_pink_H = true
											end
										end
									end
								end
								L_1_[45]["Equip"]("God's Chalice")
								L_1_[31](CFrame["new"](-5561.06738, 314.375793, -2663.88892, -0.304127187, -0.00254100002, .952628076, .000226983335, .999996245, .00273981248, -0.952631414, .00104948215, -0.304125458), 1.5)
								if TimeLoaderx == nil or tick() - TimeLoaderx > 10 then
									TimeLoaderx = tick()
									L_1_[7][L_1_[3]({
										"DefaultChatSystemCha",
										"tEvents"
									})]["SayMessageRequest"]:FireServer(L_1_[3]({
										"I have God Chalice. ",
										"I Can't Spawn Boss A";
										"dmin"
									}), "All")
								end
							end
						end
					until not L_1_[35]["Backpack"]:FindFirstChild("God's Chalice") and not L_1_[35]["Character"]:FindFirstChild("God's Chalice")
				end
			end
		end
	end
	if Three_World then
		if L_1_[40]:FindFirstChild("rip_indra True Form") or L_1_[7]:FindFirstChild("rip_indra True Form") then
			if L_1_[40]:FindFirstChild("rip_indra True Form") then
				for L_233_forvar0, L_234_forvar1 in pairs(L_1_[40]:GetChildren()) do
					local L_235_ = {}
					L_235_[1], L_235_[3] = L_233_forvar0, L_234_forvar1
					if L_235_[3]["Name"] == "rip_indra True Form" and L_235_[3]["Humanoid"]["Health"] > 0 then
						repeat
							L_1_[45]["wt"](.1)
							if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
								L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
							end
							L_1_[31](L_235_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
							L_1_[14]()
						until not L_235_[3]["Parent"] or L_235_[3]["Humanoid"]["Health"] <= 0
					end
				end
			elseif L_1_[7]:FindFirstChild("rip_indra True Form") then
				L_1_[31]((L_1_[7]:FindFirstChild("rip_indra True Form"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0))
			end
		end
	end
	L_198_[2] = false
	if Three_World and not Mirror_Fractal_H then
		if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Sweet Chalice") or L_1_[45]["ffc"](L_1_[35]["Character"], "Sweet Chalice") or L_1_[45]["ffc"](L_1_[35]["Backpack"], "God's Chalice") or L_1_[45]["ffc"](L_1_[35]["Character"], "God's Chalice") or L_1_[45]["ffc"](L_1_[40], "Dough King") or L_1_[45]["ffc"](L_1_[7], "Dough King") then
			repeat
				wait()
				for L_236_forvar0, L_237_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
					local L_238_ = {}
					L_238_[2], L_238_[3] = L_236_forvar0, L_237_forvar1
					if L_238_[3]["Type"] == "Material" then
						if L_238_[3]["Name"] == "Mirror Fractal" then
							Mirror_Fractal_H = true
						end
					end
				end
				if L_1_[45]["ffc"](L_1_[40], "Dough King") or L_1_[45]["ffc"](L_1_[7], "Dough King") then
					if L_1_[45]["ffc"](L_1_[40], "Dough King") then
						for L_239_forvar0, L_240_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_241_ = {}
							L_241_[2], L_241_[1] = L_239_forvar0, L_240_forvar1
							if L_241_[1]["Name"] == "Dough King" and L_241_[1]["Humanoid"]["Health"] > 0 then
								repeat
									wait(.1)
									L_1_[31](L_241_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
									L_1_[14]()
								until not L_241_[1]["Parent"] or L_241_[1]["Humanoid"]["Health"] <= 0
								for L_242_forvar0, L_243_forvar1 in pairs((game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
									local L_244_ = {}
									L_244_[3], L_244_[1] = L_242_forvar0, L_243_forvar1
									if L_244_[1]["Type"] == "Material" then
										if L_244_[1]["Name"] == "Mirror Fractal" then
											Mirror_Fractal_H = true
										end
									end
								end
								return
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Dough King") then
						L_1_[31]((game["ReplicatedStorage"]:FindFirstChild("Dough King"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
					end
				elseif L_1_[45]["ffc"](L_1_[35]["Backpack"], "Sweet Chalice") or L_1_[45]["ffc"](L_1_[35]["Character"], "Sweet Chalice") and not Mirror_Fractal_H then
					if (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-2286.6843261719, 146.56562805176, -12226.881835938))["Magnitude"] >= 1800 then
						repeat
							wait()
							L_1_[31](CFrame["new"](-2286.6843261719, 146.56562805176, -12226.881835938), 1.5)
						until (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-2286.6843261719, 146.56562805176, -12226.881835938))["Magnitude"] <= 3
					elseif (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-2286.6843261719, 146.56562805176, -12226.881835938))["Magnitude"] < 1800 then
						Monster = nil
						for L_245_forvar0 = 1500, 0, -300 do
							local L_246_ = {}
							L_246_[1] = L_245_forvar0
							L_1_[45]["GetMonster"](L_246_[1])
						end
						if Monster ~= nil and Monster["Humanoid"]["Health"] > 0 then
							local L_247_ = {}
							PosMon_X = Monster["HumanoidRootPart"]["CFrame"]
							StatrMagnet = true
							repeat
								wait()
								L_1_[31](Monster["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -17, 0), 1.5)
								L_1_[14]()
							until not Monster["Parent"] or Monster["Humanoid"]["Health"] <= 0
							StatrMagnet = false
							L_247_[1] = tostring(string["match"](tostring(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+"))
							if L_247_[1] == "nil" or L_247_[1] == nil then
								L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
							end
						elseif Monster == nil then
							for L_248_forvar0 = 1500, 0, -300 do
								local L_249_ = {}
								L_249_[2] = L_248_forvar0
								L_1_[45]["GetMonster"](L_249_[2])
							end
							if Monster == nil then
								L_1_[31](CFrame["new"](-2286.6843261719, 146.56562805176, -12226.881835938), 1.5)
							end
						end
					end
				elseif L_1_[45]["ffc"](L_1_[35]["Backpack"], "God's Chalice") or L_1_[45]["ffc"](L_1_[35]["Character"], "God's Chalice") and not Mirror_Fractal_H then
					if L_1_[45]["CheckItem"]("Conjured Cocoa") >= 10 then
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("SweetChaliceNpc")
					elseif L_1_[45]["CheckItem"]("Conjured Cocoa") < 10 then
						if (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](658.22302246094, 24.734258651733, -12541.991210938))["Magnitude"] >= 1800 then
							repeat
								wait()
								L_1_[31](CFrame["new"](658.22302246094, 24.734258651733, -12541.991210938), 1.5)
							until (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](658.22302246094, 24.734258651733, -12541.991210938))["Magnitude"] <= 3 or L_1_[45]["CheckItem"]("Conjured Cocoa") >= 10
						elseif (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](658.22302246094, 24.734258651733, -12541.991210938))["Magnitude"] < 1800 then
							Monster = nil
							for L_250_forvar0 = 1500, 0, -300 do
								local L_251_ = {}
								L_251_[1] = L_250_forvar0
								L_1_[45]["GetMonster"](L_251_[1])
							end
							if Monster ~= nil and Monster["Humanoid"]["Health"] > 0 then
								PosMon_X = Monster["HumanoidRootPart"]["CFrame"]
								StatrMagnet = true
								repeat
									wait()
									L_1_[31](Monster["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -17, 0), 1.5)
									L_1_[14]()
								until not Monster["Parent"] or Monster["Humanoid"]["Health"] <= 0
								StatrMagnet = false
							elseif Monster == nil then
								for L_252_forvar0 = 1500, 0, -300 do
									local L_253_ = {}
									L_253_[2] = L_252_forvar0
									L_1_[45]["GetMonster"](L_253_[2])
								end
								if Monster == nil then
									L_1_[31](CFrame["new"](658.22302246094, 24.734258651733, -12541.991210938), 1.5)
								end
							end
						end
					end
				elseif not L_1_[40]:FindFirstChild("Dough King") and not L_1_[7]:FindFirstChild("Dough King") then
					L_198_[2] = true
				end
			until Mirror_Fractal_H or L_198_[2]
		end
	end
	if Three_World then
		if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("EliteHunter") ~= L_1_[3]({
			"I don't have anythin";
			"g for you right now.",
			" Come back later."
		}) then
			L_1_[7]["Remotes"]["CommF_"]:InvokeServer("EliteHunter")
			for L_254_forvar0, L_255_forvar1 in ipairs({
				"Diablo";
				"Deandre";
				"Urban"
			}) do
				local L_256_ = {}
				L_256_[2], L_256_[1] = L_254_forvar0, L_255_forvar1
				L_256_[3] = L_1_[40]:FindFirstChild(L_256_[1]) or L_1_[7]:FindFirstChild(L_256_[1])
				if L_256_[3] and (L_256_[3]:FindFirstChild("HumanoidRootPart") and (L_256_[3]:FindFirstChild("Humanoid") and L_256_[3]["Humanoid"]["Health"] > 0)) then
					repeat
						L_1_[45]["wt"]()
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("EliteHunter")
						L_1_[31](L_256_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
						if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
							L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
						end
						L_1_[14]()
					until not L_256_[3]["Parent"] or L_256_[3]["Humanoid"]["Health"] <= 0
				end
			end
		end
	end
	if New_World then
		if L_1_[45]["ffc"](L_1_[40], "Darkbeard") or L_1_[45]["ffc"](L_1_[7], "Darkbeard") then
			if L_1_[45]["ffc"](L_1_[40], "Darkbeard") then
				for L_257_forvar0, L_258_forvar1 in pairs(L_1_[40]:GetChildren()) do
					local L_259_ = {}
					L_259_[3], L_259_[1] = L_257_forvar0, L_258_forvar1
					if L_259_[1]["Name"] == "Darkbeard" and L_259_[1]["Humanoid"]["Health"] > 0 then
						repeat
							L_1_[45]["wt"]()
							if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
								L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
							end
							L_1_[31](L_259_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
							L_1_[14]()
						until not L_259_[1]["Parent"] or L_259_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
					end
				end
			elseif L_1_[45]["ffc"](L_1_[7], "Darkbeard") then
				for L_260_forvar0, L_261_forvar1 in pairs(L_1_[7]:GetChildren()) do
					local L_262_ = {}
					L_262_[2], L_262_[1] = L_260_forvar0, L_261_forvar1
					if L_262_[1]["Name"] == "Darkbeard" and L_262_[1]["Humanoid"]["Health"] > 0 then
						repeat
							L_1_[45]["wt"]()
							if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
								L_1_[35]["Character"]["HumanoidRootPart"]["Remotes"]["CommF_"]:InvokeServer("Buso")
							end
							L_1_[31](L_262_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, -30, 0), 1.5)
							L_1_[14]()
						until not L_262_[1]["Parent"] or L_262_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
					end
				end
			end
		end
	end
	if New_World then
		if L_1_[45]["ffc"](L_1_[40], "Core") or L_1_[45]["ffc"](L_1_[7], "Core") then
			if L_1_[45]["ffc"](L_1_[40], "Core") then
				for L_263_forvar0, L_264_forvar1 in pairs(L_1_[40]:GetChildren()) do
					local L_265_ = {}
					L_265_[1], L_265_[2] = L_263_forvar0, L_264_forvar1
					if L_265_[2]["Name"] == "Core" and L_265_[2]["Humanoid"]["Health"] > 0 then
						repeat
							L_1_[45]["wt"]()
							L_1_[31](L_265_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
							if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
								L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
							end
							L_1_[14]()
						until not L_265_[2]["Parent"] or L_265_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
					end
				end
			elseif L_1_[45]["ffc"](L_1_[7], "Core") then
				for L_266_forvar0, L_267_forvar1 in pairs(L_1_[7]:GetChildren()) do
					local L_268_ = {}
					L_268_[3], L_268_[2] = L_266_forvar0, L_267_forvar1
					if L_268_[2]["Name"] == "Core" and L_268_[2]["Humanoid"]["Health"] > 0 then
						repeat
							L_1_[45]["wt"]()
							L_1_[31](L_268_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
							if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
								L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
							end
							L_1_[14]()
						until not L_268_[2]["Parent"] or L_268_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
					end
				end
			end
		end
	end
	L_1_[8]()
	if Quest ~= nil then
		return
	end
	if L_1_[24]["Value"] < 2650 or not Three_World then
		if L_1_[24]["Value"] <= 9 and (not New_World and not Three_World) then
			if L_1_[35]["PlayerGui"]["Main"]["Quest"]["Visible"] then
				if L_1_[45]["sf"](L_1_[35]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], tostring(NameEnemy)) then
					if L_1_[45]["ffc"](L_1_[40], Enemy) then
						for L_269_forvar0, L_270_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_271_ = {}
							L_271_[1], L_271_[2] = L_269_forvar0, L_270_forvar1
							if L_271_[2]["Name"] == Enemy and (L_1_[45]["ffc"](L_271_[2], "Humanoid") and (L_271_[2]["Humanoid"]["Health"] > 0 and L_1_[45]["ffc"](L_271_[2], "HumanoidRootPart"))) then
								repeat
									L_1_[45]["wt"]()
									L_1_[45]["BN"](L_271_[2]["Name"])
									L_1_[31](L_271_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until L_271_[2]["Humanoid"]["Health"] <= 0 or not L_1_[40]:FindFirstChild(Enemy) or not(L_1_[35]["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or not(getgenv())["AutoFarm"] or Quest ~= nil
							end
						end
					else
						L_1_[31](EnemyPos, 1.5)
					end
				else
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
				end
			else
				repeat
					L_1_[45]["wt"]()
					L_1_[31](QuestPos, 1.5)
					if (QuestPos["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5 and (L_1_[35]["Character"]:WaitForChild("Humanoid"))["Health"] > 0 then
						L_1_[45]["wt"]();
						((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("StartQuest", QuestName, QuestNumber)
					end
				until (L_1_[35]["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or not(getgenv())["AutoFarm"] or Quest ~= nil
			end
		elseif L_1_[24]["Value"] >= 9 and (L_1_[24]["Value"] <= 70 and (not New_World and not Three_World)) then
			if ((CFrame["new"](-7895, 5546, -380))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1000 then
				if L_1_[45]["ffc"](L_1_[40], "Shanda") then
					for L_272_forvar0, L_273_forvar1 in pairs(L_1_[40]:GetChildren()) do
						local L_274_ = {}
						L_274_[2], L_274_[1] = L_272_forvar0, L_273_forvar1
						if L_274_[1]["Name"] == "Shanda" and (L_274_[1]:FindFirstChild("Humanoid") and L_274_[1]["Humanoid"]["Health"] > 0) then
							repeat
								L_1_[45]["wt"]()
								SROP = true
								L_1_[31](L_274_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
								L_1_[14]()
								L_1_[45]["BN"](L_274_[1]["Name"])
							until not L_274_[1]["Parent"] or L_274_[1]["Humanoid"]["Health"] <= 0 or L_1_[24]["Value"] >= 91 or not(getgenv())["AutoFarm"] or Quest ~= nil
						end
					end
				else
					L_1_[31](CFrame["new"](-7757, 5582, -481), 1.5)
				end
			else
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("requestEntrance", Vector3["new"](-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
		elseif L_1_[24]["Value"] >= 71 then
			if L_1_[35]["PlayerGui"]["Main"]["Quest"]["Visible"] then
				if L_1_[45]["sf"](L_1_[35]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], tostring(NameEnemy)) then
					if L_1_[45]["ffc"](L_1_[40], Enemy) then
						for L_275_forvar0, L_276_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_277_ = {}
							L_277_[1], L_277_[2] = L_275_forvar0, L_276_forvar1
							if L_277_[2]["Name"] == Enemy and (L_277_[2]:FindFirstChild("Humanoid") and (L_277_[2]["Humanoid"]["Health"] > 0 and L_277_[2]:FindFirstChild("HumanoidRootPart"))) then
								repeat
									L_1_[45]["wt"]()
									SROP = false
									L_1_[31](L_277_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[45]["BN"](L_277_[2]["Name"])
									L_1_[14]()
								until L_277_[2]["Humanoid"]["Health"] <= 0 or not L_1_[40]:FindFirstChild(Enemy) or not(L_1_[35]["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or Quest ~= nil
							end
						end
					else
						L_1_[31](EnemyPos, 1.5)
					end
				else
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("AbandonQuest")
				end
			else
				repeat
					L_1_[45]["wt"]()
					L_1_[31](QuestPos, 1.5)
					if (QuestPos["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5 and (L_1_[35]["Character"]:WaitForChild("Humanoid"))["Health"] > 0 then
						L_1_[45]["wt"](.5);
						((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("StartQuest", QuestName, QuestNumber)
					end
				until (L_1_[35]["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or not(getgenv())["AutoFarm"] or Quest ~= nil
			end
		end
	elseif L_1_[24]["Value"] >= 2650 and Three_World then
		SROP = false
		if L_1_[45]["ffc"](L_1_[7], "Cake Prince") then
			for L_278_forvar0, L_279_forvar1 in pairs(L_1_[7]:GetChildren()) do
				local L_280_ = {}
				L_280_[1], L_280_[2] = L_278_forvar0, L_279_forvar1
				if L_280_[2]["Name"] == "Cake Prince" and (L_280_[2]:FindFirstChild("Humanoid") and (L_280_[2]:FindFirstChild("Humanoid"))["Health"] > 0) then
					L_1_[31](L_280_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 42, 10), 1.5)
				end
			end
		elseif L_1_[45]["ffc"](L_1_[40], "Cake Prince") then
			for L_281_forvar0, L_282_forvar1 in pairs(L_1_[40]:GetChildren()) do
				local L_283_ = {}
				L_283_[1], L_283_[2] = L_281_forvar0, L_282_forvar1
				if L_283_[2]["Name"] == "Cake Prince" and (L_283_[2]:FindFirstChild("Humanoid") and (L_283_[2]:FindFirstChild("Humanoid"))["Health"] > 0) then
					L_1_[31](L_283_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 42, 10), 1.5)
				end
			end
		else
			if tostring(string["match"](tostring(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+")) == "nil" or tostring(string["match"](tostring(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner")), "%d+")) == nil then
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CakePrinceSpawner", true)
			end
			if L_1_[45]["ffc"](L_1_[40], "Cookie Crafter") or L_1_[45]["ffc"](L_1_[40], "Cake Guard") or L_1_[45]["ffc"](L_1_[40], "Baking Staff") or L_1_[45]["ffc"](L_1_[40], "Head Baker") then
				for L_284_forvar0, L_285_forvar1 in pairs(L_1_[40]:GetChildren()) do
					local L_286_ = {}
					L_286_[1], L_286_[2] = L_284_forvar0, L_285_forvar1
					if L_286_[2]["Name"] == "Cookie Crafter" or L_286_[2]["Name"] == "Cake Guard" or L_286_[2]["Name"] == "Baking Staff" or L_286_[2]["Name"] == "Head Baker" then
						repeat
							L_1_[45]["wt"]()
							L_1_[31](L_286_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
							if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
								L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
							end
							L_1_[45]["BN"](L_286_[2]["Name"])
							L_1_[14]()
						until L_286_[2]["Humanoid"]["Health"] <= 0 or not L_1_[40]:FindFirstChild(Enemy) or not(L_1_[35]["PlayerGui"]["Main"]:FindFirstChild("Quest"))["Visible"] or Quest ~= nil
					end
				end
			else
				L_1_[31](CFrame["new"](-2091.9118652344, 70.008842468262, -12142.8359375), 1.5)
			end
		end
	end
end
L_1_[38] = function()
	if not noFruit then
		for L_287_forvar0, L_288_forvar1 in pairs(L_1_[35]["Backpack"]:GetChildren()) do
			local L_289_ = {}
			L_289_[3], L_289_[2] = L_287_forvar0, L_288_forvar1
			if L_289_[2]:GetAttribute("OriginalName") ~= nil and (L_1_[45]["sf"](L_289_[2]["Name"], "Fruit") and (L_289_[2]:IsA("Tool") and not L_1_[45]["IsInList"](L_1_[45]["GetType"](), L_289_[2]:GetAttribute("OriginalName")))) then
				local L_290_ = {}
				L_290_[1] = {
					"StoreFruit";
					L_289_[2]:GetAttribute("OriginalName"),
					L_289_[2]
				};
				((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(L_290_[1]))
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GetFruits", false)
			end
		end
		for L_291_forvar0, L_292_forvar1 in pairs(L_1_[35]["Character"]:GetChildren()) do
			local L_293_ = {}
			L_293_[3], L_293_[1] = L_291_forvar0, L_292_forvar1
			if L_293_[1]:GetAttribute("OriginalName") ~= nil and (L_1_[45]["sf"](L_293_[1]["Name"], "Fruit") and (L_293_[1]:IsA("Tool") and not L_1_[45]["IsInList"](L_1_[45]["GetType"](), L_293_[1]:GetAttribute("OriginalName")))) then
				local L_294_ = {}
				L_294_[2] = {
					"StoreFruit";
					L_293_[1]:GetAttribute("OriginalName"),
					L_293_[1]
				};
				((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(L_294_[2]))
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GetFruits", false)
			end
		end
	end
end
_G["Ew"] = true
Ewx = true
task["spawn"](function()
	while L_1_[45]["wt"]() do
		if _G["Ew"] then
			L_1_[14]()
		else
			L_1_[38]()
			if Ewx then
				L_1_[21] = 0
			else
				L_1_[21] = .2
			end
		end
	end
end)
task["spawn"](function()
	while L_1_[45]["wt"](1) do
		xpcall(function()
			if not Black_Leg_C then
				repeat
					L_1_[45]["wt"](L_1_[21])
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
					L_1_[14]()
					L_1_[45]["wt"](.05)
					if L_1_[45]["ffc"](L_1_[35]["Character"], "Black Leg") or L_1_[45]["ffc"](L_1_[35]["Backpack"], "Black Leg") and not Black_Leg_C then
						Black_Leg_C = true
						L_1_[45]["Equip"]("Black Leg")
					end
				until Black_Leg_C
			end
			if not Electro_C then
				repeat
					L_1_[45]["wt"](L_1_[21])
					L_1_[14]()
					L_1_[2]:SendKeyEvent(true, "V", false, game)
					wait(.5)
					L_1_[2]:SendKeyEvent(false, "V", false, game)
					if L_1_[45]["ffc"](L_1_[35]["Character"], "Black Leg") and (L_1_[35]["Character"]["Black Leg"]["Level"]["Value"] >= 300 and not Electro_C) then
						if L_1_[35]["Character"]["Black Leg"]["Level"]["Value"] >= 400 then
							Black_Leg_C_M = true
						end
						Electro_C = true
						L_1_[45]["wt"](.05)
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
					end
				until Electro_C
			end
			if not Fishman_Karate_C then
				repeat
					L_1_[45]["wt"](L_1_[21])
					L_1_[14]()
					if L_1_[45]["ffc"](L_1_[35]["Character"], "Electro") and (L_1_[35]["Character"]["Electro"]["Level"]["Value"] >= 300 and not Fishman_Karate_C) then
						if L_1_[35]["Character"]["Electro"]["Level"]["Value"] >= 400 then
							Electro_C_M = true
						end
						Fishman_Karate_C = true
						L_1_[45]["wt"](.05)
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
					end
				until Fishman_Karate_C
			end
			if not Fishman_Karate_C_M then
				repeat
					local L_295_ = {}
					task["wait"](L_1_[21])
					L_1_[14]()
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
					L_295_[2] = L_1_[35]["Character"]:FindFirstChild("Fishman Karate")
					if L_295_[2] and (L_295_[2]:FindFirstChild("Level") and L_295_[2]["Level"]["Value"] >= 400) then
						Fishman_Karate_C_M = true
					end
				until Fishman_Karate_C_M
			end
			L_1_[45]["wt"](L_1_[21])
			if not Dragon_Claw_C then
				local L_296_ = {}
				L_296_[2] = L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "DragonClaw", "2")
				if L_296_[2] == 1 or L_296_[2] == 2 then
					pcall(function()
						if L_1_[35]["Character"]["Fishman Karate"]["Level"]["Value"] >= 400 then
							Fishman_Karate_C_M = true
						end
					end)
					Dragon_Claw_C = true
				end
			end
			repeat
				task["wait"](L_1_[21])
				L_1_[14]()
				if not Super_human then
					if Dragon_Claw_C then
						if L_1_[45]["ffc"](L_1_[35]["Character"], "Dragon Claw") and L_1_[35]["Character"]["Dragon Claw"]["Level"]["Value"] >= 300 then
							local L_297_ = {}
							if L_1_[35]["Character"]["Dragon Claw"]["Level"]["Value"] >= 400 then
								Dragon_Claw_C_M = true
							end
							L_297_[2] = {
								[1] = "BuySuperhuman"
							}
							if L_1_[7]["Remotes"]["CommF_"]:InvokeServer(unpack(L_297_[2])) == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer(unpack(L_297_[2])) == 2 then
								Super_human = true
								if L_1_[35]["Character"]["Superhuman"]["Level"]["Value"] >= 400 then
									Super_humanw_C_M = true
								end
							end
						end
					end
				end
			until Super_human
			if not Death_Step then
				if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep") == 2 then
					Death_Step = true
				end
			end
			if Black_Leg_C_M then
				repeat
					local L_298_ = {}
					task["wait"](L_1_[21])
					L_1_[14]()
					L_298_[1] = L_1_[35]["Character"]:FindFirstChild("Death Step")
					if L_298_[1] and (L_298_[1]:FindFirstChild("Level") and L_298_[1]["Level"]["Value"] >= 400) then
						local L_299_ = {}
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
						L_299_[1] = L_1_[35]["Character"]:FindFirstChild("Black Leg")
						if L_299_[1] and (L_299_[1]:FindFirstChild("Level") and L_299_[1]["Level"]["Value"] >= 400) then
							Black_Leg_C_M = true
						end
					end
				until Black_Leg_C_M
			end
			if not Death_Step_C_M then
				repeat
					local L_300_ = {}
					task["wait"](L_1_[21])
					L_1_[14]()
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
					L_300_[1] = L_1_[35]["Character"]:FindFirstChild("Death Step")
					if L_300_[1] and (L_300_[1]:FindFirstChild("Level") and L_300_[1]["Level"]["Value"] >= 400) then
						Death_Step_C_M = true
					end
				until Death_Step_C_M
			end
			if not Electro_C_M then
				repeat
					local L_301_ = {}
					task["wait"](L_1_[21])
					L_1_[14]()
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectro")
					L_301_[1] = L_1_[35]["Character"]:FindFirstChild("Electro")
					if L_301_[1] and (L_301_[1]:FindFirstChild("Level") and L_301_[1]["Level"]["Value"] >= 400) then
						Electro_C_M = true
					end
				until Electro_C_M
			end
			if not Fishman_Karate_C_M then
				repeat
					local L_302_ = {}
					task["wait"](L_1_[21])
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
					warn()
					L_302_[1] = L_1_[35]["Character"]:FindFirstChild("Fishman Karate")
					if L_302_[1] and (L_302_[1]:FindFirstChild("Level") and L_302_[1]["Level"]["Value"] >= 400) then
						Fishman_Karate_C_M = true
					end
				until Fishman_Karate_C_M
			end
			if not Dragon_Claw_C_M then
				repeat
					local L_303_ = {}
					task["wait"](L_1_[21])
					L_1_[14]()
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "DragonClaw", "2")
					L_303_[1] = L_1_[35]["Character"]:FindFirstChild("Dragon Claw")
					if L_303_[1] and (L_303_[1]:FindFirstChild("Level") and L_303_[1]["Level"]["Value"] >= 400) then
						Dragon_Claw_C_M = true
					end
				until Dragon_Claw_C_M
			end
			if not Sharkman_Karate_C then
				repeat
					L_1_[45]["wt"](L_1_[21])
					L_1_[14]()
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
					if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Sharkman Karate") or L_1_[45]["ffc"](L_1_[35]["Character"], "Sharkman Karate") then
						Sharkman_Karate_C = true
					end
				until Sharkman_Karate_C
			end
			if not Sharkman_Karate_C_M then
				repeat
					local L_304_ = {}
					task["wait"](L_1_[21])
					L_1_[14]()
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
					L_304_[1] = L_1_[35]["Character"]:FindFirstChild("Sharkman Karate")
					if L_304_[1] and (L_304_[1]:FindFirstChild("Level") and L_304_[1]["Level"]["Value"] >= 400) then
						Sharkman_Karate_C_M = true
					end
				until Sharkman_Karate_C_M
			end
			if not Electric_Claw_C then
				repeat
					task["wait"](L_1_[21])
					if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 2 then
						Electric_Claw_C = true
					end
				until Electric_Claw_C
			end
			if not Electric_Claw_C_M then
				repeat
					local L_305_ = {}
					task["wait"](L_1_[21])
					L_1_[14]()
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
					L_305_[2] = L_1_[35]["Character"]:FindFirstChild("Electric Claw")
					if L_305_[2] and (L_305_[2]:FindFirstChild("Level") and L_305_[2]["Level"]["Value"] >= 400) then
						Electric_Claw_C_M = true
					end
				until Electric_Claw_C_M
			end
			if not Dragon_Talon_C then
				repeat
					task["wait"](L_1_[21])
					if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon") == 2 then
						Dragon_Talon_C = true
					end
				until Dragon_Talon_C
			end
			if not Dragon_Talon_C_M then
				repeat
					local L_306_ = {}
					task["wait"](L_1_[21])
					L_1_[14]()
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
					L_306_[1] = L_1_[35]["Character"]:FindFirstChild("Dragon Talon")
					if L_306_[1] and (L_306_[1]:FindFirstChild("Level") and L_306_[1]["Level"]["Value"] >= 400) then
						Dragon_Talon_C_M = true
					end
				until Dragon_Talon_C_M
			end
			if not God_Human_C then
				repeat
					task["wait"](L_1_[21])
					if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman") == 2 then
						God_Human_C = true
					end
				until God_Human_C
			end
			if not God_Human_C_M then
				repeat
					local L_307_ = {}
					task["wait"](L_1_[21])
					L_1_[14]()
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman")
					L_307_[2] = L_1_[35]["Character"]:FindFirstChild("Godhuman")
					if L_307_[2] and (L_307_[2]:FindFirstChild("Level") and L_307_[2]["Level"]["Value"] >= 400) then
						God_Human_C_M = true
					end
				until God_Human_C_M
			end
		end, warn)
	end
end);
(getgenv())["AutoFarm"] = true
if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate", true) ~= L_1_[3]({
	"I lost my house keys",
	", could you help me ";
	"find them? Thanks."
}) then
	CheckFindWaterKey = true
end
if L_1_[24]["Value"] >= 2000 and (getgenv())["Configs"]["Quest"]["RGB Haki"] then
	if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == 1 then
		RGB_Haki_H = true
	end
end
L_1_[50] = function()
	if not L_1_[45]["gi"]("Cursed Dual Katana") then
		if L_1_[45]["gi"]("Tushita") and L_1_[45]["gi"]("Yama") then
			local L_308_ = {}
			L_308_[1] = (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("getInventory")
			for L_309_forvar0, L_310_forvar1 in pairs(L_308_[1]) do
				local L_311_ = {}
				L_311_[3], L_311_[2] = L_309_forvar0, L_310_forvar1
				if L_311_[2]["Type"] == "Sword" then
					if L_311_[2]["Name"] == "Tushita" and L_311_[2]["Mastery"] >= 400 then
						Tushita_M = true
					elseif L_311_[2]["Name"] == "Yama" and L_311_[2]["Mastery"] >= 400 then
						Yama_M = true
					end
				end
			end
			return Tushita_M and Yama_M
		end
	end
	return false
end
task["spawn"](function()
	while L_1_[45]["wt"]() do
		xpcall(function()
			if (getgenv())["AutoFarm"] then
				local L_312_ = {}
				Stop_Fast_Attack = false
				if L_1_[24]["Value"] >= 1500 or RainbowSaviour then
					if (((L_1_[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
						["StorageName"] = "Rainbow Saviour",
						["Type"] = "AuraSkin";
						["Context"] = "Equip"
					}) ~= false then
						(((L_1_[7]:WaitForChild("Modules")):WaitForChild("Net")):WaitForChild("RF/FruitCustomizerRF")):InvokeServer({
							["StorageName"] = "Rainbow Saviour";
							["Type"] = "AuraSkin";
							["Context"] = "Equip"
						})
					end
				end
				L_312_[1] = false
				if ((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Cousin", "Buy") == 1 then
					L_1_[45]["wt"](1)
					L_1_[38]()
				else
					for L_313_forvar0, L_314_forvar1 in pairs(L_1_[19]:GetChildren()) do
						local L_315_ = {}
						L_315_[1], L_315_[3] = L_313_forvar0, L_314_forvar1
						if L_315_[3]:GetAttribute("OriginalName") ~= nil and (L_1_[45]["sf"](L_315_[3]["Name"], "Fruit") and (L_315_[3]:IsA("Tool") and not L_1_[45]["IsInList"](L_1_[45]["GetType"](), L_315_[3]:GetAttribute("OriginalName")))) then
							repeat
								L_1_[45]["wt"](.1)
								L_1_[45]["Status"](" Status : TP To " .. L_315_[3]["Name"])
								TPZ(L_315_[3]["Handle"]["CFrame"])
								L_312_[1] = true
								L_1_[38]()
							until not L_315_[3] or game["Players"]["LocalPlayer"]["Backpack"]:FindFirstChild(L_315_[3]["Name"]) or L_1_[45]["IsInList"](L_1_[45]["GetType"](), L_315_[3]:GetAttribute("OriginalName")) or (L_315_[3]["Handle"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10 or not(getgenv())["AutoFarm"]
						end
					end
					if not L_312_[1] then
						local L_316_ = {}
						if L_1_[45]["tf"](Configs["Gun"], "Magma Blaster") and (L_1_[24]["Value"] >= 200 and (not L_1_[45]["gi"]("Magma Blaster") and (Old_World and L_1_[45]["CheckBoss"]("Magma Admiral")))) then
							Quest = "Magma Blaster"
							return
						end
						if L_1_[45]["tf"](Configs["Gun"], "Bazooka") and (L_1_[24]["Value"] >= 200 and (not L_1_[45]["gi"]("Bazooka") and (Old_World and L_1_[45]["CheckBoss"]("Wysper")))) then
							Quest = "Bazooka"
							return
						end
						if L_1_[45]["tf"](Configs["Sword"], "Saber") and (L_1_[24]["Value"] >= 200 and not L_1_[45]["gi"]("Saber")) then
							Quest = "Saber"
							return
						end
						if L_1_[45]["tf"](Configs["Sword"], "Shark Saw") and (L_1_[24]["Value"] >= 100 and (not L_1_[45]["gi"]("Shark Saw") and (Old_World and L_1_[45]["CheckBoss"]("The Saw")))) then
							Quest = "Shark Saw"
							return
						end
						if L_1_[45]["tf"](Configs["Sword"], "Wardens Sword") and (L_1_[24]["Value"] >= 100 and (not L_1_[45]["gi"]("Wardens Sword") and (Old_World and L_1_[45]["CheckBoss"]("Chief Warden")))) then
							Quest = "Wardens Sword"
							return
						end
						if L_1_[45]["tf"](Configs["Sword"], "Pole (1st Form)") and (L_1_[24]["Value"] >= 100 and (not L_1_[45]["gi"]("Pole (1st Form)") and (Old_World and L_1_[45]["CheckBoss"]("Thunder God")))) then
							Quest = "Pole (1st Form)"
							return
						end
						if ((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("Alchemist", "1") ~= -2 and (L_1_[1]["Value"] >= 2500000 and (L_1_[24]["Value"] >= 850 and (L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 and not L_1_[45]["ffc"](L_1_[35]["Data"]["Race"], "Evolved")))) then
							Quest = "Evo Race V1"
							return
						end
						if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "3") ~= -2 and (L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") == 0 and (L_1_[45]["IsHeavenly"]() and (L_1_[22]["Value"] >= 1400 and L_1_[1]["Value"] >= 2000000))) then
							Quest = "Evo Race V2"
							return
						end
						if L_1_[45]["tf"](Configs["Sword"], "Gravity Blade") and (not L_1_[45]["gi"]("Gravity Blade") and (New_World and (L_1_[45]["CheckBoss"]("Orbitus") and L_1_[24]["Value"] >= 800))) then
							Quest = "Gravity Blade"
							return
						end
						if L_1_[45]["tf"](Configs["Sword"], "Longsword") and (not L_1_[45]["gi"]("Longsword") and (New_World and (L_1_[45]["CheckBoss"]("Diamond") and L_1_[24]["Value"] >= 800))) then
							Quest = "Longsword"
							return
						end
						if L_1_[45]["tf"](Configs["Sword"], "Rengoku") and (not L_1_[45]["gi"]("Rengoku") and (New_World and (L_1_[45]["CheckBoss"]("Awakened Ice Admiral") and L_1_[24]["Value"] >= 800))) then
							Quest = "Rengoku"
							return
						end
						if L_1_[45]["IsHall"]() and (New_World and (L_1_[45]["CheckBoss"]("Awakened Ice Admiral") and L_1_[24]["Value"] >= 800)) then
							Quest = "Rengoku"
							return
						end
						if not L_1_[45]["gi"]("Rengoku") and (L_1_[45]["CheckBackpack"]("Hidden Key") and New_World) then
							repeat
								L_1_[45]["wt"](.3)
								L_1_[45]["Status"](L_1_[3]({
									" Status : Use Hidden";
									" Key"
								}))
								L_1_[45]["Equip"]("Hidden Key")
								L_1_[31](CFrame["new"](6572.29248, 295.712677, -6966.09961, .803500533, -3.27515153e-08, .595304072, 3.97485422e-08, 1, 1.36659384e-09, -0.595304072, 2.25644108e-08, .803500533), 1.5)
							until (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](6572.29248, 295.712677, -6966.09961))["Magnitude"] <= 5 or not(getgenv())["AutoFarm"]
							L_1_[45]["wt"](1)
							return
						end
						if New_World and (L_1_[45]["IsHall"]() and L_1_[45]["CheckBackpack"]("Library Key")) then
							repeat
								L_1_[45]["wt"](.1)
								L_1_[45]["Status"](L_1_[3]({
									" Status : Use Librar",
									"y Key"
								}))
								L_1_[45]["Equip"]("Library Key")
								L_1_[31](CFrame["new"](6377.12549, 296.634735, -6843.76025, -0.860993743, 1.17677516e-07, -0.508615494, 1.31121894e-07, 1, 9.40274347e-09, .508615494, -5.8594928e-08, -0.860993743), 1.5)
							until (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](6377.12549, 296.634735, -6843.76025))["Magnitude"] <= 1 or not L_1_[45]["IsHall"]() or not(getgenv())["AutoFarm"]
							L_1_[45]["wt"](1)
							return
						end
						if L_1_[45]["tf"](Configs["Sword"], "Flail") and (not L_1_[45]["gi"]("Flail") and (New_World and L_1_[45]["CheckBoss"]("Smoke Admiral"))) then
							Quest = "Flail"
							return
						end
						if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "Bartilo") ~= 3 and L_1_[24]["Value"] >= 850 then
							Quest = "BartiloQuest"
							return
						end
						if not CheckFindWaterKey then
							if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate", true) == L_1_[3]({
								"I lost my house keys";
								", could you help me ",
								"find them? Thanks."
							}) and L_1_[24]["Value"] >= 850 then
								Quest = "Find Water Key"
								return
							end
						end
						if New_World and (not L_1_[45]["IsHeavenly"]() and L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") == 0) then
							Quest = "Don Swan"
							return
						end
						if Three_World and (L_1_[45]["tf"](Configs["Sword"], "Yama") and (L_1_[7]["Remotes"]["CommF_"]:InvokeServer("EliteHunter", "Progress") >= 30 and not L_1_[45]["gi"]("Yama"))) then
							Quest = "Yama"
							return
						end
						if Three_World and (L_1_[45]["tf"](Configs["Sword"], "Tushita") and (not L_1_[45]["gi"]("Tushita") and Unlock_Tushita_Quest)) then
							Quest = "Longma"
							return
						end
						if L_1_[45]["tf"](Configs["Gun"], "Soul Guitar") and (not L_1_[45]["gi"]("Soul Guitar") and (L_1_[24]["Value"] >= 2000 and L_1_[45]["CheckItem"]("Dark Fragment") >= 1)) then
							Quest = "Soul Guitar"
							return
						end
						if L_1_[24]["Value"] >= 2000 and ((getgenv())["Configs"]["Quest"]["RGB Haki"] and not RGB_Haki_H) then
							if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == nil then
								Quest = "RGB"
								return
							end
						end
						if L_1_[45]["tf"](Configs["Gun"], "Venom Bow") and (not L_1_[45]["gi"]("Venom Bow") and (Three_World and L_1_[45]["CheckBoss"]("Hydra Leader"))) then
							Quest = "Venom Bow"
							return
						end
						if L_1_[45]["tf"](Configs["Sword"], "Twin Hooks") and (not L_1_[45]["gi"]("Twin Hooks") and (Three_World and L_1_[45]["CheckBoss"]("Captain Elephant"))) then
							Quest = "Twin Hooks"
							return
						end
						if (game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland") and (not L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CheckTempleDoor") and (L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "3") == -2 and Mirror_Fractal_H)) then
							Quest = "Pull Lerver"
							return
						end
						if L_1_[50]() then
							Quest = "Cursed Dual Katana"
							return
						end
						if not Dragon_Talon_C then
							if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Fire Essence") or L_1_[45]["ffc"](L_1_[35]["Character"], "Fire Essence") then
								repeat
									L_1_[45]["Status"](L_1_[3]({
										" Status : Use Fire E",
										"ssence"
									}))
									L_1_[45]["Equip"]("Fire Essence")
									L_1_[45]["wt"](.5)
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon", true)
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
								until not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Fire Essence") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Fire Essence")
								L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
								Dragon_Talon_C = true
								return
							end
						end
						if Fishman_Karate_C_M and (not Dragon_Claw_C and L_1_[24]["Value"] >= 1100) then
							if not Dragon_Claw_C then
								repeat
									L_1_[45]["wt"]()
									L_1_[14]()
									if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Dragon Claw") or L_1_[45]["ffc"](L_1_[35]["Character"], "Dragon Claw") then
										Dragon_Claw_C = true
										return
									end
									if not Dragon_Claw_C and L_1_[24]["Value"] >= 1100 then
										if L_1_[17]["Value"] >= 1500 then
											local L_317_ = {}
											L_317_[1] = {
												[1] = "BlackbeardReward",
												[2] = "DragonClaw",
												[3] = "2"
											}
											L_1_[7]["Remotes"]["CommF_"]:InvokeServer(unpack(L_317_[1]))
											Dragon_Claw_C = true
											return
										elseif L_1_[17]["Value"] < 1500 then
											if L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (L_1_[17]["Value"] < 1500 and not Dragon_Claw_C) then
												L_1_[45]["Status"](" Status : Farm Raid")
												if #L_1_[45]["GetMobRaid"]() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for L_318_forvar0, L_319_forvar1 in pairs(L_1_[19]:GetDescendants()) do
															local L_320_ = {}
															L_320_[3], L_320_[2] = L_318_forvar0, L_319_forvar1
															if L_320_[2]["Name"] == "Lava" then
																L_320_[2]:Destroy()
															end
														end
													end
													if L_1_[45]["GetRaid"]("Island 5", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 4", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 3", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 2", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 1", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													end
												else
													for L_321_forvar0, L_322_forvar1 in pairs(L_1_[40]:GetChildren()) do
														local L_323_ = {}
														L_323_[2], L_323_[1] = L_321_forvar0, L_322_forvar1
														if L_323_[1]:FindFirstChild("HumanoidRootPart") and (L_323_[1]:FindFirstChild("Humanoid") and ((L_323_[1]:FindFirstChild("Humanoid"))["Health"] > 0 and (L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - L_323_[1]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
															repeat
																local L_324_ = {}
																L_1_[45]["wt"](.1)
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for L_325_forvar0, L_326_forvar1 in pairs(L_1_[19]:GetDescendants()) do
																		local L_327_ = {}
																		L_327_[1], L_327_[2] = L_325_forvar0, L_326_forvar1
																		if L_327_[2]["Name"] == "Lava" then
																			L_327_[2]:Destroy()
																		end
																	end
																end
																L_324_[2] = math["random"](1, 5)
																if L_324_[2] == 1 then
																	L_324_[3] = CFrame["new"](0, 30, 1)
																elseif L_324_[2] == 2 then
																	L_324_[3] = CFrame["new"](0, 30, 15)
																elseif L_324_[2] == 3 then
																	L_324_[3] = CFrame["new"](1, 30, -15)
																elseif L_324_[2] == 4 then
																	L_324_[3] = CFrame["new"](15, 30, 0)
																elseif L_324_[2] == 5 then
																	L_324_[3] = CFrame["new"](-15, 30, 0)
																end
																L_1_[31](L_323_[1]["HumanoidRootPart"]["CFrame"] * L_324_[3], 1.5)
																if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
																end
																L_1_[14]()
															until not L_323_[1]["Parent"] or L_323_[1]["Humanoid"]["Health"] <= 0 or #L_1_[45]["GetMobRaid"]() == 0
														end
													end
												end
											else
												if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
													Select_Map = "Dark"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
													Select_Map = "Sand"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
													Select_Map = "Magma"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
													Select_Map = "Rumble"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
													Select_Map = "Flame"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
													Select_Map = "Ice"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
													Select_Map = "Light"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
													Select_Map = "String"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
													Select_Map = "Quake"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
													Select_Map = "Buddha"
												else
													Select_Map = "Ice"
												end
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
												L_1_[45]["wt"](.2)
												if L_1_[35]["Backpack"]:FindFirstChild("Special Microchip") or L_1_[35]["Character"]:FindFirstChild("Special Microchip") and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
													if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
														local L_328_ = {}
														fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
														L_328_[2] = 0
														repeat
															L_328_[2] = L_328_[2] + 1
															L_1_[45]["wt"](1)
														until L_328_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"] == true
													elseif L_1_[30] == 7449423635 then
														L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
														if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
															if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																local L_329_ = {}
																fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																L_329_[1] = 0
																repeat
																	L_329_[1] = L_329_[1] + 1
																	L_1_[45]["wt"](1)
																until L_329_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"] == true
															end
														end
													end
												else
													if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
														if L_1_[1]["Value"] >= 0 and L_1_[35]["Data"]["Fragments"]["Value"] >= 1500 then
															local L_330_ = {}
															L_330_[2] = {
																[1] = "BlackbeardReward",
																[2] = "DragonClaw",
																[3] = "2"
															};
															(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_330_[2]))
															Dragon_Claw_C = true
															return
														end
														table["sort"](L_1_[45]["GetFruits"](), function(L_331_arg0, L_332_arg1)
															local L_333_ = {}
															L_333_[2], L_333_[1] = L_331_arg0, L_332_arg1
															if L_333_[2]["Value"] < 100000 and L_333_[2]["Value"] < 100000 then
																return L_333_[2]["Value"] < L_333_[1]["Value"]
															end
														end)
														L_1_[45]["wt"](1)
														if #L_1_[45]["GetFruits"]() > 0 and not Dragon_Claw_C then
															L_1_[45]["wt"](2)
															if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
																if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 and L_1_[35]["Data"]["Fragments"]["Value"] < 5000 then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (L_1_[45]["GetFruits"]())[1]["Name"])
																elseif L_1_[17]["Value"] < 5000 then
																	break
																end
																if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
																	Select_Map = "Dark"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
																	Select_Map = "Sand"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
																	Select_Map = "Magma"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
																	Select_Map = "Rumble"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
																	Select_Map = "Flame"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
																	Select_Map = "Ice"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
																	Select_Map = "Light"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
																	Select_Map = "String"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
																	Select_Map = "Quake"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
																	Select_Map = "Buddha"
																else
																	Select_Map = "Ice"
																end
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
																if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																	local L_334_ = {}
																	fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																	L_334_[2] = 0
																	repeat
																		L_334_[2] = L_334_[2] + 1
																		L_1_[45]["wt"](1)
																	until L_334_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																elseif L_1_[30] == 7449423635 then
																	L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
																	if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
																		if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																			local L_335_ = {}
																			fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																			L_335_[1] = 0
																			repeat
																				L_335_[1] = L_335_[1] + 1
																				L_1_[45]["wt"](1)
																			until L_335_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																		end
																	end
																end
															end
														else
															Quest = nil
															L_1_[45]["Status"](L_1_[3]({
																" Status : Auto Farm ",
																"Level"
															}))
															L_1_[39]()
														end
													end
												end
											end
										end
									end
								until Dragon_Claw_C
							end
							return
						end
						L_316_[1] = function()
							for L_336_forvar0, L_337_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
								local L_338_ = {}
								L_338_[3], L_338_[1] = L_336_forvar0, L_337_forvar1
								if L_338_[1]["Value"] and L_338_[1]["Value"] >= 1000000 then
									return true
								end
							end
							return false
						end
						if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") ~= 0 and (game["Players"]["LocalPlayer"]["Data"]["Level"]["Value"] >= 900 and L_316_[1]()) then
							repeat
								L_1_[45]["wt"]()
								noFruit = true
								for L_339_forvar0, L_340_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("getInventory")) do
									local L_341_ = {}
									L_341_[2], L_341_[1] = L_339_forvar0, L_340_forvar1
									if L_341_[1]["Value"] and L_341_[1]["Value"] >= 1000000 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("LoadFruit", L_341_[1]["Name"])
										L_1_[45]["wt"](1)
										for L_342_forvar0, L_343_forvar1 in pairs((game:GetService("Players"))["LocalPlayer"]["Backpack"]:GetChildren()) do
											local L_344_ = {}
											L_344_[3], L_344_[1] = L_342_forvar0, L_343_forvar1
											if string["find"](L_344_[1]["Name"], "Fruit") then
												L_1_[45]["Equip"](L_344_[1])
											end
										end
										L_1_[45]["wt"](.2)
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1")
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "2")
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "3")
										return
									end
								end
							until L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") == 0 or not L_316_[1]()
							noFruit = false
						end
						if L_1_[24]["Value"] >= 1500 and (L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") ~= 0 and not L_316_[1]()) then
							L_1_[45]["HopLowServer"](10)
							return
						end
						if Super_human and (not Death_Step and L_1_[24]["Value"] >= 1100) then
							if not Death_Step then
								repeat
									L_1_[45]["wt"]()
									L_1_[14]()
									if not Super_humanw_C_M then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuySuperhuman")
										if L_1_[35]["Character"]["Superhuman"]["Level"]["Value"] < 400 then
											repeat
												L_1_[45]["wt"]()
												L_1_[14]()
												Quest = nil
												L_1_[45]["Status"](L_1_[3]({
													" Status : Auto Farm ",
													"Level"
												}))
												L_1_[39]()
											until L_1_[35]["Character"]["Superhuman"]["Level"]["Value"] >= 400
											Super_humanw_C_M = true
										end
									end
									if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Death Step") or L_1_[45]["ffc"](L_1_[35]["Character"], "Death Step") then
										Death_Step = true
										return
									end
									if not Death_Step and L_1_[24]["Value"] >= 1100 then
										if L_1_[17]["Value"] >= 5000 then
											if Black_Leg_C_M then
												if L_1_[1]["Value"] >= 2500000 then
													L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
													Death_Step = true
													return
												else
													L_1_[14]()
													Quest = nil
													L_1_[45]["Status"](L_1_[3]({
														" Status : Auto Farm ",
														"Level"
													}))
													L_1_[39]()
												end
											else
												repeat
													L_1_[45]["wt"]()
													L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyBlackLeg")
													L_1_[14]()
													Quest = nil
													L_1_[45]["Status"](L_1_[3]({
														" Status : Auto Farm ";
														"Level"
													}))
													L_1_[39]()
												until L_1_[35]["Character"]["Black Leg"]["Level"]["Value"] >= 400
												Black_Leg_C_M = true
												if not Super_human then
													L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuySuperhuman")
												end
												return
											end
										elseif L_1_[17]["Value"] < 5000 then
											if L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (L_1_[17]["Value"] < 5000 and not Death_Step) then
												L_1_[45]["Status"](" Status : Farm Raid")
												if #L_1_[45]["GetMobRaid"]() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for L_345_forvar0, L_346_forvar1 in pairs(L_1_[19]:GetDescendants()) do
															local L_347_ = {}
															L_347_[2], L_347_[1] = L_345_forvar0, L_346_forvar1
															if L_347_[1]["Name"] == "Lava" then
																L_347_[1]:Destroy()
															end
														end
													end
													if L_1_[45]["GetRaid"]("Island 5", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 4", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 3", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 2", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 1", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													end
												else
													for L_348_forvar0, L_349_forvar1 in pairs(L_1_[40]:GetChildren()) do
														local L_350_ = {}
														L_350_[2], L_350_[1] = L_348_forvar0, L_349_forvar1
														if L_350_[1]:FindFirstChild("HumanoidRootPart") and (L_350_[1]:FindFirstChild("Humanoid") and ((L_350_[1]:FindFirstChild("Humanoid"))["Health"] > 0 and (L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - L_350_[1]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
															repeat
																local L_351_ = {}
																L_1_[45]["wt"](.1)
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for L_352_forvar0, L_353_forvar1 in pairs(L_1_[19]:GetDescendants()) do
																		local L_354_ = {}
																		L_354_[1], L_354_[3] = L_352_forvar0, L_353_forvar1
																		if L_354_[3]["Name"] == "Lava" then
																			L_354_[3]:Destroy()
																		end
																	end
																end
																L_351_[2] = math["random"](1, 5)
																if L_351_[2] == 1 then
																	L_351_[1] = CFrame["new"](0, 30, 1)
																elseif L_351_[2] == 2 then
																	L_351_[1] = CFrame["new"](0, 30, 15)
																elseif L_351_[2] == 3 then
																	L_351_[1] = CFrame["new"](1, 30, -15)
																elseif L_351_[2] == 4 then
																	L_351_[1] = CFrame["new"](15, 30, 0)
																elseif L_351_[2] == 5 then
																	L_351_[1] = CFrame["new"](-15, 30, 0)
																end
																L_1_[31](L_350_[1]["HumanoidRootPart"]["CFrame"] * L_351_[1], 1.5)
																if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
																end
																L_1_[14]()
															until not L_350_[1]["Parent"] or L_350_[1]["Humanoid"]["Health"] <= 0 or #L_1_[45]["GetMobRaid"]() == 0
														end
													end
												end
											else
												if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
													Select_Map = "Dark"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
													Select_Map = "Sand"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
													Select_Map = "Magma"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
													Select_Map = "Rumble"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
													Select_Map = "Flame"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
													Select_Map = "Ice"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
													Select_Map = "Light"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
													Select_Map = "String"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
													Select_Map = "Quake"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
													Select_Map = "Buddha"
												else
													Select_Map = "Ice"
												end
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
												L_1_[45]["wt"](.2)
												if L_1_[35]["Backpack"]:FindFirstChild("Special Microchip") or L_1_[35]["Character"]:FindFirstChild("Special Microchip") and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
													if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
														local L_355_ = {}
														fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
														L_355_[1] = 0
														repeat
															L_355_[1] = L_355_[1] + 1
															L_1_[45]["wt"](1)
														until L_355_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"] == true
													elseif L_1_[30] == 7449423635 then
														L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
														if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
															if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																local L_356_ = {}
																fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																L_356_[1] = 0
																repeat
																	L_356_[1] = L_356_[1] + 1
																	L_1_[45]["wt"](1)
																until L_356_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
															end
														end
													end
												else
													if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
														if L_1_[35]["Data"]["Fragments"]["Value"] >= 5000 then
															if L_1_[35]["Data"]["Beli"]["Value"] >= 2500000 then
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDeathStep")
																Death_Step = true
																return
															end
															return
														end
														table["sort"](L_1_[45]["GetFruits"](), function(L_357_arg0, L_358_arg1)
															local L_359_ = {}
															L_359_[3], L_359_[1] = L_357_arg0, L_358_arg1
															if L_359_[3]["Value"] < 100000 and L_359_[3]["Value"] < 100000 then
																return L_359_[3]["Value"] < L_359_[1]["Value"]
															end
														end)
														L_1_[45]["wt"](1)
														if #L_1_[45]["GetFruits"]() > 0 and not Death_Step then
															warn()
															L_1_[45]["wt"](2)
															if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
																if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 and L_1_[35]["Data"]["Fragments"]["Value"] < 5000 then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (L_1_[45]["GetFruits"]())[1]["Name"])
																elseif L_1_[17]["Value"] < 5000 then
																	break
																end
																if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
																	Select_Map = "Dark"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
																	Select_Map = "Sand"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
																	Select_Map = "Magma"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
																	Select_Map = "Rumble"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
																	Select_Map = "Flame"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
																	Select_Map = "Ice"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
																	Select_Map = "Light"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
																	Select_Map = "String"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
																	Select_Map = "Quake"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
																	Select_Map = "Buddha"
																else
																	Select_Map = "Ice"
																end
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
																if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																	local L_360_ = {}
																	fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																	L_360_[2] = 0
																	repeat
																		L_360_[2] = L_360_[2] + 1
																		L_1_[45]["wt"](1)
																	until L_360_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																elseif L_1_[30] == 7449423635 then
																	L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
																	if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
																		if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																			local L_361_ = {}
																			fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																			L_361_[1] = 0
																			repeat
																				L_361_[1] = L_361_[1] + 1
																				L_1_[45]["wt"](1)
																			until L_361_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																		end
																	end
																end
															end
														else
															Quest = nil
															L_1_[45]["Status"](L_1_[3]({
																" Status : Auto Farm ";
																"Level"
															}))
															L_1_[39]()
														end
													end
												end
											end
										end
									end
								until Death_Step
							end
							return
						end
						if Dragon_Claw_C_M and (not Sharkman_Karate_C and L_1_[24]["Value"] >= 1100) then
							if not Sharkman_Karate_C then
								repeat
									L_1_[45]["wt"]()
									L_1_[14]()
									if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Sharkman Karate") or L_1_[45]["ffc"](L_1_[35]["Character"], "Sharkman Karate") then
										Sharkman_Karate_C = true
										return
									end
									if not Sharkman_Karate_C and L_1_[24]["Value"] >= 1100 then
										if L_1_[17]["Value"] >= 5000 then
											if L_1_[1]["Value"] >= 2550000 and not Sharkman_Karate_C then
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
												Sharkman_Karate_C = true
												return
											else
												L_1_[14]()
												Quest = nil
												L_1_[45]["Status"](L_1_[3]({
													" Status : Auto Farm ",
													"Level"
												}))
												L_1_[39]()
											end
										elseif L_1_[17]["Value"] < 5000 then
											if L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (L_1_[17]["Value"] < 5000 and not Sharkman_Karate_C) then
												L_1_[45]["Status"](" Status : Farm Raid")
												if #L_1_[45]["GetMobRaid"]() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for L_362_forvar0, L_363_forvar1 in pairs(L_1_[19]:GetDescendants()) do
															local L_364_ = {}
															L_364_[1], L_364_[3] = L_362_forvar0, L_363_forvar1
															if L_364_[3]["Name"] == "Lava" then
																L_364_[3]:Destroy()
															end
														end
													end
													if L_1_[45]["GetRaid"]("Island 5", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 4", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 3", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 2", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 1", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													end
												else
													for L_365_forvar0, L_366_forvar1 in pairs(L_1_[40]:GetChildren()) do
														local L_367_ = {}
														L_367_[3], L_367_[1] = L_365_forvar0, L_366_forvar1
														if L_367_[1]:FindFirstChild("HumanoidRootPart") and (L_367_[1]:FindFirstChild("Humanoid") and ((L_367_[1]:FindFirstChild("Humanoid"))["Health"] > 0 and (L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - L_367_[1]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
															repeat
																local L_368_ = {}
																L_1_[45]["wt"](.1)
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for L_369_forvar0, L_370_forvar1 in pairs(L_1_[19]:GetDescendants()) do
																		local L_371_ = {}
																		L_371_[2], L_371_[3] = L_369_forvar0, L_370_forvar1
																		if L_371_[3]["Name"] == "Lava" then
																			L_371_[3]:Destroy()
																		end
																	end
																end
																L_368_[2] = math["random"](1, 5)
																if L_368_[2] == 1 then
																	L_368_[3] = CFrame["new"](0, 30, 1)
																elseif L_368_[2] == 2 then
																	L_368_[3] = CFrame["new"](0, 30, 15)
																elseif L_368_[2] == 3 then
																	L_368_[3] = CFrame["new"](1, 30, -15)
																elseif L_368_[2] == 4 then
																	L_368_[3] = CFrame["new"](15, 30, 0)
																elseif L_368_[2] == 5 then
																	L_368_[3] = CFrame["new"](-15, 30, 0)
																end
																L_1_[31](L_367_[1]["HumanoidRootPart"]["CFrame"] * L_368_[3], 1.5)
																if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
																end
																L_1_[14]()
															until not L_367_[1]["Parent"] or L_367_[1]["Humanoid"]["Health"] <= 0 or #L_1_[45]["GetMobRaid"]() == 0
														end
													end
												end
											else
												if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
													Select_Map = "Dark"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
													Select_Map = "Sand"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
													Select_Map = "Magma"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
													Select_Map = "Rumble"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
													Select_Map = "Flame"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
													Select_Map = "Ice"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
													Select_Map = "Light"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
													Select_Map = "String"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
													Select_Map = "Quake"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
													Select_Map = "Buddha"
												else
													Select_Map = "Ice"
												end
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
												L_1_[45]["wt"](.2)
												if L_1_[35]["Backpack"]:FindFirstChild("Special Microchip") or L_1_[35]["Character"]:FindFirstChild("Special Microchip") and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
													if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
														local L_372_ = {}
														fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
														L_372_[1] = 0
														repeat
															L_372_[1] = L_372_[1] + 1
															L_1_[45]["wt"](1)
														until L_372_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
													elseif L_1_[30] == 7449423635 then
														L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
														if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
															if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																local L_373_ = {}
																fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																L_373_[2] = 0
																repeat
																	L_373_[2] = L_373_[2] + 1
																	L_1_[45]["wt"](1)
																until L_373_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
															end
														end
													end
												else
													if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
														if L_1_[1]["Value"] >= 0 and L_1_[35]["Data"]["Fragments"]["Value"] >= 5000 then
															print("nan")
															L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate")
															Sharkman_Karate_C = true
															return
														end
														table["sort"](L_1_[45]["GetFruits"](), function(L_374_arg0, L_375_arg1)
															local L_376_ = {}
															L_376_[3], L_376_[1] = L_374_arg0, L_375_arg1
															if L_376_[3]["Value"] < 100000 and L_376_[3]["Value"] < 100000 then
																return L_376_[3]["Value"] < L_376_[1]["Value"]
															end
														end)
														L_1_[45]["wt"](1)
														if #L_1_[45]["GetFruits"]() > 0 and not Sharkman_Karate_C then
															L_1_[45]["wt"](2)
															if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
																if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 and L_1_[35]["Data"]["Fragments"]["Value"] < 5000 then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (L_1_[45]["GetFruits"]())[1]["Name"])
																elseif L_1_[17]["Value"] < 5000 then
																	break
																end
																if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
																	Select_Map = "Dark"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
																	Select_Map = "Sand"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
																	Select_Map = "Magma"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
																	Select_Map = "Rumble"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
																	Select_Map = "Flame"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
																	Select_Map = "Ice"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
																	Select_Map = "Light"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
																	Select_Map = "String"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
																	Select_Map = "Quake"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
																	Select_Map = "Buddha"
																else
																	Select_Map = "Ice"
																end
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
																if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																	local L_377_ = {}
																	fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																	L_377_[1] = 0
																	repeat
																		L_377_[1] = L_377_[1] + 1
																		L_1_[45]["wt"](1)
																	until L_377_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																elseif L_1_[30] == 7449423635 then
																	L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
																	if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
																		if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																			local L_378_ = {}
																			fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																			L_378_[2] = 0
																			repeat
																				L_378_[2] = L_378_[2] + 1
																				L_1_[45]["wt"](1)
																			until L_378_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																		end
																	end
																end
															end
														else
															Quest = nil
															L_1_[45]["Status"](L_1_[3]({
																" Status : Auto Farm ",
																"Level"
															}))
															L_1_[39]()
														end
													end
												end
											end
										end
									end
								until Sharkman_Karate_C
							end
							return
						end
						if Sharkman_Karate_C_M and (not Electric_Claw_C and L_1_[24]["Value"] >= 1100) then
							if not Electric_Claw_C then
								repeat
									L_1_[45]["wt"]()
									L_1_[14]()
									if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Electric Claw") or L_1_[45]["ffc"](L_1_[35]["Character"], "Electric Claw") then
										Electric_Claw_C = true
										return
									end
									if not Electric_Claw_C and L_1_[24]["Value"] >= 1100 then
										if L_1_[17]["Value"] >= 5000 then
											if L_1_[1]["Value"] >= 3000000 then
												pcall(function()
													L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
													if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 2 then
														Electric_Claw_C = true
													end
												end)
												if not Electric_Claw_C then
													L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
													if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 2 then
														Electric_Claw_C = true
													end
												end
												if Three_World and not Electric_Claw_C then
													Quest = "Quest Electric Claw"
												end
												return
											else
												L_1_[14]()
												Quest = nil
												L_1_[45]["Status"](L_1_[3]({
													" Status : Auto Farm ";
													"Level"
												}))
												L_1_[39]()
											end
										elseif L_1_[17]["Value"] < 5000 then
											if L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (L_1_[17]["Value"] < 5000 and not Electric_Claw_C) then
												L_1_[45]["Status"](" Status : Farm Raid")
												if #L_1_[45]["GetMobRaid"]() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for L_379_forvar0, L_380_forvar1 in pairs(L_1_[19]:GetDescendants()) do
															local L_381_ = {}
															L_381_[2], L_381_[1] = L_379_forvar0, L_380_forvar1
															if L_381_[1]["Name"] == "Lava" then
																L_381_[1]:Destroy()
															end
														end
													end
													if L_1_[45]["GetRaid"]("Island 5", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 4", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 3", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 2", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 1", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													end
												else
													for L_382_forvar0, L_383_forvar1 in pairs(L_1_[40]:GetChildren()) do
														local L_384_ = {}
														L_384_[1], L_384_[2] = L_382_forvar0, L_383_forvar1
														if L_384_[2]:FindFirstChild("HumanoidRootPart") and (L_384_[2]:FindFirstChild("Humanoid") and ((L_384_[2]:FindFirstChild("Humanoid"))["Health"] > 0 and (L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - L_384_[2]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
															repeat
																local L_385_ = {}
																L_1_[45]["wt"](.1)
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for L_386_forvar0, L_387_forvar1 in pairs(L_1_[19]:GetDescendants()) do
																		local L_388_ = {}
																		L_388_[3], L_388_[2] = L_386_forvar0, L_387_forvar1
																		if L_388_[2]["Name"] == "Lava" then
																			L_388_[2]:Destroy()
																		end
																	end
																end
																L_385_[2] = math["random"](1, 5)
																if L_385_[2] == 1 then
																	L_385_[1] = CFrame["new"](0, 30, 1)
																elseif L_385_[2] == 2 then
																	L_385_[1] = CFrame["new"](0, 30, 15)
																elseif L_385_[2] == 3 then
																	L_385_[1] = CFrame["new"](1, 30, -15)
																elseif L_385_[2] == 4 then
																	L_385_[1] = CFrame["new"](15, 30, 0)
																elseif L_385_[2] == 5 then
																	L_385_[1] = CFrame["new"](-15, 30, 0)
																end
																L_1_[31](L_384_[2]["HumanoidRootPart"]["CFrame"] * L_385_[1], 1.5)
																if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
																end
																L_1_[14]()
															until not L_384_[2]["Parent"] or L_384_[2]["Humanoid"]["Health"] <= 0 or #L_1_[45]["GetMobRaid"]() == 0
														end
													end
												end
											else
												if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
													Select_Map = "Dark"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
													Select_Map = "Sand"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
													Select_Map = "Magma"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
													Select_Map = "Rumble"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
													Select_Map = "Flame"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
													Select_Map = "Ice"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
													Select_Map = "Light"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
													Select_Map = "String"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
													Select_Map = "Quake"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
													Select_Map = "Buddha"
												else
													Select_Map = "Ice"
												end
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
												L_1_[45]["wt"](.2)
												if L_1_[35]["Backpack"]:FindFirstChild("Special Microchip") or L_1_[35]["Character"]:FindFirstChild("Special Microchip") and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
													if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
														local L_389_ = {}
														fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
														L_389_[2] = 0
														repeat
															L_389_[2] = L_389_[2] + 1
															L_1_[45]["wt"](1)
														until L_389_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
													elseif L_1_[30] == 7449423635 then
														L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
														if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
															if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																local L_390_ = {}
																fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																L_390_[2] = 0
																repeat
																	L_390_[2] = L_390_[2] + 1
																	L_1_[45]["wt"](1)
																until L_390_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
															end
														end
													end
												else
													if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
														if L_1_[35]["Data"]["Fragments"]["Value"] >= 5000 then
															if L_1_[35]["Data"]["Beli"]["Value"] >= 3000000 then
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw")
																if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw") == 2 then
																	Electric_Claw_C = true
																end
																return
															end
															return
														end
														table["sort"](L_1_[45]["GetFruits"](), function(L_391_arg0, L_392_arg1)
															local L_393_ = {}
															L_393_[2], L_393_[3] = L_391_arg0, L_392_arg1
															if L_393_[2]["Value"] < 100000 and L_393_[2]["Value"] < 100000 then
																return L_393_[2]["Value"] < L_393_[3]["Value"]
															end
														end)
														L_1_[45]["wt"](1)
														if #L_1_[45]["GetFruits"]() > 0 and not Electric_Claw_C then
															warn()
															L_1_[45]["wt"](2)
															if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
																if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 and L_1_[35]["Data"]["Fragments"]["Value"] < 5000 then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (L_1_[45]["GetFruits"]())[1]["Name"])
																elseif L_1_[17]["Value"] < 5000 then
																	break
																end
																if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
																	Select_Map = "Dark"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
																	Select_Map = "Sand"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
																	Select_Map = "Magma"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
																	Select_Map = "Rumble"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
																	Select_Map = "Flame"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
																	Select_Map = "Ice"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
																	Select_Map = "Light"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
																	Select_Map = "String"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
																	Select_Map = "Quake"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
																	Select_Map = "Buddha"
																else
																	Select_Map = "Ice"
																end
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
																if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																	local L_394_ = {}
																	fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																	L_394_[2] = 0
																	repeat
																		L_394_[2] = L_394_[2] + 1
																		L_1_[45]["wt"](1)
																	until L_394_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																elseif L_1_[30] == 7449423635 then
																	L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
																	if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
																		if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																			local L_395_ = {}
																			fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																			L_395_[2] = 0
																			repeat
																				L_395_[2] = L_395_[2] + 1
																				L_1_[45]["wt"](1)
																			until L_395_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																		end
																	end
																end
															end
														else
															Quest = nil
															L_1_[45]["Status"](L_1_[3]({
																" Status : Auto Farm ",
																"Level"
															}))
															L_1_[39]()
														end
													end
												end
											end
										end
									end
								until Electric_Claw_C
							end
							return
						end
						if Electric_Claw_C_M and (not Dragon_Talon_C and L_1_[24]["Value"] >= 1100) then
							if not Dragon_Talon_C then
								repeat
									L_1_[45]["wt"]()
									L_1_[14]()
									if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Dragon Talon") or L_1_[45]["ffc"](L_1_[35]["Character"], "Dragon Talon") then
										Dragon_Talon_C = true
										return
									end
									if not Dragon_Talon_C and L_1_[24]["Value"] >= 1100 then
										if L_1_[17]["Value"] >= 5000 then
											if L_1_[1]["Value"] >= 3000000 then
												Quest = nil
												L_1_[45]["Status"](L_1_[3]({
													" Status : Auto Farm ",
													"Bone"
												}))
												L_1_[45]["FarmBone"](true)
											else
												L_1_[14]()
												Quest = nil
												L_1_[45]["Status"](L_1_[3]({
													" Status : Auto Farm ",
													"Level"
												}))
												L_1_[39]()
											end
										elseif L_1_[17]["Value"] < 5000 then
											if L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (L_1_[17]["Value"] < 5000 and not Dragon_Talon_C) then
												L_1_[45]["Status"](" Status : Farm Raid")
												if #L_1_[45]["GetMobRaid"]() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for L_396_forvar0, L_397_forvar1 in pairs(L_1_[19]:GetDescendants()) do
															local L_398_ = {}
															L_398_[1], L_398_[3] = L_396_forvar0, L_397_forvar1
															if L_398_[3]["Name"] == "Lava" then
																L_398_[3]:Destroy()
															end
														end
													end
													if L_1_[45]["GetRaid"]("Island 5", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 4", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 3", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 2", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 1", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													end
												else
													for L_399_forvar0, L_400_forvar1 in pairs(L_1_[40]:GetChildren()) do
														local L_401_ = {}
														L_401_[2], L_401_[3] = L_399_forvar0, L_400_forvar1
														if L_401_[3]:FindFirstChild("HumanoidRootPart") and (L_401_[3]:FindFirstChild("Humanoid") and ((L_401_[3]:FindFirstChild("Humanoid"))["Health"] > 0 and (L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - L_401_[3]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
															repeat
																local L_402_ = {}
																L_1_[45]["wt"](.1)
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for L_403_forvar0, L_404_forvar1 in pairs(L_1_[19]:GetDescendants()) do
																		local L_405_ = {}
																		L_405_[3], L_405_[1] = L_403_forvar0, L_404_forvar1
																		if L_405_[1]["Name"] == "Lava" then
																			L_405_[1]:Destroy()
																		end
																	end
																end
																L_402_[1] = math["random"](1, 5)
																if L_402_[1] == 1 then
																	L_402_[2] = CFrame["new"](0, 30, 1)
																elseif L_402_[1] == 2 then
																	L_402_[2] = CFrame["new"](0, 30, 15)
																elseif L_402_[1] == 3 then
																	L_402_[2] = CFrame["new"](1, 30, -15)
																elseif L_402_[1] == 4 then
																	L_402_[2] = CFrame["new"](15, 30, 0)
																elseif L_402_[1] == 5 then
																	L_402_[2] = CFrame["new"](-15, 30, 0)
																end
																L_1_[31](L_401_[3]["HumanoidRootPart"]["CFrame"] * L_402_[2], 1.5)
																if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
																end
																L_1_[14]()
															until not L_401_[3]["Parent"] or L_401_[3]["Humanoid"]["Health"] <= 0 or #L_1_[45]["GetMobRaid"]() == 0
														end
													end
												end
											else
												if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
													Select_Map = "Dark"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
													Select_Map = "Sand"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
													Select_Map = "Magma"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
													Select_Map = "Rumble"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
													Select_Map = "Flame"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
													Select_Map = "Ice"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
													Select_Map = "Light"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
													Select_Map = "String"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
													Select_Map = "Quake"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
													Select_Map = "Buddha"
												else
													Select_Map = "Ice"
												end
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
												L_1_[45]["wt"](.2)
												if L_1_[35]["Backpack"]:FindFirstChild("Special Microchip") or L_1_[35]["Character"]:FindFirstChild("Special Microchip") and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
													if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
														local L_406_ = {}
														fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
														L_406_[1] = 0
														repeat
															L_406_[1] = L_406_[1] + 1
															L_1_[45]["wt"](1)
														until L_406_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
													elseif L_1_[30] == 7449423635 then
														L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
														if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
															if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																local L_407_ = {}
																fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																L_407_[2] = 0
																repeat
																	L_407_[2] = L_407_[2] + 1
																	L_1_[45]["wt"](1)
																until L_407_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
															end
														end
													end
												else
													if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
														if L_1_[35]["Data"]["Fragments"]["Value"] >= 5000 then
															if L_1_[35]["Data"]["Beli"]["Value"] >= 3000000 then
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
																Dragon_Talon_C = true
																return
															end
															return
														end
														table["sort"](L_1_[45]["GetFruits"](), function(L_408_arg0, L_409_arg1)
															local L_410_ = {}
															L_410_[1], L_410_[2] = L_408_arg0, L_409_arg1
															if L_410_[1]["Value"] < 100000 and L_410_[1]["Value"] < 100000 then
																return L_410_[1]["Value"] < L_410_[2]["Value"]
															end
														end)
														L_1_[45]["wt"](1)
														if #L_1_[45]["GetFruits"]() > 0 and not Dragon_Talon_C then
															warn()
															L_1_[45]["wt"](2)
															if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
																if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 and L_1_[35]["Data"]["Fragments"]["Value"] < 5000 then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (L_1_[45]["GetFruits"]())[1]["Name"])
																elseif L_1_[17]["Value"] < 5000 then
																	break
																end
																if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
																	Select_Map = "Dark"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
																	Select_Map = "Sand"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
																	Select_Map = "Magma"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
																	Select_Map = "Rumble"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
																	Select_Map = "Flame"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
																	Select_Map = "Ice"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
																	Select_Map = "Light"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
																	Select_Map = "String"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
																	Select_Map = "Quake"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
																	Select_Map = "Buddha"
																else
																	Select_Map = "Ice"
																end
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
																if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																	local L_411_ = {}
																	fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																	L_411_[2] = 0
																	repeat
																		L_411_[2] = L_411_[2] + 1
																		L_1_[45]["wt"](1)
																	until L_411_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																elseif L_1_[30] == 7449423635 then
																	L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
																	if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
																		if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																			local L_412_ = {}
																			fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																			L_412_[1] = 0
																			repeat
																				L_412_[1] = L_412_[1] + 1
																				L_1_[45]["wt"](1)
																			until L_412_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																		end
																	end
																end
															end
														else
															Quest = nil
															L_1_[45]["Status"](L_1_[3]({
																" Status : Auto Farm ",
																"Level"
															}))
															L_1_[39]()
														end
													end
												end
											end
										end
									end
								until Dragon_Talon_C
							end
							return
						end
						if Dragon_Talon_C_M and (not God_Human_C and L_1_[24]["Value"] >= 1100) then
							if not God_Human_C then
								repeat
									L_1_[45]["wt"]()
									L_1_[14]()
									if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Godhuman") or L_1_[45]["ffc"](L_1_[35]["Character"], "Godhuman") then
										God_Human_C = true
										return
									end
									if not God_Human_C and L_1_[24]["Value"] >= 1100 then
										if L_1_[17]["Value"] >= 5000 then
											if L_1_[1]["Value"] >= 5000000 then
												Quest = "Godhuman"
											else
												L_1_[14]()
												Quest = nil
												L_1_[45]["Status"](L_1_[3]({
													" Status : Auto Farm ",
													"Level"
												}))
												L_1_[39]()
											end
										elseif L_1_[17]["Value"] < 5000 then
											if L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] and (L_1_[17]["Value"] < 5000 and not God_Human_C) then
												L_1_[45]["Status"](" Status : Farm Raid")
												if #L_1_[45]["GetMobRaid"]() == 0 then
													if Select_Map == "Magma" or Select_Map == "Flame" then
														for L_413_forvar0, L_414_forvar1 in pairs(L_1_[19]:GetDescendants()) do
															local L_415_ = {}
															L_415_[3], L_415_[1] = L_413_forvar0, L_414_forvar1
															if L_415_[1]["Name"] == "Lava" then
																L_415_[1]:Destroy()
															end
														end
													end
													if L_1_[45]["GetRaid"]("Island 5", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 5", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 4", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 4", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 3", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 3", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 2", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 2", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													elseif L_1_[45]["GetRaid"]("Island 1", 2500) ~= nil then
														L_1_[31]((L_1_[45]["GetRaid"]("Island 1", 2500))["CFrame"] * CFrame["new"](0, 120, 0), 1.5)
													end
												else
													for L_416_forvar0, L_417_forvar1 in pairs(L_1_[40]:GetChildren()) do
														local L_418_ = {}
														L_418_[2], L_418_[1] = L_416_forvar0, L_417_forvar1
														if L_418_[1]:FindFirstChild("HumanoidRootPart") and (L_418_[1]:FindFirstChild("Humanoid") and ((L_418_[1]:FindFirstChild("Humanoid"))["Health"] > 0 and (L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"]["Position"] - L_418_[1]["HumanoidRootPart"]["CFrame"]["Position"])["Magnitude"] <= 5000)) then
															repeat
																local L_419_ = {}
																L_1_[45]["wt"](.1)
																if Select_Map == "Magma" or Select_Map == "Flame" then
																	for L_420_forvar0, L_421_forvar1 in pairs(L_1_[19]:GetDescendants()) do
																		local L_422_ = {}
																		L_422_[2], L_422_[1] = L_420_forvar0, L_421_forvar1
																		if L_422_[1]["Name"] == "Lava" then
																			L_422_[1]:Destroy()
																		end
																	end
																end
																L_419_[2] = math["random"](1, 5)
																if L_419_[2] == 1 then
																	L_419_[1] = CFrame["new"](0, 30, 1)
																elseif L_419_[2] == 2 then
																	L_419_[1] = CFrame["new"](0, 30, 15)
																elseif L_419_[2] == 3 then
																	L_419_[1] = CFrame["new"](1, 30, -15)
																elseif L_419_[2] == 4 then
																	L_419_[1] = CFrame["new"](15, 30, 0)
																elseif L_419_[2] == 5 then
																	L_419_[1] = CFrame["new"](-15, 30, 0)
																end
																L_1_[31](L_418_[1]["HumanoidRootPart"]["CFrame"] * L_419_[1], 1.5)
																if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
																end
																L_1_[14]()
															until not L_418_[1]["Parent"] or L_418_[1]["Humanoid"]["Health"] <= 0 or #L_1_[45]["GetMobRaid"]() == 0
														end
													end
												end
											else
												if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
													Select_Map = "Dark"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
													Select_Map = "Sand"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
													Select_Map = "Magma"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
													Select_Map = "Rumble"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
													Select_Map = "Flame"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
													Select_Map = "Ice"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
													Select_Map = "Light"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
													Select_Map = "String"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
													Select_Map = "Quake"
												elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
													Select_Map = "Buddha"
												else
													Select_Map = "Ice"
												end
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
												L_1_[45]["wt"](.2)
												if L_1_[35]["Backpack"]:FindFirstChild("Special Microchip") or L_1_[35]["Character"]:FindFirstChild("Special Microchip") and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
													if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
														local L_423_ = {}
														fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
														L_423_[2] = 0
														repeat
															L_423_[2] = L_423_[2] + 1
															L_1_[45]["wt"](1)
														until L_423_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
													elseif L_1_[30] == 7449423635 then
														L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
														if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
															if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																local L_424_ = {}
																fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																L_424_[1] = 0
																repeat
																	L_424_[1] = L_424_[1] + 1
																	L_1_[45]["wt"](1)
																until L_424_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
															end
														end
													end
												else
													if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
														if L_1_[35]["Data"]["Fragments"]["Value"] >= 5000 then
															if L_1_[35]["Data"]["Beli"]["Value"] >= 3000000 then
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyGodHuman")
																God_Human_C = true
																return
															end
															return
														end
														table["sort"](L_1_[45]["GetFruits"](), function(L_425_arg0, L_426_arg1)
															local L_427_ = {}
															L_427_[2], L_427_[1] = L_425_arg0, L_426_arg1
															if L_427_[2]["Value"] < 100000 and L_427_[2]["Value"] < 100000 then
																return L_427_[2]["Value"] < L_427_[1]["Value"]
															end
														end)
														L_1_[45]["wt"](1)
														if #L_1_[45]["GetFruits"]() > 0 and not God_Human_C then
															warn()
															L_1_[45]["wt"](2)
															if not L_1_[35]["PlayerGui"]["Main"]["TopHUDList"]["RaidTimer"]["Visible"] then
																if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 and L_1_[35]["Data"]["Fragments"]["Value"] < 5000 then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LoadFruit", (L_1_[45]["GetFruits"]())[1]["Name"])
																elseif L_1_[17]["Value"] < 5000 then
																	break
																end
																if L_1_[35]["Data"]["DevilFruit"]["Value"] == "Dark-Dark" then
																	Select_Map = "Dark"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Sand-Sand" then
																	Select_Map = "Sand"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Magma-Magma" then
																	Select_Map = "Magma"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Rumble-Rumble" then
																	Select_Map = "Rumble"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Flame-Flame" then
																	Select_Map = "Flame"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Ice-Ice" then
																	Select_Map = "Ice"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Light-Light" then
																	Select_Map = "Light"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "String-String" then
																	Select_Map = "String"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Quake-Quake" then
																	Select_Map = "Quake"
																elseif L_1_[35]["Data"]["DevilFruit"]["Value"] == "Buddha-Buddha" then
																	Select_Map = "Buddha"
																else
																	Select_Map = "Ice"
																end
																L_1_[7]["Remotes"]["CommF_"]:InvokeServer("RaidsNpc", "Select", Select_Map)
																if L_1_[30] == 4442272183 and L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																	local L_428_ = {}
																	fireclickdetector(L_1_[19]["Map"]["CircleIsland"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																	L_428_[2] = 0
																	repeat
																		L_428_[2] = L_428_[2] + 1
																		L_1_[45]["wt"](1)
																	until L_428_[2] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																elseif L_1_[30] == 7449423635 then
																	L_1_[31](CFrame["new"](-5034, 315, -2951), 1.5)
																	if ((CFrame["new"](-5034, 315, -2951))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
																		if L_1_[35]["Character"]["Humanoid"]["Health"] > 0 then
																			local L_429_ = {}
																			fireclickdetector(L_1_[19]["Map"]["Boat Castle"]["RaidSummon2"]["Button"]["Main"]["ClickDetector"], 1)
																			L_429_[1] = 0
																			repeat
																				L_429_[1] = L_429_[1] + 1
																				L_1_[45]["wt"](1)
																			until L_429_[1] >= 20 or L_1_[35]["PlayerGui"]["Main"]["Timer"]["Visible"]
																		end
																	end
																end
															end
														else
															Quest = nil
															L_1_[45]["Status"](L_1_[3]({
																" Status : Auto Farm ";
																"Level"
															}))
															L_1_[39]()
														end
													end
												end
											end
										end
									end
								until God_Human_C
							end
							return
						end
						if L_1_[24]["Value"] >= 700 and (not New_World and not Three_World) then
							Quest = "World 2"
							return
						end
						if New_World and (CheckFindWaterKey and (L_1_[24]["Value"] >= 1500 and (L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TalkTrevor", "1") == 0 and (not L_1_[45]["IsHall"]() and L_1_[45]["IsHeavenly"]())))) then
							Quest = "TravelZou"
							return
						end
						Quest = nil
						L_1_[45]["Status"](L_1_[3]({
							" Status : Auto Farm ",
							"Level"
						}))
						L_1_[39]()
					end
				end
			end
		end, warn)
	end
end)
task["spawn"](function()
	while L_1_[45]["wt"]() do
		xpcall(function()
			if Quest ~= nil then
				L_1_[45]["Status"](" Status : " .. Quest)
			end
			if Quest == "Saber" then
				local L_430_ = {}
				if not old_World then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelMain")
				end
				L_430_[2] = L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress")
				if L_430_[2]["UsedTorch"] == false then
					for L_431_forvar0, L_432_forvar1 in pairs((game:GetService("Workspace"))["Map"]["Jungle"]["QuestPlates"]:GetChildren()) do
						local L_433_ = {}
						L_433_[3], L_433_[2] = L_431_forvar0, L_432_forvar1
						if table["find"]({
							"Plate1",
							"Plate2",
							"Plate3",
							"Plate4";
							"Plate5"
						}, L_433_[2]["Name"]) then
							L_433_[2]["Button"]["CFrame"] = L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"]
						end
					end
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "GetTorch")
					L_1_[45]["Equip"]("Torch")
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "DestroyTorch")
				elseif L_430_[2]["UsedCup"] == false then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "GetCup")
					L_1_[45]["Equip"]("Cup")
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "FillCup", (game:GetService("Players"))["LocalPlayer"]["Character"]["Cup"])
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "SickMan")
				elseif L_430_[2]["KilledMob"] == false then
					local L_434_ = {}
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
					L_434_[2] = L_1_[45]["ffc"](L_1_[40], "Mob Leader")
					if L_434_[2] then
						for L_435_forvar0, L_436_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_437_ = {}
							L_437_[2], L_437_[3] = L_435_forvar0, L_436_forvar1
							if L_437_[3]["Name"] == "Mob Leader" then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_437_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_437_[3]["Parent"] or L_437_[3]["Humanoid"]["Health"] <= 0 or L_1_[45]["gi"]("Saber")
								L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
							end
						end
					else
						L_1_[31](CFrame["new"](-2848.59399, 7.4272871, 5342.44043), 1.5)
					end
				elseif L_430_[2]["UsedRelic"] == false then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ProQuestProgress", "RichSon")
					L_1_[45]["Equip"]("Relic")
					L_1_[31](CFrame["new"](-1406.60925, 29.8520069, 4.5805192), 1.5)
				else
					if L_1_[45]["ffc"](L_1_[40], "Saber Expert") then
						for L_438_forvar0, L_439_forvar1 in pairs((game:GetService("Workspace"))["Enemies"]:GetChildren()) do
							local L_440_ = {}
							L_440_[1], L_440_[3] = L_438_forvar0, L_439_forvar1
							if L_440_[3]["Name"] == "Saber Expert" then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_440_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 25, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_440_[3]["Parent"] or L_440_[3]["Humanoid"]["Health"] <= 0 or L_1_[45]["gi"]("Saber")
							end
						end
					else
						L_1_[31](CFrame["new"](-1458.89502, 29.8870335, -50.633564, .858821094, 1.13848939e-08, .512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, .858821094), 1.5)
						if ((CFrame["new"](-1458.89502, 29.8870335, -50.633564, .858821094, 1.13848939e-08, .512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, .858821094))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
							L_1_[45]["wt"](.5)
							if not L_1_[45]["ffc"](L_1_[40], "Saber Expert") then
								L_1_[45]["HopLowServer"](10)
							end
						end
					end
				end
			elseif Quest == "World 2" then
				local L_441_ = {}
				L_441_[1] = L_1_[7]["Remotes"]["CommF_"]:InvokeServer(L_1_[3]({
					"DressrosaQuestProgre";
					"ss"
				}))
				if L_441_[1]["UsedKey"] == false then
					L_1_[31](CFrame["new"](1347.32947, 37.349369, -1325.44922, .538348913, 8.57539106e-08, .842722058, 8.61935634e-10, 1, -1.0230886e-07, -0.842722058, 5.58042359e-08, .538348913), 1.5)
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer(L_1_[3]({
						"DressrosaQuestProgre",
						"ss"
					}), "Detective")
					L_1_[45]["Equip"]("Key")
				elseif L_441_[1]["KilledIceBoss"] == false then
					if L_1_[45]["ffc"](L_1_[40], "Ice Admiral") then
						for L_442_forvar0, L_443_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_444_ = {}
							L_444_[1], L_444_[2] = L_442_forvar0, L_443_forvar1
							if L_444_[2]["Name"] == "Ice Admiral" and L_444_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"](.1)
									L_1_[31](L_444_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_444_[2]["Parent"] or L_444_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or L_441_[1]["KilledIceBoss"]
								L_1_[45]["wt"](2)
								L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
								TleP = true
								L_1_[45]["wt"](25)
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Ice Admiral") then
						L_1_[31](CFrame["new"](1144.5270996094, 7.3292083740234, -1164.7322998047), 1.5)
					end
				elseif L_441_[1]["KilledIceBoss"] == true then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
					TleP = true
					L_1_[45]["wt"](25)
				end
			elseif Quest == "Pole (1st Form)" then
				if not L_1_[45]["CheckBoss"]("Thunder God") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Thunder God") then
						for L_445_forvar0, L_446_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_447_ = {}
							L_447_[3], L_447_[1] = L_445_forvar0, L_446_forvar1
							if L_447_[1]["Name"] == "Thunder God" and L_447_[1]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_447_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_447_[1]["Parent"] or L_447_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Thunder God")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Thunder God") then
						for L_448_forvar0, L_449_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_450_ = {}
							L_450_[2], L_450_[3] = L_448_forvar0, L_449_forvar1
							if L_450_[3]["Name"] == "Thunder God" and L_450_[3]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_450_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_450_[3]["Parent"] or L_450_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Thunder God")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("Thunder God")
			elseif Quest == "Shark Saw" then
				if not L_1_[45]["CheckBoss"]("The Saw") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "The Saw") then
						for L_451_forvar0, L_452_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_453_ = {}
							L_453_[1], L_453_[3] = L_451_forvar0, L_452_forvar1
							if L_453_[3]["Name"] == "The Saw" and L_453_[3]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_453_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_453_[3]["Parent"] or L_453_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("The Saw")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "The Saw") then
						for L_454_forvar0, L_455_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_456_ = {}
							L_456_[1], L_456_[3] = L_454_forvar0, L_455_forvar1
							if L_456_[3]["Name"] == "The Saw" and L_456_[3]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_456_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_456_[3]["Parent"] or L_456_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("The Saw")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("The Saw")
			elseif Quest == "Flail" then
				if not L_1_[45]["CheckBoss"]("Smoke Admiral") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Smoke Admiral") then
						for L_457_forvar0, L_458_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_459_ = {}
							L_459_[2], L_459_[1] = L_457_forvar0, L_458_forvar1
							if L_459_[1]["Name"] == "Smoke Admiral" and L_459_[1]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_459_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_459_[1]["Parent"] or L_459_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Smoke Admiral")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Smoke Admiral") then
						for L_460_forvar0, L_461_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_462_ = {}
							L_462_[1], L_462_[2] = L_460_forvar0, L_461_forvar1
							if L_462_[2]["Name"] == "Smoke Admiral" and L_462_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_462_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_462_[2]["Parent"] or L_462_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Smoke Admiral")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("Smoke Admiral")
			elseif Quest == "Wardens Sword" then
				if not L_1_[45]["CheckBoss"]("Chief Warden") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Chief Warden") then
						for L_463_forvar0, L_464_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_465_ = {}
							L_465_[2], L_465_[1] = L_463_forvar0, L_464_forvar1
							if L_465_[1]["Name"] == "Chief Warden" and L_465_[1]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_465_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_465_[1]["Parent"] or L_465_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Chief Warden")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Chief Warden") then
						for L_466_forvar0, L_467_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_468_ = {}
							L_468_[1], L_468_[2] = L_466_forvar0, L_467_forvar1
							if L_468_[2]["Name"] == "Chief Warden" and L_468_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_468_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_468_[2]["Parent"] or L_468_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Chief Warden")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("The Saw")
			elseif Quest == "Magma Blaster" then
				if not L_1_[45]["CheckBoss"]("Magma Admiral") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Magma Admiral") then
						for L_469_forvar0, L_470_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_471_ = {}
							L_471_[1], L_471_[2] = L_469_forvar0, L_470_forvar1
							if L_471_[2]["Name"] == "Magma Admiral" and L_471_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_471_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_471_[2]["Parent"] or L_471_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Magma Admiral")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Magma Admiral") then
						for L_472_forvar0, L_473_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_474_ = {}
							L_474_[2], L_474_[3] = L_472_forvar0, L_473_forvar1
							if L_474_[3]["Name"] == "Magma Admiral" and L_474_[3]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_474_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_474_[3]["Parent"] or L_474_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Magma Admiral")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("Magma Admiral")
			elseif Quest == "Bazooka" then
				if not L_1_[45]["CheckBoss"]("Wysper") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Wysper") then
						for L_475_forvar0, L_476_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_477_ = {}
							L_477_[3], L_477_[2] = L_475_forvar0, L_476_forvar1
							if L_477_[2]["Name"] == "Wysper" and L_477_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_477_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_477_[2]["Parent"] or L_477_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Wysper")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Wysper") then
						for L_478_forvar0, L_479_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_480_ = {}
							L_480_[3], L_480_[1] = L_478_forvar0, L_479_forvar1
							if L_480_[1]["Name"] == "Wysper" and L_480_[1]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_480_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_480_[1]["Parent"] or L_480_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Wysper")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("Wysper")
			elseif Quest == "Twin Hooks" then
				if not L_1_[45]["CheckBoss"]("Captain Elephant") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Captain Elephant") then
						for L_481_forvar0, L_482_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_483_ = {}
							L_483_[2], L_483_[3] = L_481_forvar0, L_482_forvar1
							if L_483_[3]["Name"] == "Captain Elephant" and L_483_[3]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_483_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_483_[3]["Parent"] or L_483_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Captain Elephant")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Captain Elephant") then
						for L_484_forvar0, L_485_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_486_ = {}
							L_486_[1], L_486_[2] = L_484_forvar0, L_485_forvar1
							if L_486_[2]["Name"] == "Captain Elephant" and L_486_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									if ((CFrame["new"](-7894.6181640625, 5547.1420898438, -380.29098510742))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 7500 then
										((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer("requestEntrance", vector["create"](-7894.6181640625, 5547.1420898438, -380.29098510742))
									end
									L_1_[31](L_486_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_486_[2]["Parent"] or L_486_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Captain Elephant")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("Wysper")
			elseif Quest == "Gravity Blade" then
				if not L_1_[45]["CheckBoss"]("Orbitus") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Orbitus") then
						for L_487_forvar0, L_488_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_489_ = {}
							L_489_[2], L_489_[1] = L_487_forvar0, L_488_forvar1
							if L_489_[1]["Name"] == "Orbitus" and L_489_[1]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_489_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_489_[1]["Parent"] or L_489_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Orbitus")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Orbitus") then
						for L_490_forvar0, L_491_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_492_ = {}
							L_492_[3], L_492_[2] = L_490_forvar0, L_491_forvar1
							if L_492_[2]["Name"] == "Orbitus" and L_492_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_492_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_492_[2]["Parent"] or L_492_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Orbitus")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("Orbitus")
			elseif Quest == "Longsword" then
				if not L_1_[45]["CheckBoss"]("Diamond") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Diamond") then
						for L_493_forvar0, L_494_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_495_ = {}
							L_495_[3], L_495_[2] = L_493_forvar0, L_494_forvar1
							if L_495_[2]["Name"] == "Diamond" and L_495_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_495_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_495_[2]["Parent"] or L_495_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Diamond")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Diamond") then
						for L_496_forvar0, L_497_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_498_ = {}
							L_498_[2], L_498_[3] = L_496_forvar0, L_497_forvar1
							if L_498_[3]["Name"] == "Diamond" and L_498_[3]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_498_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_498_[3]["Parent"] or L_498_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Diamond")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("Diamond")
			elseif Quest == "Rengoku" then
				if not L_1_[45]["CheckBoss"]("Awakened Ice Admiral") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Awakened Ice Admiral") then
						for L_499_forvar0, L_500_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_501_ = {}
							L_501_[3], L_501_[2] = L_499_forvar0, L_500_forvar1
							if L_501_[2]["Name"] == "Awakened Ice Admiral" and L_501_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_501_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_501_[2]["Parent"] or L_501_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Awakened Ice Admiral")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Awakened Ice Admiral") then
						for L_502_forvar0, L_503_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_504_ = {}
							L_504_[3], L_504_[2] = L_502_forvar0, L_503_forvar1
							if L_504_[2]["Name"] == "Awakened Ice Admiral" and L_504_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_504_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_504_[2]["Parent"] or L_504_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Awakened Ice Admiral")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("Awakened Ice Admiral")
			elseif Quest == "BartiloQuest" then
				if New_World then
					local L_505_ = {}
					L_505_[1] = L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress")
					if L_505_[1]["KilledBandits"] == false then
						if L_1_[35]["PlayerGui"]["Main"]["Quest"]["Visible"] and (L_1_[45]["sf"](L_1_[35]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "Swan Pirates") and L_1_[45]["sf"](L_1_[35]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"], "50")) then
							if L_1_[45]["ffc"](L_1_[40], "Swan Pirate") then
								for L_506_forvar0, L_507_forvar1 in pairs(L_1_[40]:GetChildren()) do
									local L_508_ = {}
									L_508_[1], L_508_[2] = L_506_forvar0, L_507_forvar1
									if L_508_[2]["Name"] == "Swan Pirate" and L_508_[2]["Humanoid"]["Health"] > 0 then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("SetSpawnPoint")
										repeat
											L_1_[45]["wt"]()
											L_1_[45]["BN"](L_508_[2]["Name"])
											L_1_[31](L_508_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
											if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
											end
											L_1_[14]()
										until (L_508_[2]["HumanoidRootPart"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 50 or L_508_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
									end
								end
							else
								L_1_[31](CFrame["new"](976.467651, 111.174057, 1229.1084), 1.5)
							end
						else
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("StartQuest", "BartiloQuest", 1)
						end
					elseif L_505_[1]["KilledSpring"] == false then
						if L_1_[45]["ffc"](L_1_[40], "Jeremy") then
							for L_509_forvar0, L_510_forvar1 in pairs(L_1_[40]:GetChildren()) do
								local L_511_ = {}
								L_511_[3], L_511_[1] = L_509_forvar0, L_510_forvar1
								if L_511_[1]["Name"] == "Jeremy" then
									repeat
										L_1_[45]["wt"]()
										L_1_[31](L_511_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
										if not game["Players"]["LocalPlayer"]["Character"]:FindFirstChild("HasBuso") then
											L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
										end
										L_1_[14]()
									until not L_511_[1]["Parent"] or L_511_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
								end
							end
						elseif L_1_[45]["ffc"](L_1_[7], "Jeremy") then
							L_1_[31]((L_1_[7]:FindFirstChild("Jeremy"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
						elseif not L_1_[45]["ffc"](L_1_[40], "Jeremy") and not L_1_[45]["ffc"](L_1_[7], "Jeremy") then
							L_1_[39]()
						end
					elseif L_505_[1]["DidPlates"] == false then
						repeat
							L_1_[45]["wt"](.3)
							L_1_[31](CFrame["new"](-1836, 11, 1714), 1.5)
						until (Vector3["new"](-1836, 11, 1714) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] < 10
						L_1_[45]["wt"](1)
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BartiloQuestProgress", "DidPlates")
					end
				else
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
				end
			elseif Quest == "Find Water Key" then
				if New_World then
					if L_1_[35]["Backpack"]:FindFirstChild("Water Key") or L_1_[45]["ffc"](L_1_[35]["Character"], "Water Key") then
						L_1_[45]["Status"](L_1_[3]({
							" Status : Use Water ";
							"Key"
						}))
						L_1_[45]["Equip"]("Water Key")
						L_1_[45]["wait"](0)
						L_1_[46]["Remotes"]["CommF_"]:InvokeServer("BuySharkmanKarate", true)
						CheckFindWaterKey = true
					elseif not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Water Key") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Water Key") then
						if L_1_[45]["ffc"](L_1_[40], "Tide Keeper") then
							for L_512_forvar0, L_513_forvar1 in pairs(L_1_[40]:GetChildren()) do
								local L_514_ = {}
								L_514_[1], L_514_[2] = L_512_forvar0, L_513_forvar1
								if L_514_[2]["Name"] == "Tide Keeper" and (L_514_[2]:FindFirstChild("Humanoid") and (L_514_[2]:FindFirstChild("Humanoid"))["Health"] > 0) then
									repeat
										task["wait"]()
										L_1_[31](L_514_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
										if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
											L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
										end
										L_1_[14]()
									until not L_514_[2]["Parent"] or L_514_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
								end
							end
						elseif L_1_[45]["ffc"](L_1_[7], "Tide Keeper") then
							for L_515_forvar0, L_516_forvar1 in pairs(L_1_[7]:GetChildren()) do
								local L_517_ = {}
								L_517_[1], L_517_[2] = L_515_forvar0, L_516_forvar1
								if L_517_[2]["Name"] == "Tide Keeper" and (L_517_[2]:FindFirstChild("Humanoid") and (L_517_[2]:FindFirstChild("Humanoid"))["Health"] > 0) then
									repeat
										L_1_[45]["wt"]()
										L_1_[31](L_517_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
										if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
											L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
										end
										L_1_[14]()
									until not L_517_[2]["Parent"] or L_517_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
								end
							end
						else
							L_1_[45]["HopLowServer"](10)
						end
					end
				else
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
				end
			elseif Quest == "Evo Race V1" then
				if New_World then
					if Start_Quest_Evo_V1 then
						if not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Flower 3") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Flower 3") then
							if (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](976.467651, 111.174057, 1229.1084))["Magnitude"] <= 800 then
								for L_518_forvar0, L_519_forvar1 in pairs(L_1_[40]:GetChildren()) do
									local L_520_ = {}
									L_520_[2], L_520_[1] = L_518_forvar0, L_519_forvar1
									if L_520_[1]["Humanoid"]["Health"] > 0 and (L_520_[1]["HumanoidRootPart"]["Position"] - Vector3["new"](976.467651, 111.174057, 1229.1084))["Magnitude"] <= 800 then
										repeat
											L_1_[45]["wt"]()
											L_1_[31](L_520_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
											if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
											end
											L_1_[14]()
										until not L_520_[1]["Parent"] or L_520_[1]["Humanoid"]["Health"] <= 0 or L_1_[45]["ffc"](L_1_[35]["Backpack"], "Flower 3") or L_1_[45]["ffc"](L_1_[35]["Character"], "Flower 3") or not(getgenv())["AutoFarm"]
									end
								end
							else
								L_1_[31](CFrame["new"](976.467651, 111.174057, 1229.1084), 1.5)
							end
						elseif not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Flower 2") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Flower 2") then
							if L_1_[45]["ffc"](L_1_[19], "Flower2") then
								L_1_[31](L_1_[19]["Flower2"]["CFrame"], 1.5)
								if (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - L_1_[19]["Flower2"]["Position"])["Magnitude"] <= 5 then
									L_1_[2]:SendKeyEvent(true, "Space", false, game)
									L_1_[45]["wt"](.5)
									L_1_[2]:SendKeyEvent(false, "Space", false, game)
								end
							end
						elseif not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Flower 1") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Flower 1") then
							L_1_[31](L_1_[19]["Flower1"]["CFrame"], 1.5)
							if (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - L_1_[19]["Flower1"]["Position"])["Magnitude"] <= 5 and L_1_[19]["Flower1"]["Transparency"] == 0 then
								L_1_[2]:SendKeyEvent(true, "Space", false, game)
								L_1_[45]["wt"](.5)
								L_1_[2]:SendKeyEvent(false, "Space", false, game)
							end
							L_1_[45]["wt"](1)
						else
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "3")
						end
					else
						if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "1") == 2 then
							Start_Quest_Evo_V1 = true
						end
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Alchemist", "2")
					end
				else
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
				end
			elseif Quest == "Evo Race V2" then
				if New_World then
					if L_1_[35]["Data"]["Race"]["Value"] == "Human" then
						if Quest_Start_Evo_Human_V3 then
							if not L_1_[45]["ffc"](L_1_[40], "Orbitus") and (not L_1_[45]["ffc"](L_1_[7], "Orbitus") and not Kill_Orbitus) then
								L_1_[45]["HopLowServer"](4)
							end
							if not L_1_[45]["ffc"](L_1_[40], "Jeremy") and (not L_1_[45]["ffc"](L_1_[7], "Jeremy") and not Kill_Jeremy) then
								L_1_[45]["HopLowServer"](4)
							end
							if not L_1_[45]["ffc"](L_1_[40], "Diamond") and (not L_1_[45]["ffc"](L_1_[7], "Diamond") and not Kill_Diamond) then
								L_1_[45]["HopLowServer"](4)
							end
							if not Kill_Orbitus then
								repeat
									L_1_[45]["wt"]()
									pcall(function()
										if L_1_[45]["ffc"](L_1_[40], "Orbitus") or L_1_[45]["ffc"](L_1_[7], "Orbitus") then
											if L_1_[45]["ffc"](L_1_[40], "Orbitus") then
												for L_521_forvar0, L_522_forvar1 in pairs(L_1_[40]:GetChildren()) do
													local L_523_ = {}
													L_523_[3], L_523_[1] = L_521_forvar0, L_522_forvar1
													if L_523_[1]["Name"] == "Orbitus" and L_523_[1]["Humanoid"]["Health"] > 0 then
														repeat
															L_1_[45]["wt"]()
															if L_523_[1]:FindFirstChild("HumanoidRootPart") then
																L_1_[31](L_523_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
																if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
																end
																L_1_[14]()
															else
																Kill_Orbitus = true
																break
															end
														until not L_523_[1]["Parent"] or L_523_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
														Kill_Orbitus = true
													end
												end
											elseif L_1_[45]["ffc"](L_1_[7], "Orbitus") then
												L_1_[31](L_1_[7]["Orbitus"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
											end
										end
									end)
								until Kill_Orbitus
							end
							if not Kill_Jeremy then
								repeat
									L_1_[45]["wt"]()
									pcall(function()
										if L_1_[45]["ffc"](L_1_[40], "Jeremy") or L_1_[45]["ffc"](L_1_[7], "Jeremy") then
											if L_1_[45]["ffc"](L_1_[40], "Jeremy") then
												for L_524_forvar0, L_525_forvar1 in pairs(L_1_[40]:GetChildren()) do
													local L_526_ = {}
													L_526_[2], L_526_[3] = L_524_forvar0, L_525_forvar1
													if L_526_[3]["Name"] == "Jeremy" and L_526_[3]["Humanoid"]["Health"] > 0 then
														repeat
															L_1_[45]["wt"]()
															if L_526_[3]:FindFirstChild("HumanoidRootPart") then
																L_1_[31](L_526_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
																if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
																end
																L_1_[14]()
															else
																Kill_Jeremy = true
																break
															end
														until not L_526_[3]["Parent"] or L_526_[3]["Humanoid"]["Health"] <= 0 or not L_526_[3]:FindFirstChild("HumanoidRootPart") or not(getgenv())["AutoFarm"]
														Kill_Jeremy = true
													end
												end
											elseif L_1_[45]["ffc"](L_1_[7], "Jeremy") then
												L_1_[31](L_1_[7]["Jeremy"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
											end
										end
									end)
								until Kill_Jeremy
							end
							if not Kill_Diamond then
								repeat
									L_1_[45]["wt"]()
									pcall(function()
										if L_1_[45]["ffc"](L_1_[40], "Diamond") or L_1_[45]["ffc"](L_1_[7], "Diamond") then
											if L_1_[45]["ffc"](L_1_[40], "Diamond") then
												for L_527_forvar0, L_528_forvar1 in pairs(L_1_[40]:GetChildren()) do
													local L_529_ = {}
													L_529_[2], L_529_[1] = L_527_forvar0, L_528_forvar1
													if L_529_[1]["Name"] == "Diamond" and L_529_[1]["Humanoid"]["Health"] > 0 then
														repeat
															L_1_[45]["wt"]()
															if L_529_[1]:FindFirstChild("HumanoidRootPart") then
																L_1_[31](L_529_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
																if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
																	L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
																end
																L_1_[14]()
															else
																Kill_Diamond = true
																break
															end
														until not L_529_[1]["Parent"] or L_529_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
														Kill_Diamond = true
													end
												end
											elseif L_1_[45]["ffc"](L_1_[7], "Diamond") then
												L_1_[31](L_1_[7]["Diamond"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
											end
										end
									end)
								until Kill_Diamond
							end
						else
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1")
							L_1_[45]["wt"](1)
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "2")
							warn()
							if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 2 then
								Quest_Start_Evo_Human_V3 = true
							end
						end
					elseif L_1_[35]["Data"]["Race"]["Value"] == "Fishman" then
						if Quest_Start_Evo_Fishman_V3 then
							local L_530_ = {}
							L_530_[1] = false
							L_530_[3] = false
							for L_531_forvar0, L_532_forvar1 in pairs(L_1_[19]["SeaBeasts"]:GetChildren()) do
								local L_533_ = {}
								L_533_[2], L_533_[3] = L_531_forvar0, L_532_forvar1
								if L_533_[3]:FindFirstChild("Health") and (L_533_[3]["Health"]["Value"] > 0 and (Vector3["new"](-3823.9206542969, 76.979339599609, -11685.7734375) - L_533_[3]["HumanoidRootPart"]["Position"])["Magnitude"] >= 1500) then
									L_530_[1] = true
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyFishmanKarate")
									Tejao = true
									PositionSkillMasteryDevilFruit = L_533_[3]["HumanoidRootPart"]["CFrame"]
									L_1_[35]["Character"]["Humanoid"]["Sit"] = false
									wait(1)
									if L_1_[35]["Character"]["Humanoid"]["Sit"] == false then
										Boat = nil
									end
									repeat
										wait()
										L_1_[31](L_533_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 3, 0), 1.5)
									until (L_533_[3]["HumanoidRootPart"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5 or not(getgenv())["AutoFarm"]
									repeat
										wait()
										L_1_[45]["Equip"]("Fishman Karate")
										if L_1_[35]["PlayerGui"]["Main"]["Skills"]:FindFirstChild("Fishman Karate") and (tostring(L_1_[35]["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["Z"]["Title"]["TextColor"]) == "Institutional white" and L_1_[35]["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["Z"]["Cooldown"]["AbsoluteSize"]["X"] == 0) then
											L_1_[45]["Equip"]("Fishman Karate")
											L_1_[31](L_533_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 3, 0), 1.5)
											wait(.5)
											PositionSkillMasteryDevilFruit = L_533_[3]["HumanoidRootPart"]["Position"]
											if L_533_[3]["Health"]["Value"] > 0 then
												L_1_[2]:SendKeyEvent(true, "Z", false, game)
												wait(.5)
												L_1_[2]:SendKeyEvent(false, "Z", false, game)
												wait(.2)
											end
										elseif L_1_[35]["PlayerGui"]["Main"]["Skills"]:FindFirstChild("Fishman Karate") and (tostring(L_1_[35]["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["X"]["Title"]["TextColor"]) == "Institutional white" and L_1_[35]["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["X"]["Cooldown"]["AbsoluteSize"]["X"] == 0) then
											L_1_[45]["Equip"]("Fishman Karate")
											L_1_[31](L_533_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 3, 0), 1.5)
											wait(.5)
											PositionSkillMasteryDevilFruit = L_533_[3]["HumanoidRootPart"]["Position"]
											if L_533_[3]["Health"]["Value"] > 0 then
												L_1_[2]:SendKeyEvent(true, "X", false, game)
												wait(.5)
												L_1_[2]:SendKeyEvent(false, "X", false, game)
												wait(.2)
											end
										elseif L_1_[35]["PlayerGui"]["Main"]["Skills"]:FindFirstChild("Fishman Karate") and (tostring(L_1_[35]["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["C"]["Title"]["TextColor"]) == "Institutional white" and L_1_[35]["PlayerGui"]["Main"]["Skills"]["Fishman Karate"]["C"]["Cooldown"]["AbsoluteSize"]["X"] == 0) then
											L_1_[45]["Equip"]("Fishman Karate")
											L_1_[31](L_533_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 3, 0), 1.5)
											wait(.5)
											PositionSkillMasteryDevilFruit = L_533_[3]["HumanoidRootPart"]["Position"]
											if L_533_[3]["Health"]["Value"] > 0 then
												L_1_[2]:SendKeyEvent(true, "C", false, game)
												wait(.5)
												L_1_[2]:SendKeyEvent(false, "C", false, game)
												wait(.2)
											end
										end
									until not L_533_[3]["Parent"] or L_533_[3]["Health"]["Value"] <= 0 or not(getgenv())["AutoFarm"]
									Tejao = false
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "3")
									wait(1)
								end
							end
							if not L_530_[1] then
								for L_534_forvar0, L_535_forvar1 in pairs(L_1_[19]["Boats"]:GetChildren()) do
									local L_536_ = {}
									L_536_[3], L_536_[1] = L_534_forvar0, L_535_forvar1
									if L_536_[1]["Name"] == "Dinghy" and tostring(L_536_[1]["Owner"]["Value"]) == L_1_[35]["Name"] then
										L_530_[3] = true
										if (Vector3["new"](3017.2006835938, -4.25, -2686.3325195312) - L_536_[1]["VehicleSeat"]["Position"])["Magnitude"] >= 30 then
											if L_1_[35]["Character"]["Humanoid"]["Sit"] then
												Boat = "Bit"
												TPBoat(CFrame["new"](1550, -4.25, -2759), L_536_[1]["VehicleSeat"], 200)
											elseif (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - L_536_[1]["VehicleSeat"]["Position"])["Magnitude"] >= 10 then
												Boat = nil
												L_1_[31](L_536_[1]["VehicleSeat"]["CFrame"], 1.5)
											else
												Boat = "Bit"
												L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"] = L_536_[1]["VehicleSeat"]["CFrame"] * CFrame["new"](0, 1, 0)
												wait(3)
											end
										else
											if L_1_[35]["Character"]["Humanoid"]["Sit"] then
												vu:Button1Down(Vector2["new"](1280, 600))
												wait(1)
											elseif (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - L_536_[1]["VehicleSeat"]["Position"])["Magnitude"] >= 10 then
												Boat = nil
												L_1_[31](L_536_[1]["VehicleSeat"]["CFramem"], 1.5)
											else
												Boat = "Bit"
												L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"] = L_536_[1]["VehicleSeat"]["CFrame"] * CFrame["new"](0, 1, 0)
												wait(3)
											end
										end
									end
								end
							end
							if not L_530_[3] and not L_530_[1] then
								L_1_[31](CFrame["new"](-1935, 6, -2564), 1.5)
								if (Vector3["new"](-1935, 6, -2564) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3 then
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyBoat", "Dinghy")
									wait(1)
									Boat = "bit"
								end
							end
						else
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1")
							wait(1)
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "2")
							if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 1 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Wenlocktoad", "1") == 2 then
								Quest_Start_Evo_Fishman_V3 = true
							end
						end
					end
				else
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
				end
			elseif Quest == "Don Swan" then
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Don Swan") then
						for L_537_forvar0, L_538_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_539_ = {}
							L_539_[1], L_539_[2] = L_537_forvar0, L_538_forvar1
							if L_539_[2]["Name"] == "Don Swan" and L_539_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_539_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_539_[2]["Parent"] or L_539_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Don Swan")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Don Swan") then
						for L_540_forvar0, L_541_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_542_ = {}
							L_542_[3], L_542_[1] = L_540_forvar0, L_541_forvar1
							if L_542_[1]["Name"] == "Don Swan" and L_542_[1]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_542_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_542_[1]["Parent"] or L_542_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Don Swan")
							end
						end
					else
						L_1_[45]["HopLowServer"](3)
					end
				until not L_1_[45]["CheckBoss"]("Don Swan")
			elseif Quest == "TravelZou" then
				if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
				end
				if Kill_Don then
					if L_1_[45]["ffc"](L_1_[40], "rip_indra") then
						for L_543_forvar0, L_544_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_545_ = {}
							L_545_[1], L_545_[3] = L_543_forvar0, L_544_forvar1
							if L_545_[3]["Name"] == "rip_indra" and L_545_[3]["Humanoid"]["Health"] > 0 then
								if L_1_[45]["ffc"](L_545_[3]["Humanoid"], "Animator") then
									L_545_[3]["Humanoid"]["Animator"]:Destroy()
								end
								repeat
									L_1_[45]["wt"](.1)
									L_1_[14]()
									L_1_[31](L_545_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
								until L_545_[3]["Humanoid"]["Health"] <= 0 or not L_545_[3]["Parent"] or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1
								if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
									TleP = true
									L_1_[45]["wt"](30)
								end
							end
						end
					elseif L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
						TleP = true
						L_1_[45]["wt"](30)
					elseif not(game:GetService("Workspace"))["Enemies"]:FindFirstChild("rip_indra") then
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check")
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Begin")
						L_1_[45]["wt"](3)
					end
				elseif not okokok then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Check")
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("ZQuestProgress", "Begin")
					L_1_[45]["wt"](3)
					for L_546_forvar0, L_547_forvar1 in pairs(L_1_[40]:GetChildren()) do
						local L_548_ = {}
						L_548_[1], L_548_[3] = L_546_forvar0, L_547_forvar1
						if L_548_[3]["Name"] == "rip_indra" then
							Kill_Don = true
						end
					end
					okokok = true
				else
					L_1_[14]()
					Quest = nil
					L_1_[45]["Status"](L_1_[3]({
						" Status : Auto Farm ",
						"Level"
					}))
					L_1_[39]()
				end
			elseif Quest == "Yama" then
				if (L_1_[19]["Map"]["Waterfall"]["SealedKatana"]["Hitbox"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 300 then
					if L_1_[45]["ffc"](L_1_[40], "Ghost") then
						for L_549_forvar0, L_550_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_551_ = {}
							L_551_[2], L_551_[3] = L_549_forvar0, L_550_forvar1
							if L_551_[3]["Name"] == "Ghost" and L_551_[3]["Humanoid"]["Health"] > 0 then
								if L_1_[45]["ffc"](L_551_[3]["Humanoid"], "Animator") then
									L_551_[3]["Humanoid"]["Animator"]:Destroy()
								end
								repeat
									wait(.1)
									L_1_[14]()
									L_551_[3]["HumanoidRootPart"]["Size"] = Vector3["new"](50, 50, 50)
									L_1_[31](L_551_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 15, 0), 1.5)
									L_1_[33]:Button1Down(Vector2["new"](1280, 600))
								until not L_551_[3]["Parent"] or L_551_[3]["Humanoid"]["Health"] <= 0
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Ghost") then
						L_1_[31]((L_1_[7]:FindFirstChild("Ghost"))["HumanoidRootPart"]["CFrame"], 1.5)
					elseif not L_1_[45]["ffc"](L_1_[40], "Ghost") and not L_1_[45]["ffc"](L_1_[7], "Ghost") then
						L_1_[31](L_1_[19]["Map"]["Waterfall"]["SealedKatana"]["Hitbox"]["CFrame"], 1.5)
						for L_552_forvar0, L_553_forvar1 in pairs(L_1_[35]["Character"]:GetChildren()) do
							local L_554_ = {}
							L_554_[2], L_554_[3] = L_552_forvar0, L_553_forvar1
							if L_554_[3]:IsA("Tool") then
								L_554_[3]["Parent"] = L_1_[35]["Backpack"]
							end
						end
						fireclickdetector(L_1_[19]["Map"]["Waterfall"]["SealedKatana"]["Hitbox"]["ClickDetector"], 1)
					end
				else
					L_1_[31](L_1_[19]["Map"]["Waterfall"]["SealedKatana"]["Hitbox"]["CFrame"], 1.5)
				end
			elseif Quest == "Quest Electric Claw" then
				if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", true) == "Nah." or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", true) == 4 then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", "Start")
					L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](-12548, 337, -7481)
				elseif L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", true) == 3 or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyElectricClaw", true) == 0 then
					Electric_Claw_C = true
				end
			elseif Quest == "Venom Bow" then
				if not L_1_[45]["CheckBoss"]("Hydra Leader") then
					return
				end
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Hydra Leader") then
						for L_555_forvar0, L_556_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_557_ = {}
							L_557_[2], L_557_[1] = L_555_forvar0, L_556_forvar1
							if L_557_[1]["Name"] == "Hydra Leader" and L_557_[1]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_557_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_557_[1]["Parent"] or L_557_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Hydra Leader")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Hydra Leader") then
						for L_558_forvar0, L_559_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_560_ = {}
							L_560_[1], L_560_[2] = L_558_forvar0, L_559_forvar1
							if L_560_[2]["Name"] == "Hydra Leader" and L_560_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_560_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_560_[2]["Parent"] or L_560_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Hydra Leader")
							end
						end
					end
				until not L_1_[45]["CheckBoss"]("Hydra Leader")
			elseif Quest == "Godhuman" then
				if L_1_[45]["CheckItem"]("Fish Tail") >= 20 and (L_1_[45]["CheckItem"]("Magma Ore") >= 20 and (L_1_[45]["CheckItem"]("Mystic Droplet") >= 10 and L_1_[45]["CheckItem"]("Dragon Scale") >= 10)) then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyGodhuman", true)
					Godhuman = true
				elseif L_1_[45]["CheckItem"]("Fish Tail") < 20 or L_1_[45]["CheckItem"]("Magma Ore") < 20 or L_1_[45]["CheckItem"]("Mystic Droplet") < 10 or L_1_[45]["CheckItem"]("Dragon Scale") < 10 then
					local L_561_ = {}
					L_561_[5] = nil
					L_561_[4] = nil
					L_561_[3] = nil
					L_561_[2] = nil
					if L_1_[45]["CheckItem"]("Fish Tail") < 20 then
						L_561_[5] = "Fishman Warrior"
						L_561_[4] = "Fishman Commando"
						L_561_[3] = CFrame["new"](60946.6094, 65.6735229, 1525.91687)
						L_561_[2] = CFrame["new"](61902.7383, 32.4828358, 1478.33936)
						if ((CFrame["new"](61164, 12, 1820))["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] >= 2000 then
							L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](61164, 12, 1820)
						end
						if not Old_World then
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelMain")
							TleP = true
							L_1_[45]["wt"](50)
						end
					elseif L_1_[45]["CheckItem"]("Magma Ore") < 20 then
						L_561_[5] = "Magma Ninja"
						L_561_[4] = "Lava Pirate"
						L_561_[3] = CFrame["new"](-5466.06445, 77.6952019, -5837.42822)
						L_561_[2] = CFrame["new"](-5169.71729, 54.1234779, -4669.73633)
						if not New_World then
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
							TleP = true
							L_1_[45]["wt"](50)
						end
					elseif L_1_[45]["CheckItem"]("Mystic Droplet") < 10 then
						L_561_[5] = "Sea Soldier"
						L_561_[4] = "Water Fighter"
						L_561_[3] = CFrame["new"](-3115.78223, 63.8785706, -9808.38574)
						L_561_[2] = CFrame["new"](-3212.99683, 263.809296, -10551.8799)
						if not New_World then
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
							TleP = true
							L_1_[45]["wt"](50)
						end
					elseif L_1_[45]["CheckItem"]("Dragon Scale") < 10 then
						L_561_[5] = "Dragon Crew Warrior"
						L_561_[4] = "Dragon Crew Archer"
						L_561_[3] = CFrame["new"](6241.9951171875, 51.522083282471, -1243.9771728516)
						L_561_[2] = CFrame["new"](6488.9155273438, 383.38375854492, -110.66246032715)
						if not Three_World then
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
							TleP = true
							L_1_[45]["wt"](50)
						end
					end
					if L_561_[5] ~= nil then
						repeat
							L_1_[45]["wt"]()
							L_1_[31](L_561_[3])
						until (L_561_[3]["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
						if L_1_[45]["ffc"](L_1_[40], L_561_[5]) then
							for L_562_forvar0, L_563_forvar1 in pairs(game["Workspace"]["Enemies"]:GetChildren()) do
								local L_564_ = {}
								L_564_[2], L_564_[3] = L_562_forvar0, L_563_forvar1
								if L_564_[3]["Name"] == L_561_[5] and L_564_[3]["Humanoid"]["Health"] > 0 then
									StatrMagnet = true
									repeat
										L_1_[45]["wt"]()
										L_1_[31](L_564_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
										L_1_[14]()
										L_1_[45]["BN"](L_564_[3]["Name"])
									until not L_564_[3]["Parent"] or L_564_[3]["Humanoid"]["Health"] <= 0
									StatrMagnet = false
								end
							end
						end
					end
					if L_561_[4] ~= nil then
						repeat
							L_1_[45]["wt"]()
							L_1_[31](L_561_[2], 1.5)
						until (L_561_[2]["Position"] - game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
						if game["Workspace"]["Enemies"]:FindFirstChild(L_561_[4]) then
							for L_565_forvar0, L_566_forvar1 in pairs(game["Workspace"]["Enemies"]:GetChildren()) do
								local L_567_ = {}
								L_567_[2], L_567_[3] = L_565_forvar0, L_566_forvar1
								if L_567_[3]["Name"] == L_561_[4] and L_567_[3]["Humanoid"]["Health"] > 0 then
									StatrMagnet = true
									repeat
										L_1_[45]["wt"]()
										L_1_[31](L_567_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
										L_1_[14]()
										L_1_[45]["BN"](L_567_[3]["Name"])
									until not L_567_[3]["Parent"] or L_567_[3]["Humanoid"]["Health"] <= 0
									StatrMagnet = false
								end
							end
						end
					end
				end
			elseif Quest == "Longma" then
				repeat
					L_1_[45]["wt"]()
					if L_1_[45]["ffc"](L_1_[40], "Longma") then
						for L_568_forvar0, L_569_forvar1 in pairs(L_1_[40]:GetChildren()) do
							local L_570_ = {}
							L_570_[3], L_570_[2] = L_568_forvar0, L_569_forvar1
							if L_570_[2]["Name"] == "Longma" and L_570_[2]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_570_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_570_[2]["Parent"] or L_570_[2]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Longma")
							end
						end
					elseif L_1_[45]["ffc"](L_1_[7], "Longma") then
						for L_571_forvar0, L_572_forvar1 in pairs(L_1_[7]:GetChildren()) do
							local L_573_ = {}
							L_573_[2], L_573_[3] = L_571_forvar0, L_572_forvar1
							if L_573_[3]["Name"] == "Longma" and L_573_[3]["Humanoid"]["Health"] > 0 then
								repeat
									L_1_[45]["wt"]()
									L_1_[31](L_573_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
									if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
									end
									L_1_[14]()
								until not L_573_[3]["Parent"] or L_573_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"] or not L_1_[45]["CheckBoss"]("Longma")
							end
						end
					else
						L_1_[45]["HopLowServer"](3)
					end
				until not L_1_[45]["CheckBoss"]("Longma")
			elseif Quest == "Soul Guitar" then
				if L_1_[45]["CheckItem"]("Bones") < 500 then
					if Three_World then
						L_1_[45]["FarmBone"](false)
					else
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
						TleP = true
						wait(50)
					end
				elseif L_1_[45]["CheckItem"]("Ectoplasm") < 250 then
					if New_World then
						if (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](921.30249023438, 125.400390625, 32937.34375))["Magnitude"] >= 3000 then
							repeat
								L_1_[45]["wt"]()
								L_1_[31](CFrame["new"](921.30249023438, 125.400390625, 32937.34375), 1.5)
							until (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](921.30249023438, 125.400390625, 32937.34375))["Magnitude"] <= 3
						elseif (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](921.30249023438, 125.400390625, 32937.34375))["Magnitude"] < 3000 then
							Monster = nil
							for L_574_forvar0 = 1500, 0, -300 do
								local L_575_ = {}
								L_575_[2] = L_574_forvar0
								L_1_[45]["GetMonster"](L_575_[2])
							end
							if Monster ~= nil and Monster["Humanoid"]["Health"] > 0 then
								PosMon_X = Monster["HumanoidRootPart"]["CFrame"]
								StatrMagnet = true
								repeat
									wait()
									L_1_[31](Monster["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 20, 0), 1.5)
									L_1_[14]()
								until not Monster["Parent"] or Monster["Humanoid"]["Health"] <= 0
								StatrMagnet = false
							elseif Monster == nil then
								for L_576_forvar0 = 1500, 0, -300 do
									local L_577_ = {}
									L_577_[2] = L_576_forvar0
									L_1_[45]["GetMonster"](L_577_[2])
								end
								if Monster == nil then
									L_1_[31](CFrame["new"](921.30249023438, 125.400390625, 32937.34375), 1.5)
								end
							end
						end
					else
						L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelDressrosa")
						TleP = true
						wait(50)
					end
				elseif not Three_World then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("TravelZou")
					TleP = true
					wait(50)
				else
					if tostring((game:GetService("Workspace"))["Map"]["Haunted Castle"]["SwampWater"]["BrickColor"]) == "Maroon" then
						if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check") ~= nil and (L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check"))["Swamp"] == false then
							repeat
								wait()
								L_1_[31](CFrame["new"](-10147.779296875, 138.6266784668, 5939.5600585938), 1.5)
							until (Vector3["new"](-10147.779296875, 138.6266784668, 5939.5600585938) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
							wait(1)
							get_mon = {}
							L_1_[45]["GetMon_Soul"]()
							if #get_mon >= 6 then
								for L_578_forvar0, L_579_forvar1 in pairs(L_1_[35]["Character"]:GetChildren()) do
									local L_580_ = {}
									L_580_[3], L_580_[2] = L_578_forvar0, L_579_forvar1
									if L_580_[2]:IsA("Tool") then
										L_580_[2]["Parent"] = L_1_[35]["Backpack"]
									end
								end
								L_1_[31](CFrame["new"](-10147.779296875, 158.6266784668, 5939.5600585938), 1.5)
								for L_581_forvar0, L_582_forvar1 in next, (game:GetService("Workspace"))["Enemies"]:GetChildren() do
									local L_583_ = {}
									L_583_[2], L_583_[1] = L_581_forvar0, L_582_forvar1
									if (L_583_[1]["HumanoidRootPart"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 500 then
										L_583_[1]["HumanoidRootPart"]["CFrame"] = L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 0, 20)
										sethiddenproperty(L_1_[35], "SimulationRadius", math["huge"])
									end
								end
								wait(1)
								L_1_[14]()
								wait(2)
							end
						end
					elseif L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check") ~= nil then
						local L_584_ = {}
						L_584_[2] = L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check")
						if not Quest_Soul_Guitar then
							repeat
								wait(.1)
								L_1_[31](CFrame["new"](-9680.7412109375, 6.1591067314148, 6346.1552734375), 1.5)
							until (Vector3["new"](-9680.7412109375, 6.1591067314148, 6346.1552734375) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5
							wait(1)
							for L_585_forvar0, L_586_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check")) do
								local L_587_ = {}
								L_587_[3], L_587_[1] = L_585_forvar0, L_586_forvar1
								if L_587_[1] == false then
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", L_587_[3])
								end
							end
							wait(2)
							for L_588_forvar0, L_589_forvar1 in pairs(L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", "Check")) do
								local L_590_ = {}
								L_590_[3], L_590_[1] = L_588_forvar0, L_589_forvar1
								if L_590_[1] == false then
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GuitarPuzzleProgress", L_590_[3])
								end
							end
							wait(1)
							Quest_Soul_Guitar = true
						end
					elseif tostring((game:GetService("Workspace"))["Map"]["Haunted Castle"]["SwampWater"]["BrickColor"]) ~= "Maroon" then
						if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 2) == true then
							L_1_[7]["Remotes"]["CommF_"]:InvokeServer("gravestoneEvent", 2, true)
						else
							L_1_[31](CFrame["new"](-8652.6416015625, 141.10939025879, 6168.810546875), 1.5)
						end
					end
				end
			elseif Quest == "RGB" then
				local L_591_ = {}
				L_591_[1] = nil
				if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == nil then
					if L_1_[35]["PlayerGui"]["Main"]["Quest"]["Visible"] then
						local L_592_ = {}
						L_592_[1] = (game:GetService("Players"))["LocalPlayer"]["PlayerGui"]["Main"]["Quest"]["Container"]["QuestTitle"]["Title"]["Text"]
						if string["find"](L_592_[1], "Stone") then
							if L_1_[45]["ffc"](L_1_[40], "Stone") or L_1_[45]["ffc"](L_1_[7], "Stone") then
								L_591_[1] = "Stone"
							end
						end
						if string["find"](L_592_[1], "Hydra Leader") then
							if L_1_[45]["ffc"](L_1_[40], "Hydra Leader") or L_1_[45]["ffc"](L_1_[7], "Hydra Leader") then
								L_591_[1] = "Hydra Leader"
							end
						end
						if string["find"](L_592_[1], "Kilo Admiral") then
							if L_1_[45]["ffc"](L_1_[40], "Kilo Admiral") or L_1_[45]["ffc"](L_1_[7], "Kilo Admiral") then
								L_591_[1] = "Kilo Admiral"
							end
						end
						if string["find"](L_592_[1], "Captain Elephant") then
							if L_1_[45]["ffc"](L_1_[40], "Captain Elephant") or L_1_[45]["ffc"](L_1_[7], "Captain Elephant") then
								L_591_[1] = "Captain Elephant"
							end
						end
						if string["find"](L_592_[1], "Beautiful Pirate") then
							if L_1_[45]["ffc"](L_1_[40], "Beautiful Pirate") or L_1_[45]["ffc"](L_1_[7], "Beautiful Pirate") then
								L_591_[1] = "Beautiful Pirate"
							end
						end
						if L_591_[1] ~= nil then
							if L_1_[45]["ffc"](L_1_[40], L_591_[1]) then
								for L_593_forvar0, L_594_forvar1 in pairs(L_1_[40]:GetChildren()) do
									local L_595_ = {}
									L_595_[2], L_595_[3] = L_593_forvar0, L_594_forvar1
									if L_595_[3]["Name"] == L_591_[1] and L_595_[3]["Humanoid"]["Health"] > 0 then
										repeat
											L_1_[45]["wt"]()
											L_1_[31](L_595_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
											if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
											end
											L_1_[14]()
										until not L_595_[3]["Parent"] or L_595_[3]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
									end
								end
							elseif L_1_[45]["ffc"](L_1_[7], L_591_[1]) then
								for L_596_forvar0, L_597_forvar1 in pairs(L_1_[7]:GetChildren()) do
									local L_598_ = {}
									L_598_[3], L_598_[1] = L_596_forvar0, L_597_forvar1
									if L_598_[1]["Name"] == L_591_[1] and L_598_[1]["Humanoid"]["Health"] > 0 then
										repeat
											L_1_[45]["wt"]()
											L_1_[31](L_598_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 40, 0), 1.5)
											if not L_1_[45]["ffc"](L_1_[35]["Character"], "HasBuso") then
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Buso")
											end
											L_1_[14]()
										until not L_598_[1]["Parent"] or L_598_[1]["Humanoid"]["Health"] <= 0 or not(getgenv())["AutoFarm"]
									end
								end
							end
						else
							if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == 1 then
								return
							else
								L_1_[45]["HopLowServer"](10)
							end
						end
					end
				elseif L_1_[7]["Remotes"]["CommF_"]:InvokeServer("HornedMan", "Bet") == 1 then
					return
				end
			elseif Quest == "Pull Lerver" then
				if not ExSeb then
					if (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("RaceV4Progress", "Check") == 1 then
						local L_599_ = {}
						L_599_[1] = {
							[1] = "RaceV4Progress";
							[2] = "Check"
						};
						(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_599_[1]))
						L_599_[3] = {
							[1] = "RaceV4Progress";
							[2] = "Begin"
						};
						(((game:GetService("ReplicatedStorage")):WaitForChild("Remotes")):WaitForChild("CommF_")):InvokeServer(unpack(L_599_[3]))
					elseif (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("RaceV4Progress", "Check") == 2 then
						local L_600_ = {}
						L_600_[1] = {
							[1] = "RaceV4Progress",
							[2] = "Check"
						};
						(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_600_[1]))
						repeat
							local L_601_ = {}
							wait()
							game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["CFrame"] = CFrame["new"](2959.87231, 2282.42139, -7216.23193)
							L_601_[1] = {
								[1] = "RaceV4Progress",
								[2] = "Teleport"
							};
							(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_601_[1]))
						until (game["Players"]["LocalPlayer"]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](28286.35546875, 14896.5078125, 102.62469482422))["Magnitude"] <= 15
					elseif (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("RaceV4Progress", "Check") == 3 then
						ExSeb = true
						if not ujihfdg then
							local L_602_ = {}
							L_602_[3] = {
								[1] = "RaceV4Progress";
								[2] = "Check"
							};
							(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_602_[3]))
							wait(1)
							L_602_[2] = {
								[1] = "RaceV4Progress";
								[2] = "Continue"
							};
							(game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer(unpack(L_602_[2]))
							ujihfdg = true
						end
					elseif (game:GetService("ReplicatedStorage"))["Remotes"]["CommF_"]:InvokeServer("RaceV4Progress", "Check") == 4 then
						ExSeb = true
					end
				else
					if (game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland") then
						if L_1_[35]["Character"]["Humanoid"]["Sit"] == true then
							L_1_[35]["Character"]["Humanoid"]["Sit"] = false
							wait(.5)
							L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"] = L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 15, 0)
							wait(1)
						else
							local L_603_ = {}
							L_603_[1] = ((game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland"))["WorldPivot"] * CFrame["new"](0, 500, 0)
							if (L_603_[1]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 25 then
								task["spawn"](function()
									repeat
										wait(.2)
										L_1_[19]["CurrentCamera"]["CFrame"] = CFrame["lookAt"](L_1_[19]["CurrentCamera"]["CFrame"]["Position"], L_1_[16]:GetMoonDirection() + L_1_[19]["CurrentCamera"]["CFrame"]["Position"])
									until StopCamera or not(game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland") or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CheckTempleDoor")
								end);
								((L_1_[7]:WaitForChild("Remotes")):WaitForChild("CommE")):FireServer("ActivateAbility")
								wait(17)
								for L_604_forvar0, L_605_forvar1 in pairs((game:GetService("Workspace"))["Map"]["MysticIsland"]:GetChildren()) do
									local L_606_ = {}
									L_606_[3], L_606_[1] = L_604_forvar0, L_605_forvar1
									if L_606_[1]["ClassName"] == "MeshPart" and (L_606_[1]["Name"] == "Part" and L_606_[1]["Transparency"] == 0) then
										repeat
											wait(.2)
											StopCamera = true
											L_1_[31](L_606_[1]["CFrame"], 1.5)
											wait(.5)
											L_1_[2]:SendKeyEvent(true, "Space", false, game)
											wait(.5)
											L_1_[2]:SendKeyEvent(false, "Space", false, game)
										until L_606_[1]["Transparency"] == 1 or not(game:GetService("Workspace"))["Map"]:FindFirstChild("MysticIsland") or L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CheckTempleDoor")
										wait(.5)
									end
								end
							else
								L_1_[31](L_603_[1], 1.5)
							end
						end
					end
				end
			elseif Quest == "Cursed Dual Katana" then
				if L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor") == "opened" then
					local L_607_ = {}
					L_607_[2] = L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "Progress")
					if L_607_[2]["Good"] == 0 or L_607_[2]["Good"] == -3 then
						CDK_Q_S_C = 3
						if L_607_[2]["Good"] == 0 then
							L_1_[45]["GetQuest"]("Good")
						elseif L_607_[2]["Good"] == -3 then
							repeat
								wait()
								L_1_[31](CFrame["new"](-4600.37, 15.1245, -2881.18), 1.5)
								if (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-4600.37, 15.1245, -2881.18))["Magnitude"] <= 3 then
									wait(1)
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", L_1_[25]["NPCs"]:FindFirstChild("Luxury Boat Dealer"), "Check")
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GetUnlockables")
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", L_1_[25]["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
									wait(.5)
									Q_Boat_1 = true
								end
							until Q_Boat_1
							repeat
								wait()
								L_1_[31](CFrame["new"](-2068.63, 3.37222, -9887.08), 1.5)
								if (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-2068.63, 3.37222, -9887.08))["Magnitude"] <= 3 then
									wait(1)
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", L_1_[25]["NPCs"]:FindFirstChild("Luxury Boat Dealer"), "Check")
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GetUnlockables")
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", L_1_[25]["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
									wait(.5)
									Q_Boat_2 = true
								end
							until Q_Boat_2
							repeat
								wait()
								L_1_[31](CFrame["new"](-9531.19, 5.91675, -8377.75), 1.5)
								if (L_1_[35]["Character"]["HumanoidRootPart"]["Position"] - Vector3["new"](-9531.19, 5.91675, -8377.75))["Magnitude"] <= 3 then
									wait(1)
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", L_1_[25]["NPCs"]:FindFirstChild("Luxury Boat Dealer"), "Check")
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("GetUnlockables")
									L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "BoatQuest", L_1_[25]["NPCs"]:FindFirstChild("Luxury Boat Dealer"))
									wait(.5)
									Q_Boat_3 = true
								end
							until Q_Boat_3
							Q_Boat_1 = false
							Q_Boat_2 = false
							Q_Boat_3 = false
						end
					elseif L_607_[2]["Evil"] == 0 or L_607_[2]["Evil"] == -3 then
						CDK_Q_S_C = 4
						if L_607_[2]["Evil"] == 0 then
							L_1_[45]["GetQuest"]("Evil")
						elseif L_607_[2]["Evil"] == -3 then
							Stop_Fast_Attack = true
							for L_608_forvar0, L_609_forvar1 in pairs(L_1_[40]:GetChildren()) do
								local L_610_ = {}
								L_610_[2], L_610_[3] = L_608_forvar0, L_609_forvar1
								if L_610_[3]:FindFirstChild("HumanoidRootPart") and (L_610_[3]["HumanoidRootPart"]["Position"] - Vector3["new"](-13347.6982, 332.378143, -7652.27783))["Magnitude"] > 10 then
									L_610_[3]["HumanoidRootPart"]["CFrame"] = CFrame["new"](-13347.6982, 332.378143, -7652.27783)
									sethiddenproperty(L_1_[35], "SimulationRadius", math["huge"])
								end
							end
							L_1_[31](CFrame["new"](-13347.6982, 332.378143, -7652.27783, -0.97929436, 4.50812898e-08, -0.202441484, 4.58302409e-08, 1, 9.8789521e-10, .202441484, -8.31050162e-09, -0.97929436), 1.5)
						end
					elseif L_607_[2]["Evil"] == 1 or L_607_[2]["Evil"] == -4 then
						Stop_Fast_Attack = false
						CDK_Q_S_C = 5
						if L_607_[2]["Evil"] == 1 then
							L_1_[45]["GetQuest"]("Evil")
						elseif L_607_[2]["Evil"] == -4 then
							if L_1_[45]["ffc"](L_1_[35], "QuestHaze") then
								if Quest_Kill == nil then
									for L_611_forvar0, L_612_forvar1 in pairs(L_1_[35]["QuestHaze"]:GetChildren()) do
										local L_613_ = {}
										L_613_[2], L_613_[1] = L_611_forvar0, L_612_forvar1
										if tonumber(L_613_[1]["Value"]) > 0 and Quest_Kill == nil then
											SelectMonster = L_613_[1]["Name"]
											CFrameMon = nil
											CheckLevel2()
											if CFrameMon ~= nil then
												Quest_Kill = L_613_[1]["Name"]
											end
										end
									end
								elseif L_1_[45]["ffc"](L_1_[35]["QuestHaze"], Quest_Kill) and tonumber((L_1_[35]["QuestHaze"]:FindFirstChild(Quest_Kill))["Value"]) <= 0 then
									Quest_Kill = nil
								elseif L_1_[45]["ffc"](L_1_[35]["QuestHaze"], Quest_Kill) and tonumber((L_1_[35]["QuestHaze"]:FindFirstChild(Quest_Kill))["Value"]) > 0 then
									for L_614_forvar0, L_615_forvar1 in pairs(L_1_[40]:GetChildren()) do
										local L_616_ = {}
										L_616_[1], L_616_[2] = L_614_forvar0, L_615_forvar1
										if L_616_[2]:FindFirstChild("Humanoid") and (L_616_[2]["Humanoid"]["Health"] > 0 and L_616_[2]:FindFirstChild("HazeESP")) then
											repeat
												wait(.1)
												L_1_[31](L_616_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 25, 0), 1.5)
												L_1_[14]()
											until not L_616_[2]["Parent"] or L_616_[2]["Humanoid"]["Health"] <= 0
										end
									end
									L_1_[31](CFrameMon, 1.5)
								else
									Quest_Kill = nil
								end
							end
						end
					elseif L_607_[2]["Good"] == 1 or L_607_[2]["Good"] == -4 then
						CDK_Q_S_C = 6
						if L_607_[2]["Good"] == 1 then
							L_1_[45]["GetQuest"]("Good")
						elseif L_607_[2]["Good"] == -4 then
							L_1_[31](CFrame["new"](-5543.0805664062, 313.76550292969, -2969.4846191406), 1.5)
							if (Vector3["new"](-5543.0805664062, 313.76550292969, -2969.4846191406) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1500 then
								for L_617_forvar0, L_618_forvar1 in pairs(L_1_[40]:GetChildren()) do
									local L_619_ = {}
									L_619_[3], L_619_[1] = L_617_forvar0, L_618_forvar1
									if L_619_[1]:FindFirstChild("Humanoid") and (L_619_[1]["Humanoid"]["Health"] > 0 and (L_619_[1]["HumanoidRootPart"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1500) then
										repeat
											wait(.3)
											L_1_[14]()
											L_1_[31](L_619_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
										until not L_619_[1]["Parent"] or L_619_[1]["Humanoid"]["Health"] <= 0
									end
								end
							end
						end
					elseif L_607_[2]["Good"] == 2 or L_607_[2]["Good"] == -5 then
						CDK_Q_S_C = 7
						if L_607_[2]["Good"] == 2 then
							L_1_[45]["GetQuest"]("Good")
						elseif L_607_[2]["Good"] == -5 then
							if not Kill_Boss_Cake then
								if L_1_[45]["ffc"](L_1_[40], "Cake Queen") then
									for L_620_forvar0, L_621_forvar1 in pairs(L_1_[40]:GetChildren()) do
										local L_622_ = {}
										L_622_[3], L_622_[2] = L_620_forvar0, L_621_forvar1
										if L_622_[2]["Name"] == "Cake Queen" and (L_622_[2]["Humanoid"]["Health"] > 0 and not Kill_Boss_Cake) then
											repeat
												wait(.3)
												if L_1_[45]["ffc"](L_622_[2], "HumanoidRootPart") then
													L_1_[31](L_622_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
													L_1_[14]()
												else
													break
												end
											until not L_622_[2]["Parent"] or L_622_[2]["Humanoid"]["Health"] <= 0
											Kill_Boss_Cake = true
											wait(1)
										end
									end
								else
									L_1_[31](CFrame["new"](-714.643066, 381.565613, -11021.0566), 1.5)
								end
							else
								if L_1_[19]["Map"]:FindFirstChild("HeavenlyDimension") then
									if not Ceyma_HeavenlyDimension then
										repeat
											wait(.1)
											L_1_[31]((L_1_[19]["Map"]:FindFirstChild("HeavenlyDimension"))["WorldPivot"], 1.5)
										until ((L_1_[19]["Map"]:FindFirstChild("HeavenlyDimension"))["WorldPivot"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 5
										wait(1)
										Ceyma_HeavenlyDimension = true
									elseif Ceyma_HeavenlyDimension then
										L_1_[14]()
										if L_1_[40]:FindFirstChildOfClass("Model") then
											for L_623_forvar0, L_624_forvar1 in pairs(L_1_[40]:GetChildren()) do
												local L_625_ = {}
												L_625_[3], L_625_[2] = L_623_forvar0, L_624_forvar1
												if L_625_[2]:FindFirstChild("HumanoidRootPart") and (L_625_[2]:FindFirstChild("Humanoid") and ((L_1_[19]["Map"]:FindFirstChild("HeavenlyDimension"))["WorldPivot"]["Position"] - L_625_[2]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1000) then
													if L_625_[2]["Humanoid"]["Health"] > 0 then
														repeat
															wait()
															L_1_[31](L_625_[2]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
															L_1_[14]()
														until not L_625_[2]["Parent"] or L_625_[2]["Humanoid"]["Health"] <= 0
													end
												end
											end
										elseif not L_1_[40]:FindFirstChildOfClass("Model") then
											L_1_[45]["GetTorch"]("Torch1")
											if not L_1_[40]:FindFirstChildOfClass("Model") then
												L_1_[45]["GetTorch"]("Torch2")
												if not L_1_[40]:FindFirstChildOfClass("Model") then
													L_1_[45]["GetTorch"]("Torch3")
													if not L_1_[40]:FindFirstChildOfClass("Model") and L_1_[19]["Map"]:FindFirstChild("HeavenlyDimension") then
														L_1_[19]["Map"]["HeavenlyDimension"]["Exit"]["CFrame"] = L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"]
														wait(1)
													end
												end
											end
										end
									end
								elseif not L_1_[19]["Map"]:FindFirstChild("HeavenlyDimension") then
									wait(5)
									if not L_1_[19]["Map"]:FindFirstChild("HeavenlyDimension") then
										Kill_Boss_Cake = false
									end
								end
							end
						end
					elseif L_607_[2]["Evil"] == 2 or L_607_[2]["Evil"] == -5 then
						CDK_Q_S_C = 8
						if L_607_[2]["Evil"] == 2 then
							L_1_[45]["GetQuest"]("Evil")
						elseif L_607_[2]["Evil"] == -5 then
							if L_1_[19]["Map"]:FindFirstChild("HellDimension") then
								if ((L_1_[19]["Map"]:FindFirstChild("HellDimension"))["WorldPivot"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 1200 then
									repeat
										wait(.1)
										L_1_[31]((L_1_[19]["Map"]:FindFirstChild("HellDimension"))["WorldPivot"], 1.5)
									until ((L_1_[19]["Map"]:FindFirstChild("HellDimension"))["WorldPivot"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 10
									wait(1)
								elseif ((L_1_[19]["Map"]:FindFirstChild("HellDimension"))["WorldPivot"]["Position"] - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1200 then
									L_1_[14]()
									if L_1_[40]:FindFirstChildOfClass("Model") then
										for L_626_forvar0, L_627_forvar1 in pairs(L_1_[40]:GetChildren()) do
											local L_628_ = {}
											L_628_[2], L_628_[1] = L_626_forvar0, L_627_forvar1
											if L_628_[1]:FindFirstChild("HumanoidRootPart") and (L_628_[1]:FindFirstChild("Humanoid") and ((L_1_[19]["Map"]:FindFirstChild("HellDimension"))["WorldPivot"]["Position"] - L_628_[1]["HumanoidRootPart"]["Position"])["Magnitude"] <= 1000) then
												if L_628_[1]["Humanoid"]["Health"] > 0 then
													repeat
														wait()
														L_1_[31](L_628_[1]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
														L_1_[14]()
													until not L_628_[1]["Parent"] or L_628_[1]["Humanoid"]["Health"] <= 0
												end
											end
										end
									elseif not L_1_[40]:FindFirstChildOfClass("Model") then
										L_1_[45]["GetTorchX"]("Torch1")
										if not L_1_[40]:FindFirstChildOfClass("Model") then
											L_1_[45]["GetTorchX"]("Torch2")
											if not L_1_[40]:FindFirstChildOfClass("Model") then
												L_1_[45]["GetTorchX"]("Torch3")
												if not L_1_[40]:FindFirstChildOfClass("Model") and L_1_[19]["Map"]:FindFirstChild("HellDimension") then
													L_1_[19]["Map"]["HellDimension"]["Exit"]["CFrame"] = L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"]
													wait(1)
												end
											end
										end
									end
								end
							elseif not L_1_[19]["Map"]:FindFirstChild("HellDimension") then
								if L_1_[40]:FindFirstChild("Soul Reaper") or game["ReplicatedStorage"]:FindFirstChild("Soul Reaper") then
									Stop_Fast_Attack = true
									if not L_1_[40]:FindFirstChild("Soul Reaper") and game["ReplicatedStorage"]:FindFirstChild("Soul Reaper") then
										repeat
											wait(.2)
											L_1_[31]((game["ReplicatedStorage"]:FindFirstChild("Soul Reaper"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
										until L_1_[40]:FindFirstChild("Soul Reaper")
										wait(1)
									end
									if L_1_[40]:FindFirstChild("Soul Reaper") then
										L_1_[31]((L_1_[40]:FindFirstChild("Soul Reaper"))["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 0, 2), 1.5)
										wait(1)
									end
								elseif L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") > 0 and L_1_[45]["CheckItem"]("Bones") > 500 then
									repeat
										wait(.2)
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check")
										L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Buy", 1, 1)
									until L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Bones", "Check") == 0
									wait(1)
									if not Dragon_Talon_C then
										if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Fire Essence") or L_1_[45]["ffc"](L_1_[35]["Character"], "Fire Essence") then
											repeat
												L_1_[45]["Status"](L_1_[3]({
													" Status : Use Fire E",
													"ssence"
												}))
												L_1_[45]["Equip"]("Fire Essence")
												L_1_[45]["wt"](.5)
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon", true)
												L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
											until not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Fire Essence") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Fire Essence")
											L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyDragonTalon")
											Dragon_Talon_C = true
										end
									end
									if L_1_[45]["ffc"](L_1_[35]["Backpack"], "Hallow Essence") or L_1_[45]["ffc"](L_1_[35]["Character"], "Hallow Essence") then
										repeat
											L_1_[45]["Status"](L_1_[3]({
												" Status : Use Hallow";
												" Essence"
											}))
											L_1_[45]["Equip"]("Hallow Essence")
											L_1_[31](CFrame["new"](-8932.86, 143.258, 6063.31), 1.5)
										until not L_1_[45]["ffc"](L_1_[35]["Backpack"], "Hallow Essence") and not L_1_[45]["ffc"](L_1_[35]["Character"], "Hallow Essence")
									end
								elseif not L_1_[40]:FindFirstChild("Soul Reaper") and not L_1_[7]:FindFirstChild("Soul Reaper") then
									L_1_[45]["FarmBone"]()
								end
							end
						end
					elseif L_607_[2]["Evil"] == 3 then
						repeat
							wait()
							L_1_[31](CFrame["new"](-12392.2637, 603.319763, -6503.27832), 1.5)
						until (Vector3["new"](-12392.2637, 603.319763, -6503.27832) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 2
						if L_1_[4]:FindFirstChild("     ") then
							L_1_[4]["     "]["Enabled"] = false
						end
						wait(1)
						L_1_[2]:SendKeyEvent(true, "E", false, game)
						wait(1)
						L_1_[2]:SendKeyEvent(false, "E", false, game)
						wait(1)
						L_1_[45]["click"](L_1_[35]["PlayerGui"]["Main"]["Dialogue"])
					elseif L_607_[2]["Good"] == 3 then
						repeat
							wait()
							L_1_[31](CFrame["new"](-12392.5068, 603.319763, -6596.00586), 1.5)
						until (Vector3["new"](-12392.5068, 603.319763, -6596.00586) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 2
						if L_1_[4]:FindFirstChild("     ") then
							L_1_[4]["     "]["Enabled"] = false
						end
						wait(1)
						L_1_[2]:SendKeyEvent(true, "E", false, game)
						wait(1)
						L_1_[2]:SendKeyEvent(false, "E", false, game)
						wait(1)
						L_1_[45]["click"](L_1_[35]["PlayerGui"]["Main"]["Dialogue"])
					elseif L_607_[2]["Good"] == 4 and (L_607_[2]["Evil"] == 4 and L_1_[19]["Map"]["Turtle"]["Cursed"]["BossDoor"]["Position"]["Y"] > 584) then
						L_1_[14]()
						repeat
							wait(.1)
							L_1_[31](CFrame["new"](-12359.1719, 603.319702, -6550.59717, .481593847, 0, -0.87639451, 0, 1, 0, .87639451, 0, .481593847), 1.5)
						until (Vector3["new"](-12359.1719, 603.319702, -6550.59717) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
						if L_1_[4]:FindFirstChild("     ") then
							L_1_[4]["     "]["Enabled"] = false
						end
						wait(1)
						L_1_[2]:SendKeyEvent(true, "E", false, game)
						wait(1)
						L_1_[2]:SendKeyEvent(false, "E", false, game)
						wait(1)
						L_1_[45]["click"](L_1_[35]["PlayerGui"]["Main"]["Dialogue"])
					elseif L_1_[19]["Map"]["Turtle"]["Cursed"]["BossDoor"]["Position"]["Y"] <= 584 then
						local L_629_ = {}
						if L_1_[4]:FindFirstChild("     ") then
							L_1_[4]["     "]["Enabled"] = true
						end
						L_629_[1] = L_1_[7]["Remotes"]["CommF_"]:InvokeServer("getInventory")
						for L_630_forvar0, L_631_forvar1 in pairs(L_629_[1]) do
							local L_632_ = {}
							L_632_[1], L_632_[3] = L_630_forvar0, L_631_forvar1
							if L_632_[3]["Type"] == "Sword" then
								if L_632_[3]["Name"] == "Cursed Dual Katana" then
									return
								end
							end
						end
						CDK_Q_S_C = 10
						if (Vector3["new"](-12297.5605, 598.726013, -6532.96436) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 100 then
							repeat
								wait()
								L_1_[31](CFrame["new"](-12379.1406, 601.433167, -6543.60742), 1.5)
							until Boss_Extant or (Vector3["new"](-12379.1406, 601.433167, -6543.60742) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
							repeat
								wait()
								L_1_[31](CFrame["new"](-12330.197265625, 603.31982421875, -6549.1186523438), 1.5)
								for L_633_forvar0, L_634_forvar1 in pairs(L_1_[40]:GetChildren()) do
									local L_635_ = {}
									L_635_[2], L_635_[3] = L_633_forvar0, L_634_forvar1
									if L_635_[3]["Name"] == "Cursed Skeleton Boss" then
										Boss_Extant = true
										L_1_[35]["Character"]["HumanoidRootPart"]["CFrame"] = L_635_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0)
									end
								end
							until Boss_Extant or (Vector3["new"](-12330.197265625, 603.31982421875, -6549.1186523438) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] <= 3
							wait(1)
							for L_636_forvar0, L_637_forvar1 in pairs(L_1_[40]:GetChildren()) do
								local L_638_ = {}
								L_638_[2], L_638_[3] = L_636_forvar0, L_637_forvar1
								if L_638_[3]["Name"] == "Cursed Skeleton Boss" then
									repeat
										wait(.1)
										L_1_[45]["Get_Item_Inventory"]("Tushita")
										L_1_[45]["Equip"]("Tushita")
										L_1_[31](L_638_[3]["HumanoidRootPart"]["CFrame"] * CFrame["new"](0, 30, 0), 1.5)
									until not L_638_[3]["Parent"] or L_638_[3]["Humanoid"]["Health"] <= 0
									for L_639_forvar0, L_640_forvar1 in pairs(L_629_[1]) do
										local L_641_ = {}
										L_641_[2], L_641_[1] = L_639_forvar0, L_640_forvar1
										if L_641_[1]["Type"] == "Sword" then
											if L_641_[1]["Name"] == "Cursed Dual Katana" then
												return
											end
										end
									end
								end
							end
						elseif (Vector3["new"](-12297.5605, 598.726013, -6532.96436) - L_1_[35]["Character"]["HumanoidRootPart"]["Position"])["Magnitude"] > 100 then
							L_1_[31](CFrame["new"](-12297.5605, 598.726013, -6532.96436), 1.5)
						end
					end
				else
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("CDKQuest", "OpenDoor", true)
				end
			end
		end, warn)
	end
end)
task["spawn"](function()
	while L_1_[45]["wt"]() do
		xpcall(function()
			for L_642_forvar0, L_643_forvar1 in pairs(L_1_[40]:GetChildren()) do
				local L_644_ = {}
				L_644_[2], L_644_[1] = L_642_forvar0, L_643_forvar1
				if L_1_[45]["ffc"](L_644_[1], "Humanoid") and (L_644_[1]["Humanoid"]["Health"] <= 0 and L_1_[45]["ffc"](L_644_[1], "HumanoidRootPart")) then
					if L_644_[1]["Humanoid"]["Health"] <= 0 then
						L_644_[1]:Destroy()
					end
				end
			end
			if L_1_[45]["ffc"](L_1_[35]["Character"], "Black Leg") then
				L_1_[2]:SendKeyEvent(true, "V", false, game)
				L_1_[45]["wt"](.1)
				L_1_[2]:SendKeyEvent(false, "V", false, game)
			end
			if L_1_[45]["ffc"](L_1_[35]["Character"], "HumanoidRootPart") and not L_1_[45]["ffc"](L_1_[35]["Character"]["HumanoidRootPart"], "Lock") then
				local L_645_ = {}
				L_645_[1] = L_1_[35]["Character"]:FindFirstChild("Humanoid")
				if L_645_[1] and L_645_[1]["Sit"] then
					L_645_[1]["Sit"] = false
				end
				L_645_[2] = Instance["new"]("BodyVelocity")
				L_645_[2]["Name"] = "Lock"
				L_645_[2]["MaxForce"] = Vector3["new"](1000000000, 1000000000, 1000000000)
				L_645_[2]["Velocity"] = Vector3["new"](0, 0, 0)
				L_645_[2]["P"] = 10000
				L_645_[2]["Parent"] = L_1_[35]["Character"]["HumanoidRootPart"]
			end
		end, warn)
	end
end)
task["spawn"](function()
	while L_1_[45]["wt"](1) do
		pcall(function()
			if not L_1_[45]["ffc"](L_1_[35]["Character"], "Highlight") then
				local L_646_ = {}
				L_646_[1] = Instance["new"]("Highlight")
				L_646_[1]["Name"] = "Highlight"
				L_646_[1]["FillColor"] = Color3["fromRGB"](0, 0, 0)
				L_646_[1]["OutlineColor"] = Color3["fromRGB"](255, 255, 255)
				L_646_[1]["FillTransparency"] = 0.5
				L_646_[1]["OutlineTransparency"] = 0.2
				L_646_[1]["Adornee"] = L_1_[35]["Character"]
				L_646_[1]["Parent"] = L_1_[35]["Character"]
			end
		end)
	end
end)
redeem = {
	"Sub2Fer999",
	"Enyu_is_Pro",
	"JCWK",
	"StarcodeHEO",
	"MagicBUS";
	"KittGaming",
	"Sub2CaptainMaui",
	"Sub2OfficialNoobie",
	"TheGreatAce";
	"Sub2NoobMaster123";
	"Sub2Daigrock";
	"Axiore";
	"StrawHatMaine";
	"TantaiGaming",
	"Bluxxy";
	"SUB2GAMERROBOT_EXP1";
	"GAMER_ROBOT_1M";
	"SUBGAMERROBOT_RESET";
	"RESET_5B";
	L_1_[3]({
		"SUB2GAMERROBOT_RESET";
		"1"
	}),
	"Sub2UncleKizaru",
	"ADMIN_TROLL ";
	"DRAGONABUSE ";
	"DEVSCOOKING "
}
task["spawn"](function()
	for L_647_forvar0, L_648_forvar1 in pairs(redeem) do
		local L_649_ = {}
		L_649_[2], L_649_[1] = L_647_forvar0, L_648_forvar1
		L_1_[46]["Remotes"]["Redeem"]:InvokeServer(L_649_[1])
	end
end)
task["spawn"](function()
	while L_1_[45]["wt"](150) do
		L_1_[2]:SendKeyEvent(true, "Space", false, game)
		wait(.5)
		L_1_[2]:SendKeyEvent(false, "Space", false, game)
	end
end)
L_1_[9] = game:GetService("Players")
L_1_[37] = L_1_[9]["LocalPlayer"]
L_1_[44] = function()
	while not L_1_[37]["Character"] or not L_1_[37]["Character"]:FindFirstChild("HumanoidRootPart") do
		task["wait"](.5)
	end
	return L_1_[37]["Character"]:WaitForChild("HumanoidRootPart")
end
L_1_[18] = (L_1_[44]())["Position"]
L_1_[28] = 0
L_1_[36] = 1
task["spawn"](function()
	while task["wait"]() do
		if Quest ~= "Cursed Dual Katana" and (Quest ~= "Evo Race V2" and (Quest ~= "Evo Race V1" and not SROP)) then
			local L_650_ = {}
			task["wait"](L_1_[36])
			L_650_[2] = (L_1_[44]())["Position"]
			L_650_[1] = (L_650_[2] - L_1_[18])["Magnitude"]
			if L_650_[1] <= 1 then
				L_1_[28] = L_1_[28] + L_1_[36]
				if L_1_[28] >= 30 and (Quest ~= "Cursed Dual Katana" and (Quest ~= "Evo Race V2" and (Quest ~= "Evo Race V1" and not SROP))) then
					L_1_[45]["HopLowServer"](9)
				end
			else
				L_1_[28] = 0
				L_1_[18] = L_650_[2]
			end
		end
	end
end)
task["spawn"](function()
	while task["wait"]() do
		if L_1_[25]["Map"]:FindFirstChild("Heavenly") then
			fireproximityprompt(L_1_[25]["Map"]["HeavenlyDimension"]["Torch1"]["ProximityPrompt"])
			fireproximityprompt(L_1_[25]["Map"]["HeavenlyDimension"]["Torch2"]["ProximityPrompt"])
			fireproximityprompt(L_1_[25]["Map"]["HeavenlyDimension"]["Torch3"]["ProximityPrompt"])
		end
		if L_1_[25]["Map"]:FindFirstChild("HellDimension") then
			fireproximityprompt(L_1_[25]["Map"]["HellDimension"]["Torch1"]["ProximityPrompt"])
			fireproximityprompt(L_1_[25]["Map"]["HellDimension"]["Torch2"]["ProximityPrompt"])
			fireproximityprompt(L_1_[25]["Map"]["HellDimension"]["Torch3"]["ProximityPrompt"])
		end
	end
end)
L_1_[37]["PlayerGui"]["Notifications"]["Enabled"] = false
task["spawn"](function()
	while task["wait"]() do
		pcall(function()
			if not(game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]:FindFirstChild("Lock") then
				local L_651_ = {}
				if (game["Players"]["LocalPlayer"]["Character"]:WaitForChild("Humanoid"))["Sit"] == true then
					(game["Players"]["LocalPlayer"]["Character"]:WaitForChild("Humanoid"))["Sit"] = false
				end
				L_651_[2] = Instance["new"]("BodyVelocity")
				L_651_[2]["Name"] = "Lock"
				L_651_[2]["Parent"] = (game:GetService("Players"))["LocalPlayer"]["Character"]["HumanoidRootPart"]
				L_651_[2]["MaxForce"] = Vector3["new"](9000000000, 9000000000, 9000000000)
				L_651_[2]["Velocity"] = Vector3["new"](0, 0, 0)
			end
		end)
	end
end)
L_1_[45]["wt"](5)
_G["Ew"] = false
Ewx = false
task["spawn"](function()
	while L_1_[45]["wt"]() do
		pcall(function()
			if L_1_[1]["Value"] >= 2500000 and New_World then
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "1")
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "2")
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("LegendarySwordDealer", "3")
			end
			if L_1_[45]["tf"](Configs["Gun"], "Kabucha") and (L_1_[17]["Value"] >= 10000 and not L_1_[45]["gi"]("Kabucha")) then
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BlackbeardReward", "Slingshot", "2")
			end
			if L_1_[1]["Value"] >= 3000000 then
				if L_1_[45]["tf"](Configs["Sword"], "Bisento") and not L_1_[45]["gi"]("Bisento") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Bisento")
				end
				if L_1_[45]["tf"](Configs["Sword"], "Cutlass") and not L_1_[45]["gi"]("Cutlass") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Cutlass")
				end
				if L_1_[45]["tf"](Configs["Sword"], "Katana") and not L_1_[45]["gi"]("Katana") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Katana")
				end
				if L_1_[45]["tf"](Configs["Sword"], "Dual Katana") and not L_1_[45]["gi"]("Dual Katana") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Dual Katana")
				end
				if L_1_[45]["tf"](Configs["Sword"], "Soul Cane") and not L_1_[45]["gi"]("Soul Cane") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Soul Cane")
				end
				if L_1_[45]["tf"](Configs["Sword"], "Triple Katana") and not L_1_[45]["gi"]("Triple Katana") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Triple Katana")
				end
				if L_1_[45]["tf"](Configs["Sword"], "Iron Mace") and not L_1_[45]["gi"]("Iron Mace") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Iron Mace")
				end
				if L_1_[45]["tf"](Configs["Sword"], "Pipe") and not L_1_[45]["gi"]("Pipe") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Pipe")
				end
				if L_1_[45]["tf"](Configs["Sword"], "Dual-Headed Blade") and not L_1_[45]["gi"]("Dual-Headed Blade") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Dual-Headed Blade")
				end
				if L_1_[45]["tf"](Configs["Gun"], "Musket") and not L_1_[45]["gi"]("Musket") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Musket")
				end
				if L_1_[45]["tf"](Configs["Gun"], "Flintlock") and not L_1_[45]["gi"]("Flintlock") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Flintlock")
				end
				if L_1_[45]["tf"](Configs["Gun"], "Refined Slingshot") and not L_1_[45]["gi"]("Refined Slingshot") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Refined Slingshot")
				end
				if L_1_[45]["tf"](Configs["Gun"], "Dual Flintlock") and not L_1_[45]["gi"]("Dual Flintlock") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Dual Flintlock")
				end
				if L_1_[45]["tf"](Configs["Gun"], "Cannon") and not L_1_[45]["gi"]("Cannon") then
					L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyItem", "Cannon")
				end
			end
			if L_1_[45]["tf"](Configs["Sword"], "Midnight Blade") and (L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Ectoplasm", "Check") >= 100 and not L_1_[45]["gi"]("Midnight Blade")) then
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("Ectoplasm", "Buy", 3)
			end
			if not klmdlkgf and L_1_[24]["Value"] >= 2000 then
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyHaki", "Geppo")
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyHaki", "Soru")
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("KenTalk", "Buy")
				klmdlkgf = true
			end
			if not klmdlkgfx and L_1_[24]["Value"] >= 1000 then
				L_1_[7]["Remotes"]["CommF_"]:InvokeServer("BuyHaki", "Buso")
				klmdlkgfx = true
			end
			L_1_[45]["wt"](100)
		end)
	end
end)

-- ===== SERVER HOP MỚI =====
do
    local HttpService = game:GetService("HttpService")
    local PlaceId = game.PlaceId
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local visited = {}
    local FILE_NAME = "serverhop_cache.json"

    if isfile and isfile(FILE_NAME) then
        pcall(function()
            visited = HttpService:JSONDecode(readfile(FILE_NAME))
            if type(visited) ~= "table" then visited = {} end
        end)
    end

    local function saveCache()
        if writefile then
            writefile(FILE_NAME, HttpService:JSONEncode(visited))
        end
    end

    local function getServers(cursor)
        local url = "https://games.roblox.com/v1/games/"..PlaceId.."/servers/Public?sortOrder=Asc&limit=100"
        if cursor then url = url.."&cursor="..cursor end
        local suc, res = pcall(game.HttpGet, game, url)
        if not suc then return nil end
        return HttpService:JSONDecode(res)
    end

    local function ServerHop(minPlayers)
        minPlayers = minPlayers or 10
        local cursor
        for _ = 1, 5 do
            local data = getServers(cursor)
            if not data or not data.data then break end
            table.sort(data.data, function(a,b) return (a.playing or 0) < (b.playing or 0) end)
            for _, server in ipairs(data.data) do
                local slots = (server.maxPlayers or 0) - (server.playing or 0)
                if slots >= minPlayers and server.id ~= game.JobId and not visited[server.id] then
                    visited[server.id] = true
                    saveCache()
                    pcall(function()
                        ReplicatedStorage.__ServerBrowser:InvokeServer("teleport", server.id)
                    end)
                    task.wait(8)
                    if game.JobId ~= server.id then
                        return true
                    end
                end
            end
            cursor = data.nextPageCursor
            if not cursor then break end
        end
        return false
    end

    L_1_[45]["HopLowServer"] = function(minPlayers)
        return ServerHop(minPlayers or 10)
    end
end