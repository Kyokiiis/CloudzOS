repeat task.wait() until game:IsLoaded() == true

KaijuParadise = {6456351776, 8318588114}

function olduidestroy()
	local removedinstances = 0
	if game.Lighting:FindFirstChild("DomainBlur") then
		game.Lighting:FindFirstChild("DomainBlur"):Destroy()
	end
	if game:GetService("RunService"):IsStudio() then
		if LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):FindFirstChild("Domain") then
			LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):FindFirstChild("Domain"):Destroy()
		end
	else
		for _, ui in ipairs(game:GetService("CoreGui"):GetChildren()) do
			if ui.Name == "Domain" and ui ~= Domain then
				ui.Enabled = false
				ui.Name = "DomainOld"
				removedinstances = removedinstances + 1
                game:GetService("CoreGui").DomainOld:Destroy()
			end
		end
		if gethui then
			for _, ui in ipairs(gethui():GetChildren()) do
				if ui.Name == "Domain" and ui ~= Domain then
					ui.Enabled = false
					ui.Name = "DomainOld"
					removedinstances = removedinstances + 1
                    game:GetService("CoreGui").DomainOld:Destroy()
				end
			end
		end
	end
end

olduidestroy()

-- if game is QS Energy Research Facility
if(game.PlaceId == 3039795291) then
local intro = game:GetService("Players").Melvoledi.PlayerGui:FindFirstChild("Intro")
print("Waiting for Intro Screen to go away to load in CloudzOS")
repeat
wait(0.1)
intro = game:GetService("Players").Melvoledi.PlayerGui:FindFirstChild("Intro")
until intro == nil
wait(3)
else
end

if DebugMode then
	warn("DomainX - Starting")
end
local UserHWID = nil
ExecutorAutomatic = false
if not game:IsLoaded() then
	wait(0.5)
	if game:IsLoaded() then
		if DebugMode then
			warn("DomainX - AutoExec Detection false")
		end
		return
	else
		ExecutorAutomatic = true
		if DebugMode then
			warn("DomainX - AutoExec Detection true")
		end
	end
end
if DebugMode then
	warn("DomainX - Game Loaded")
end
local KeySys = game:GetObjects("rbxassetid://8065404628")[1]

if DebugMode then
	warn("DomainX - Loaded KeyUI")
end

if not gethui then
	if syn and syn.protect_gui then
		syn.protect_gui(KeySys)
		protected = true
	end

	if protect_gui then
		protect_gui(KeySys)
		protected = true
	end
	parent = game:GetService("CoreGui")
else 
	parent = game:GetService("CoreGui")
end
KeySys.Parent = parent
KeySys.Main.ElseDesc2.Text = "Alternatively you can buy Pro at https://discord.gg/sirius"
KeySys.Enabled = false
KeySys.Main.Visible = true

for _, ui in ipairs(game:GetService("CoreGui"):GetChildren()) do
	if ui.Name == "KeySystem" and ui ~= KeySys then
		ui.Enabled = false
		ui.Name = "KeySystemUnused"
	end
end

if DebugMode then
	warn("DomainX - Protected KeyUI")
end

local http_request = http_request;
local c = identifyexecutor()
if syn then
	http_request = syn.request
elseif c == "ScriptWare" then
	http_request = http.request
end

if http_request == nil then
	return
end

-- DMNX

local GuiService = game:GetService("GuiService")
local Domain = game:GetObjects("rbxassetid://11894733392")[1]

Domain.Main.Time.Seconds.BackgroundTransparency = 1
Domain.Scripts.Main.Buttons.SiriusGameDetection.Title.Text = "DMRInt"
Domain.Settings.Buttons.Sirius.Text = "DMRInt"

if DebugMode then
	warn("DomainX - Loaded Main UI")
end

local protected = false

if not gethui then
	if syn and syn.protect_gui then
		syn.protect_gui(Domain)
		protected = true
	end

	if protect_gui then
		protect_gui(Domain)
		protected = true
	end
	parent = game:GetService("CoreGui")
else
	parent = game:GetService("CoreGui")
end

if DebugMode then
	warn("DomainX - Protected Main UI")
end

-- BOOKMARK

Domain.Parent = parent
Domain.Main.Visible = true
Domain.Main.Position = UDim2.new(0.5, 0, 1.20, 0)
Domain.Main.KeybindNote.Position = UDim2.new(0.5,0,-1.303,0)
Domain.Main.KeybindNote.Text = "Starting CloudzOS"
Domain.Main.KeybindNote.Visible = true
Domain.Main.KeybindNote.TextTransparency = 0.4
wait(0.2)

local DefaultKeybind = "K"
local DiscordLink = "https://discord.gg/HjvQugvWVJ"
local DiscordLink2 = "HjvQugvWVJ"
local NotificationDuration = 6.5
local DomainEnabled = true
local Price = "$7.99"
local CustomFolderName = "DomainX Custom Scripts"
local KeyWaitTime = 60

local MlemixMode = false

local Release = 4.25
local KeySystemEnabled = false
local ReleaseType = "CLDZ"
local Public = false
local Beta = false

local NewPremiumSystem = true
local Connected = true
local homedb = false
local db = false
local Keybind = DefaultKeybind
if writefile and isfile and readfile and delfile then
	if isfile("DomainX Keybind.txt") then
		if readfile("DomainX Keybind.txt") then
			if readfile("DomainX Keybind.txt") then
				Keybind = readfile("DomainX Keybind.txt")
			else
				delfile("DomainX Keybind.txt")
			end
		end
	else
		-- No file, default it 
		Keybind = DefaultKeybind
	end
else
	Keybind = DefaultKeybind
end
local UpdateAvailable = false
local PlayersService = game:GetService("Players")
local PlayerFlySpeed = 1
local PremiumToastRequired = false
local ServerhopCancelled = false
local serverhopdb = false
local timesince = 0
local CustomScriptEnabled = false
local firsttime = false
local DMNReady = false
local CurrentListPosition = 1
local homeopen = false
local inventorywasopen = false
local SnowHubSupported = false
local plrconopen = false
local CustomScripts = {}
local DomainXLoaded = false
local playerservice = game:GetService("Players")
local plrlistopen = false
local baropen = false
local ContentProvider = game:GetService("ContentProvider")
local loadedmainassets = false
local scriptsopen = false
local jcopen = false
local TweenService = game:GetService("TweenService")
local NotificationStack = {}
local CurrentMusicInfo = nil
local MusicPlaying = false
local UserInputService = game:GetService("UserInputService")
local ToastStack = {}
local UserIsPremium = true
local UserIsPro = true
local RotatingBar = false

local CachedUI = {}
local cachedcoreguis = {}
local NotificationsEnabled = true
local coreguis = {"PlayerList","Chat","EmotesMenu","Health","Backpack"}
local LocalPlayer = game:GetService("Players").LocalPlayer

-- 
local NotificationDuration = 6.5
local DomainLibrary = {
	Flags = {},
	Theme = {
		Default = {
			TextFont = "Default", -- Default will use the various font faces used across Domain
			TextColor = Color3.fromRGB(240, 240, 240),
			
			Background = Color3.fromRGB(25, 25, 25),
			Topbar = Color3.fromRGB(34, 34, 34),
			Shadow = Color3.fromRGB(20, 20, 20),
			
			NotificationBackground = Color3.fromRGB(20, 20, 20),
			NotificationActionsBackground = Color3.fromRGB(230, 230, 230),

		},
		Light = {
			TextFont = "Gotham", -- Default will use the various font faces used across Domain
			TextColor = Color3.fromRGB(50, 50, 50), -- i need to make all text 240, 240, 240 and base gray on transparency not color to do this
			
			Background = Color3.fromRGB(255, 255, 255),
			Topbar = Color3.fromRGB(217, 217, 217),
			Shadow = Color3.fromRGB(223, 223, 223),

			NotificationBackground = Color3.fromRGB(20, 20, 20),
			NotificationActionsBackground = Color3.fromRGB(230, 230, 230),
		}
	}
}
-- Services
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

local Camera = workspace.CurrentCamera
local Notifications = Domain.Notifications
local Selected = DomainLibrary.Theme.Default
--

local neon = (function() -- Open sourced neon module
	local module = {}

	do
		local function IsNotNaN(x)
			return x == x
		end
		local continued = IsNotNaN(Camera:ScreenPointToRay(0,0).Origin.x)
		while not continued do
			RunService.RenderStepped:wait()
			continued = IsNotNaN(Camera:ScreenPointToRay(0,0).Origin.x)
		end
	end
	local RootParent = Camera
	if getgenv().SecureMode == nil then
		RootParent = Camera
	else
		if not getgenv().SecureMode then
			RootParent = Camera
		else 
			RootParent = nil
		end
	end


	local binds = {}
	local root = Instance.new('Folder', RootParent)
	root.Name = 'neon'


	local GenUid; do
		local id = 0
		function GenUid()
			id = id + 1
			return 'neon::'..tostring(id)
		end
	end

	local DrawQuad; do
		local acos, max, pi, sqrt = math.acos, math.max, math.pi, math.sqrt
		local sz = 0.2

		function DrawTriangle(v1, v2, v3, p0, p1)
			local s1 = (v1 - v2).magnitude
			local s2 = (v2 - v3).magnitude
			local s3 = (v3 - v1).magnitude
			local smax = max(s1, s2, s3)
			local A, B, C
			if s1 == smax then
				A, B, C = v1, v2, v3
			elseif s2 == smax then
				A, B, C = v2, v3, v1
			elseif s3 == smax then
				A, B, C = v3, v1, v2
			end

			local para = ( (B-A).x*(C-A).x + (B-A).y*(C-A).y + (B-A).z*(C-A).z ) / (A-B).magnitude
			local perp = sqrt((C-A).magnitude^2 - para*para)
			local dif_para = (A - B).magnitude - para

			local st = CFrame.new(B, A)
			local za = CFrame.Angles(pi/2,0,0)

			local cf0 = st

			local Top_Look = (cf0 * za).lookVector
			local Mid_Point = A + CFrame.new(A, B).LookVector * para
			local Needed_Look = CFrame.new(Mid_Point, C).LookVector
			local dot = Top_Look.x*Needed_Look.x + Top_Look.y*Needed_Look.y + Top_Look.z*Needed_Look.z

			local ac = CFrame.Angles(0, 0, acos(dot))

			cf0 = cf0 * ac
			if ((cf0 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf0 = cf0 * CFrame.Angles(0, 0, -2*acos(dot))
			end
			cf0 = cf0 * CFrame.new(0, perp/2, -(dif_para + para/2))

			local cf1 = st * ac * CFrame.Angles(0, pi, 0)
			if ((cf1 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf1 = cf1 * CFrame.Angles(0, 0, 2*acos(dot))
			end
			cf1 = cf1 * CFrame.new(0, perp/2, dif_para/2)

			if not p0 then
				p0 = Instance.new('Part')
				p0.FormFactor = 'Custom'
				p0.TopSurface = 0
				p0.BottomSurface = 0
				p0.Anchored = true
				p0.CanCollide = false
				p0.Material = 'Glass'
				p0.Size = Vector3.new(sz, sz, sz)
				local mesh = Instance.new('SpecialMesh', p0)
				mesh.MeshType = 2
				mesh.Name = 'WedgeMesh'
			end
			p0.WedgeMesh.Scale = Vector3.new(0, perp/sz, para/sz)
			p0.CFrame = cf0

			if not p1 then
				p1 = p0:clone()
			end
			p1.WedgeMesh.Scale = Vector3.new(0, perp/sz, dif_para/sz)
			p1.CFrame = cf1

			return p0, p1
		end

		function DrawQuad(v1, v2, v3, v4, parts)
			parts[1], parts[2] = DrawTriangle(v1, v2, v3, parts[1], parts[2])
			parts[3], parts[4] = DrawTriangle(v3, v2, v4, parts[3], parts[4])
		end
	end

	function module:BindFrame(frame, properties)
		if RootParent == nil then return end
		if binds[frame] then
			return binds[frame].parts
		end

		local uid = GenUid()
		local parts = {}
		local f = Instance.new('Folder', root)
		f.Name = frame.Name

		local parents = {}
		do
			local function add(child)
				if child:IsA'GuiObject' then
					parents[#parents + 1] = child
					add(child.Parent)
				end
			end
			add(frame)
		end

		local function UpdateOrientation(fetchProps)
			local zIndex = 1 - 0.05*frame.ZIndex
			local tl, br = frame.AbsolutePosition, frame.AbsolutePosition + frame.AbsoluteSize
			local tr, bl = Vector2.new(br.x, tl.y), Vector2.new(tl.x, br.y)
			do
				local rot = 0;
				for _, v in ipairs(parents) do
					rot = rot + v.Rotation
				end
				if rot ~= 0 and rot%180 ~= 0 then
					local mid = tl:lerp(br, 0.5)
					local s, c = math.sin(math.rad(rot)), math.cos(math.rad(rot))
					local vec = tl
					tl = Vector2.new(c*(tl.x - mid.x) - s*(tl.y - mid.y), s*(tl.x - mid.x) + c*(tl.y - mid.y)) + mid
					tr = Vector2.new(c*(tr.x - mid.x) - s*(tr.y - mid.y), s*(tr.x - mid.x) + c*(tr.y - mid.y)) + mid
					bl = Vector2.new(c*(bl.x - mid.x) - s*(bl.y - mid.y), s*(bl.x - mid.x) + c*(bl.y - mid.y)) + mid
					br = Vector2.new(c*(br.x - mid.x) - s*(br.y - mid.y), s*(br.x - mid.x) + c*(br.y - mid.y)) + mid
				end
			end
			DrawQuad(
				Camera:ScreenPointToRay(tl.x, tl.y, zIndex).Origin, 
				Camera:ScreenPointToRay(tr.x, tr.y, zIndex).Origin, 
				Camera:ScreenPointToRay(bl.x, bl.y, zIndex).Origin, 
				Camera:ScreenPointToRay(br.x, br.y, zIndex).Origin, 
				parts
			)
			if fetchProps then
				for _, pt in pairs(parts) do
					pt.Parent = f
				end
				for propName, propValue in pairs(properties) do
					for _, pt in pairs(parts) do
						pt[propName] = propValue
					end
				end
			end
		end

		UpdateOrientation(true)
		RunService:BindToRenderStep(uid, 2000, UpdateOrientation)

		binds[frame] = {
			uid = uid;
			parts = parts;
		}
		return binds[frame].parts
	end

	function module:Modify(frame, properties)
		local parts = module:GetBoundParts(frame)
		if parts then
			for propName, propValue in pairs(properties) do
				for _, pt in pairs(parts) do
					pt[propName] = propValue
				end
			end
		end
	end

	function module:UnbindFrame(frame)
		if RootParent == nil then return end
		local cb = binds[frame]
		if cb then
			RunService:UnbindFromRenderStep(cb.uid)
			for _, v in pairs(cb.parts) do
				v:Destroy()
			end
			binds[frame] = nil
		end
	end

	function module:HasBinding(frame)
		return binds[frame] ~= nil
	end

	function module:GetBoundParts(frame)
		return binds[frame] and binds[frame].parts
	end


	return module

end)()

-- DomainLibrary:Notify({
		--Title = "CloudzOS {GMN}",
		--Content = "Hold on! Refreshing Your Character",
		--Duration = 6.5,
		--Image = 4335476290,
	 --}) 

local NotifSettings = nil

function DomainLibrary:Notify(NotificationSettings)
	spawn(function()
		local ActionCompleted = true
		local Notification = Notifications.Template:Clone()
		Notification.Parent = Notifications
		Notification.Name = NotificationSettings.Title or "Unknown Title"
		Notification.Visible = true

		NotifSettings = NotificationSettings.Location

		if NotificationSettings.Location == nil then
			Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			if homeopen == true then
				Notifications.Position = UDim2.new(1, -25, 0.6, -25)
				elseif homeopen == false then
				Notifications.Position = UDim2.new(1, -25, 0.55, -25)
			end
		elseif NotificationSettings.Location == "Bottom" then
			Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			if homeopen == true then
				Notifications.Position = UDim2.new(1, -25, 0.8, -25)
				elseif homeopen == false then
				Notifications.Position = UDim2.new(1, -25, 1, -25)
			end
		elseif NotificationSettings.Location == "Top" then
			Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			if homeopen == true then
				Notifications.Position = UDim2.new(1, -25, 0.6, -25)
				elseif homeopen == false then
				Notifications.Position = UDim2.new(1, -25, 0.55, -25)
			end
		end

		local blurlight1 = nil
		if not getgenv().SecureMode then
			blurlight1 = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
			blurlight1.Enabled = true
			blurlight1.FarIntensity = 0
			blurlight1.FocusDistance = 51.6
			blurlight1.InFocusRadius = 50
			blurlight1.NearIntensity = 1
			game:GetService("Debris"):AddItem(script,0)
		end
		
		Notification.Actions.Template.Visible = false

		if NotificationSettings.Actions then
			for _, Action in pairs(NotificationSettings.Actions) do
				ActionCompleted = false
				local NewAction = Notification.Actions.Template:Clone()
				NewAction.BackgroundColor3 = Selected.NotificationActionsBackground
				if Selected ~= DomainLibrary.Theme.Default then
					NewAction.TextColor3 = Selected.TextColor
				end
				NewAction.Name = Action.Name
				NewAction.Visible = true
				NewAction.Parent = Notification.Actions
				NewAction.Text = Action.Name
				NewAction.BackgroundTransparency = 1
				NewAction.TextTransparency = 1
				NewAction.Size = UDim2.new(0, NewAction.TextBounds.X + 27, 0, 36)
				
				NewAction.MouseButton1Click:Connect(function()
					local Success, Response = pcall(Action.Callback)
					if not Success then
						print("Domain | Action: "..Action.Name.." Callback Error " ..tostring(Response))
					end
					ActionCompleted = true
				end)
			end
		end
		Notification.BackgroundColor3 = Selected.Background
		Notification.Title.Text = NotificationSettings.Title or "Unknown"
		Notification.Title.TextTransparency = 1
		Notification.Title.TextColor3 = Selected.TextColor
		Notification.Description.Text = NotificationSettings.Content or "Unknown"
		Notification.Description.TextTransparency = 1
		Notification.Description.TextColor3 = Selected.TextColor
		Notification.Icon.ImageColor3 = Selected.TextColor
		if NotificationSettings.Image then
			Notification.Icon.Image = "rbxassetid://"..tostring(NotificationSettings.Image) 
		else
			Notification.Icon.Image = "rbxassetid://3944680095"
		end

		Notification.Icon.ImageTransparency = 1

		Notification.Parent = Notifications
		Notification.Size = UDim2.new(0, 260, 0, 80)
		Notification.BackgroundTransparency = 1
		
		local sound = Instance.new("Sound")
		sound.Parent = Domain
		sound.SoundId = "rbxassetid://"..255881176
		sound.Name = "notify"
		sound.Volume = 2
		sound.PlayOnRemove = true
		sound:Destroy()

		TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 91)}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
		Notification:TweenPosition(UDim2.new(0.5,0,0.915,0),'Out','Quint',0.8,true)

		wait(0.3)
		TweenService:Create(Notification.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		TweenService:Create(Notification.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
		wait(0.2)



		-- Requires Graphics Level 8-10
		if getgenv().SecureMode == nil then
			TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
		else
			if not getgenv().SecureMode then
				TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
			else 
				TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			end
		end

		if Domain.Name == "Domain" then
			neon:BindFrame(Notification.BlurModule, {
				Transparency = 0.98;
				BrickColor = BrickColor.new("Institutional white");
			})
		end
		
		if not NotificationSettings.Actions then
			wait(NotificationSettings.Duration or NotificationDuration - 0.5)
		else
			wait(0.8)
			TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 132)}):Play()
			wait(0.3)
			for _, Action in ipairs(Notification.Actions:GetChildren()) do
				if Action.ClassName == "TextButton" and Action.Name ~= "Template" then
					TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.2}):Play()
					TweenService:Create(Action, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
					wait(0.05)
				end
			end
		end
		
		repeat wait(0.001) until ActionCompleted

		for _, Action in ipairs(Notification.Actions:GetChildren()) do
			if Action.ClassName == "TextButton" and Action.Name ~= "Template" then
				TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				TweenService:Create(Action, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			end
		end

		TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0.47, 0,0.234, 0)}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0.528, 0,0.637, 0)}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 280, 0, 83)}):Play()
		TweenService:Create(Notification.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.6}):Play()

		wait(0.3)
		TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
		wait(0.4)
		TweenService:Create(Notification, TweenInfo.new(0.9, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 260, 0, 0)}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.2)
		if not getgenv().SecureMode then
			neon:UnbindFrame(Notification.BlurModule)
			blurlight1:Destroy()
		end
		wait(0.9)
		Notification:Destroy()
	end)
end

-- WATCH TOWER
--[[

DomainLibrary:WatchTower({
   Title = "Notification Title",
   Content = "Notification Content",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

]]

local WatchTower = Domain.WatchTower

function DomainLibrary:WatchTower(NotificationSettings)
	spawn(function()
		local ActionCompleted = true
		local Notification = WatchTower.Template:Clone()
        WatchTower.Position = UDim2.new(0.175, -25, 1, -25)
		Notification.Parent = WatchTower
		Notification.Name = NotificationSettings.Title or "Unknown Title"
		Notification.Visible = true

		local blurlightW = nil
		if not getgenv().SecureMode then
			blurlightW = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
			blurlightW.Enabled = true
			blurlightW.FarIntensity = 0
			blurlightW.FocusDistance = 51.6
			blurlightW.InFocusRadius = 50
			blurlightW.NearIntensity = 1
			game:GetService("Debris"):AddItem(script,0)
		end
		
		Notification.Actions.Template.Visible = false
		
		if NotificationSettings.Actions then
			for _, Action in pairs(NotificationSettings.Actions) do
				ActionCompleted = false
				local NewAction = Notification.Actions.Template:Clone()
				NewAction.BackgroundColor3 = Selected.NotificationActionsBackground
				if Selected ~= DomainLibrary.Theme.Default then
					NewAction.TextColor3 = Selected.TextColor
				end
				NewAction.Name = Action.Name
				NewAction.Visible = true
				NewAction.Parent = Notification.Actions
				NewAction.Text = Action.Name
				NewAction.BackgroundTransparency = 1
				NewAction.TextTransparency = 1
				NewAction.Size = UDim2.new(0, NewAction.TextBounds.X + 27, 0, 36)
				
				NewAction.MouseButton1Click:Connect(function()
					local Success, Response = pcall(Action.Callback)
					if not Success then
						print("Domain | Action: "..Action.Name.." Callback Error " ..tostring(Response))
					end
					ActionCompleted = true
				end)
			end
		end
		Notification.BackgroundColor3 = Selected.Background
		Notification.Title.Text = NotificationSettings.Title or "Unknown"
		Notification.Title.TextTransparency = 1
		Notification.Title.TextColor3 = Selected.TextColor
		Notification.Description.Text = NotificationSettings.Content or "Unknown"
		Notification.Description.TextTransparency = 1
		Notification.Description.TextColor3 = Selected.TextColor
		Notification.Icon.ImageColor3 = Selected.TextColor
		if NotificationSettings.Image then
			Notification.Icon.Image = NotificationSettings.Image
		else
			Notification.Icon.Image = "rbxassetid://3944680095"
		end

		Notification.Icon.ImageTransparency = 1
		Notification.Icon.Profile.UIStroke.Transparency = 1
		Notification.Icon.Profile.BackgroundTransparency = 1

		Notification.Parent = WatchTower
		Notification.Size = UDim2.new(0, 260, 0, 80)
		Notification.BackgroundTransparency = 1
		
		TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 91)}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
		Notification:TweenPosition(UDim2.new(0.5,0,0.915,0),'Out','Quint',0.8,true)

		wait(0.3)
		TweenService:Create(Notification.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		TweenService:Create(Notification.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
		wait(0.2)

		-- Requires Graphics Level 8-10
		if getgenv().SecureMode == nil then
			TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
		else
			if not getgenv().SecureMode then
				TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
			else 
				TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
			end
		end

		if Domain.Name == "Domain" then
			neon:BindFrame(Notification.BlurModule, {
				Transparency = 0.98;
				BrickColor = BrickColor.new("Institutional white");
			})
		end
		
		if not NotificationSettings.Actions then
			wait(NotificationSettings.Duration or NotificationDuration - 0.5)
		else
			wait(0.8)
			TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 132)}):Play()
			wait(0.3)
			for _, Action in ipairs(Notification.Actions:GetChildren()) do
				if Action.ClassName == "TextButton" and Action.Name ~= "Template" then
					TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.2}):Play()
					TweenService:Create(Action, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
					wait(0.05)
				end
			end
		end
		
		repeat wait(0.001) until ActionCompleted

		for _, Action in ipairs(Notification.Actions:GetChildren()) do
			if Action.ClassName == "TextButton" and Action.Name ~= "Template" then
				TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
				TweenService:Create(Action, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			end
		end

		TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Position = UDim2.new(0.47, 0,0.234, 0)}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0.528, 0,0.637, 0)}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 280, 0, 83)}):Play()
		TweenService:Create(Notification.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.2}):Play()

		wait(0.3)
		TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
		wait(0.4)
		TweenService:Create(Notification, TweenInfo.new(0.9, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 260, 0, 0)}):Play()
		TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Notification.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(Notification.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.2)
		if not getgenv().SecureMode then
			neon:UnbindFrame(Notification.BlurModule)
			blurlightW:Destroy()
		end
		wait(0.9)
		Notification:Destroy()
	end)
end

--

--[[

DomainLibrary:RiskAnalysis({
   AntiCheat = true,
   ModTeam = false,
   Development = true,
   ReportSystem = false,
   Conclusion = "<b>GAME's</b> anti-cheat systems seems to have been rushed at the beginning although is being heavily worked on and thats not even a big threat right now. The easiest way right now to be banned is the player's reporting you and possible moderators being in the game. watch out.",
})

]]

local RiskAnalysis = Domain.Risk

function DomainLibrary:RiskAnalysis(RiskSettings)
	spawn(function()
		RiskAnalysis.Conclude.Description.Text = RiskSettings.Conclusion
		--
		if RiskSettings.AntiCheat then
		RiskAnalysis.Listofrisks.List.AntiCheat.Input.PlaceholderColor3 = Color3.fromRGB(178, 36, 38)
		RiskAnalysis.Listofrisks.List.AntiCheat.Add.Icon.Image = "rbxassetid://11850865751"
		RiskAnalysis.Listofrisks.List.AntiCheat.Add.Icon.ImageColor3 = Color3.fromRGB(178, 36, 38)
		elseif RiskSettings.AntiCheat == false then
		RiskAnalysis.Listofrisks.List.AntiCheat.Input.PlaceholderColor3 = Color3.fromRGB(17, 178, 138)
		RiskAnalysis.Listofrisks.List.AntiCheat.Add.Icon.Image = "rbxassetid://11850864626"
		RiskAnalysis.Listofrisks.List.AntiCheat.Add.Icon.ImageColor3 = Color3.fromRGB(17, 178, 138)
		end
		--
		if RiskSettings.ModTeam then
		RiskAnalysis.Listofrisks.List.ModTeam.Input.PlaceholderColor3 = Color3.fromRGB(178, 36, 38)
		RiskAnalysis.Listofrisks.List.ModTeam.Add.Icon.Image = "rbxassetid://11850865751"
		RiskAnalysis.Listofrisks.List.ModTeam.Add.Icon.ImageColor3 = Color3.fromRGB(178, 36, 38)
		elseif RiskSettings.ModTeam == false then
		RiskAnalysis.Listofrisks.List.ModTeam.Input.PlaceholderColor3 = Color3.fromRGB(17, 178, 138)
		RiskAnalysis.Listofrisks.List.ModTeam.Add.Icon.Image = "rbxassetid://11850864626"
		RiskAnalysis.Listofrisks.List.ModTeam.Add.Icon.ImageColor3 = Color3.fromRGB(17, 178, 138)
		end
		--
		if RiskSettings.Development then
		RiskAnalysis.Listofrisks.List.Development.Input.PlaceholderColor3 = Color3.fromRGB(178, 36, 38)
		RiskAnalysis.Listofrisks.List.Development.Add.Icon.Image = "rbxassetid://11850865751"
		RiskAnalysis.Listofrisks.List.Development.Add.Icon.ImageColor3 = Color3.fromRGB(178, 36, 38)
		elseif RiskSettings.Development == false then
		RiskAnalysis.Listofrisks.List.Development.Input.PlaceholderColor3 = Color3.fromRGB(17, 178, 138)
		RiskAnalysis.Listofrisks.List.Development.Add.Icon.Image = "rbxassetid://11850864626"
		RiskAnalysis.Listofrisks.List.Development.Add.Icon.ImageColor3 = Color3.fromRGB(17, 178, 138)
		end
		--
		if RiskSettings.ReportSystem then
		RiskAnalysis.Listofrisks.List.Report.Input.PlaceholderColor3 = Color3.fromRGB(178, 36, 38)
		RiskAnalysis.Listofrisks.List.Report.Add.Icon.Image = "rbxassetid://11850865751"
		RiskAnalysis.Listofrisks.List.Report.Add.Icon.ImageColor3 = Color3.fromRGB(178, 36, 38)
		elseif RiskSettings.ReportSystem == false then
		RiskAnalysis.Listofrisks.List.Report.Input.PlaceholderColor3 = Color3.fromRGB(17, 178, 138)
		RiskAnalysis.Listofrisks.List.Report.Add.Icon.Image = "rbxassetid://11850864626"
		RiskAnalysis.Listofrisks.List.Report.Add.Icon.ImageColor3 = Color3.fromRGB(17, 178, 138)
		end
		--
		local blurlightR = nil
		if not getgenv().SecureMode then
			blurlightR = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
			blurlightR.Enabled = true
			blurlightR.FarIntensity = 0
			blurlightR.FocusDistance = 51.6
			blurlightR.InFocusRadius = 50
			blurlightR.NearIntensity = 1
			game:GetService("Debris"):AddItem(script,0)
		end
		--
		local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

		RiskAnalysis.QueueTitle.Text = "CloudzOS Has collected some information on "..GameName.."'s anti-cheat systems and features."
		--
		RiskAnalysis.Visible = true
		RiskAnalysis.Position = UDim2.new(0.018, 0, 0.01, 0)
		RiskAnalysis.BackgroundTransparency = 1
		RiskAnalysis.UIStroke.Transparency = 1
		RiskAnalysis.Conclude.UIStroke.Transparency = 1
		RiskAnalysis.Conclude.BackgroundTransparency = 1
		--
		RiskAnalysis.Close.ImageTransparency = 1
		RiskAnalysis.Icon.ImageTransparency = 1
		RiskAnalysis.Conclude.Icon.ImageTransparency = 1
		--
		RiskAnalysis.TItle.TextTransparency = 1
		RiskAnalysis.QueueTitle.TextTransparency = 1
		RiskAnalysis.Conclude.TItle.TextTransparency = 1
		RiskAnalysis.Conclude.Description.TextTransparency = 1
		RiskAnalysis.Listofrisks.QueueTitle.TextTransparency = 1
		--
		for _, obj in ipairs(RiskAnalysis.Listofrisks.List:GetChildren()) do
			if obj.ClassName == "Frame" then
				obj.BackgroundTransparency = 1
				obj.Add.BackgroundTransparency = 1
				obj.UIStroke.Transparency = 1
				obj.Input.TextTransparency = 1
				obj.Add.UIStroke.Transparency = 1
				obj.Add.Icon.ImageTransparency = 1
			end
		end
		--
		if Domain.Name == "Domain" then
			neon:BindFrame(RiskAnalysis.BlurModule, {
				Transparency = 0.98;
				BrickColor = BrickColor.new("Institutional white");
			})
		end
		if Domain.Name == "Domain" then
			neon:BindFrame(RiskAnalysis.Conclude.BlurModule, {
				Transparency = 0.98;
				BrickColor = BrickColor.new("Institutional white");
			})
		end
		--
		local loop = true
		TweenService:Create(RiskAnalysis, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.3}):Play()
		TweenService:Create(RiskAnalysis.Conclude, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.3}):Play()
		TweenService:Create(RiskAnalysis, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0.018, 0, 0.048, 0)}):Play()
		wait(0.4)
	coroutine.wrap(function()
		while loop do
			wait(0.1)
		if game:GetService("Players").LocalPlayer.PlayerGui.Chat.Frame.Visible == true then
			TweenService:Create(RiskAnalysis, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0.018, 0, 0.3, 0)}):Play()
		else
			TweenService:Create(RiskAnalysis, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0.018, 0, 0.048, 0)}):Play()
		end
	end
	end)()
		wait(0.5)
		TweenService:Create(RiskAnalysis.UIStroke, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
		TweenService:Create(RiskAnalysis.Conclude.UIStroke, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
		wait(0.2)
		TweenService:Create(RiskAnalysis.Close, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		TweenService:Create(RiskAnalysis.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		TweenService:Create(RiskAnalysis.Conclude.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		wait(0.4)
		TweenService:Create(RiskAnalysis.TItle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		TweenService:Create(RiskAnalysis.QueueTitle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
		TweenService:Create(RiskAnalysis.Conclude.TItle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		TweenService:Create(RiskAnalysis.Conclude.Description, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
		TweenService:Create(RiskAnalysis.Listofrisks.QueueTitle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
		--
		for _, obj in ipairs(RiskAnalysis.Listofrisks.List:GetChildren()) do
			if obj.ClassName == "Frame" then
				TweenService:Create(obj, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.8}):Play()
				wait(0.1)
				TweenService:Create(obj.Add, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.8}):Play()
				wait(0.1)
				TweenService:Create(obj.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				wait(0.1)
				TweenService:Create(obj.Input, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
				wait(0.1)
				TweenService:Create(obj.Add.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
				wait(0.1)
				TweenService:Create(obj.Add.Icon, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
				wait(0.1)
			end
		end
		--
		RiskAnalysis.Close.MouseButton1Click:Connect(function()
			loop = false
			for _, obj in ipairs(RiskAnalysis.Listofrisks.List:GetChildren()) do
				if obj.ClassName == "Frame" then
					TweenService:Create(obj, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(obj.Add, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(obj.UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(obj.Input, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(obj.Add.UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(obj.Add.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				end
			end
		TweenService:Create(RiskAnalysis.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		wait(0.1)
		TweenService:Create(RiskAnalysis.Close, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 10}):Play()
		wait(0.2)
		TweenService:Create(RiskAnalysis.TItle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.QueueTitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude.TItle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude.Description, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Listofrisks.QueueTitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis, TweenInfo.new(2, Enum.EasingStyle.Quint), {Position = UDim2.new(0.018, 0, 0.02, 0)}):Play()
		wait(0.3)
		neon:UnbindFrame(RiskAnalysis.BlurModule)
		neon:UnbindFrame(RiskAnalysis.Conclude.BlurModule)
		blurlightR:Destroy()
		TweenService:Create(RiskAnalysis, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		--
		wait(1.2)
		RiskAnalysis.Visible = false
		end)
		wait(50)
		if RiskAnalysis.Visible == true then
			loop = false
			for _, obj in ipairs(RiskAnalysis.Listofrisks.List:GetChildren()) do
				if obj.ClassName == "Frame" then
					TweenService:Create(obj, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(obj.Add, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
					TweenService:Create(obj.UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(obj.Input, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
					TweenService:Create(obj.Add.UIStroke, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
					TweenService:Create(obj.Add.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
				end
			end
		TweenService:Create(RiskAnalysis.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		wait(0.1)
		TweenService:Create(RiskAnalysis.Close, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude.Icon, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {ImageTransparency = 10}):Play()
		wait(0.2)
		TweenService:Create(RiskAnalysis.TItle, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.QueueTitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude.TItle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude.Description, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Listofrisks.QueueTitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis, TweenInfo.new(2, Enum.EasingStyle.Quint), {Position = UDim2.new(0.018, 0, 0.02, 0)}):Play()
		wait(0.3)
		neon:UnbindFrame(RiskAnalysis.BlurModule)
		neon:UnbindFrame(RiskAnalysis.Conclude.BlurModule)
		blurlightR:Destroy()
		TweenService:Create(RiskAnalysis, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(RiskAnalysis.Conclude, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		--
		wait(1.2)
		RiskAnalysis.Visible = false
		else
		return
		end
	end)
end

local DMRInterface = Domain.QSDMR
local OpenDMR = false
--
local blurlightDMR = nil
function openDMRInterface()
	spawn(function()
		--
		blurlightDMR = nil
		if not getgenv().SecureMode then
			blurlightDMR = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
			blurlightDMR.Enabled = true
			blurlightDMR.FarIntensity = 0
			blurlightDMR.FocusDistance = 51.6
			blurlightDMR.InFocusRadius = 50
			blurlightDMR.NearIntensity = 1
			game:GetService("Debris"):AddItem(script,0)
		end
		--
		DMRInterface.Draggable = true
		DMRInterface.Position = UDim2.new(0.26, 0, 0.69, 0)
		DMRInterface.Close.ImageTransparency = 1
		DMRInterface.DMRView.ImageTransparency = 1
		DMRInterface.Title.TextTransparency = 1
		--
		DMRInterface.Top.Integ.TextTransparency = 1
		DMRInterface.Top.AvgFuel.TextTransparency = 1
		DMRInterface.Top.Temps.TextTransparency = 1
		DMRInterface.Top.Title.TextTransparency = 1
		--
		DMRInterface.Top2.Divider.Size = UDim2.new(0, 300, 0, 0)
		DMRInterface.Top2.Title.TextTransparency = 1
		DMRInterface.Top2.Grid.TextTransparency = 1
		--
		DMRInterface.BackgroundTransparency = 1
		DMRInterface.UIStroke.Transparency = 1
		--
		DMRInterface.Visible = true
		OpenDMR = true
		if Domain.Name == "Domain" then
			neon:BindFrame(DMRInterface.BlurModule, {
				Transparency = 0.98;
				BrickColor = BrickColor.new("Institutional white");
			})
		end
		TweenService:Create(DMRInterface, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.3}):Play()
		wait(0.4)
		TweenService:Create(DMRInterface.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
		wait(0.2)
		TweenService:Create(DMRInterface.Close, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0.5}):Play()
		TweenService:Create(DMRInterface.DMRView, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
		TweenService:Create(DMRInterface.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		--
		wait(0.3)
		TweenService:Create(DMRInterface.Top.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top.AvgFuel, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top.Temps, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top.Integ, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
		--
		TweenService:Create(DMRInterface.Top2.Divider, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
		wait(0.3)
		TweenService:Create(DMRInterface.Top2.Divider, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 300, 0, 1)}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top2.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top2.Grid, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
		--
		DMRInterface.Close.MouseButton1Click:Connect(function()
		TweenService:Create(DMRInterface.Close, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(DMRInterface.DMRView, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(DMRInterface.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		--
		wait(0.3)
		TweenService:Create(DMRInterface.Top.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top.AvgFuel, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top.Temps, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top.Integ, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		--
		TweenService:Create(DMRInterface.Top2.Divider, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		wait(0.3)
		TweenService:Create(DMRInterface.Top2.Divider, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 300, 0, 0)}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top2.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top2.Grid, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.3)
		neon:UnbindFrame(DMRInterface.BlurModule)
		blurlightDMR:Destroy()
		TweenService:Create(DMRInterface, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		wait(0.2)
		TweenService:Create(DMRInterface.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		wait(0.5)
		DMRInterface.Visible = false
		OpenDMR = false
		end)
		--

	end)
end

function CloseDMRInterface()
	spawn(function()
		TweenService:Create(DMRInterface.Close, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(DMRInterface.DMRView, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
		TweenService:Create(DMRInterface.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		--
		wait(0.3)
		TweenService:Create(DMRInterface.Top.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top.AvgFuel, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top.Temps, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top.Integ, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		--
		TweenService:Create(DMRInterface.Top2.Divider, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		wait(0.3)
		TweenService:Create(DMRInterface.Top2.Divider, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 300, 0, 0)}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top2.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.1)
		TweenService:Create(DMRInterface.Top2.Grid, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.3)
		neon:UnbindFrame(DMRInterface.BlurModule)
		blurlightDMR:Destroy()
		TweenService:Create(DMRInterface, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		wait(0.2)
		TweenService:Create(DMRInterface.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		wait(0.5)
		DMRInterface.Visible = false
		OpenDMR = false
	end)
end

-- Tables

local Data = game:HttpGetAsync("https://games.roblox.com/v2/users/"..game.Players.LocalPlayer.UserId.."/favorite/games?accessFilter=2&limit=50&sortOrder=Asc")
	Data = game:GetService("HttpService"):JSONDecode(Data)

	local FavoriteGames = {}

		for i, v in pairs(Data.data) do
			table.insert(FavoriteGames, v.rootPlace.id)
		end

local UniversalScripts = {
	InfiniteYield = {
		Name = "Infinite Yield",
		Subtitle = "Sophisticated command script",
		Loadstring = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
		Colour = Color3.fromRGB(100, 100, 100),
	},
    SiriusUni = {
		Name = "Sirius Universal",
		Subtitle = "A Universal Script by the team who made Sirius",
		Loadstring = "https://raw.githubusercontent.com/shlexware/Sirius/request/game/Universal",
		Colour = Color3.fromRGB(188, 57, 59),
	},
	ChatInlineTranslator = {
		Name = "Chat Translator",
		Subtitle = "A Script that is able to translate chat and allows you to chat in other languages without knowing how to talk in them",
		Loadstring = "https://i.qts.life/r/ChatInlineTranslator.lua",
		Colour = Color3.fromRGB(252, 148, 3),
	},
	SimpleSpy = {
		Name = "SimpleSpy",
		Subtitle = "Usually used for making script and more stuff",
		Loadstring = "https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua",
		Colour = Color3.fromRGB(0, 170, 127),
	},
	cmdx = {
		Name = "CMD-X",
		Subtitle = "A not so sophisticated command script but still really good",
		Loadstring = "https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",
		Colour = Color3.fromRGB(179, 97, 42),
	},
	Dex = {
		Name = "Dex Explorer",
		Subtitle = "Also a sophisticated command script that is still really good",
		Loadstring = "https://pastebin.com/raw/fPP8bZ8Z",
		Colour = Color3.fromRGB(120, 170, 160),
	},

}

local DetectionScripts = {
	spongebobguess = {
		Name = "Teleport to finish",
		Description = "This script will teleport to the finish of the game. ha mlemix",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {8494013385},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/dipyRqzR",
	},
	DecayingWinter = {
		Name = "Decaying Winter",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {7551121821},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/Aidez/decaying_winter/main/GOODWILL_COMMAND_SCRIPT",
	},
	bedwars = {
		Name = "Bedwars",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {6872265039},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua",
	},
	Vision = {
		Name = "Vision",
		Description = "A script hub with a few high quality games",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {6769764667,6847090259,7305309231,8116417963},
		Premium = true,
		KeySys = true,
		Loadstring = "https://visionhub.dev/script.lua",
	},
	DarkHub = {
		Name = "Dark Hub",
		Description = "One of the most popular script hubs to date, with little compromise.",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {2377868063,263761432,606849621,3527629287,2555870920,5081773298,2551991523,1962086868,3101667897,6483072762,6494529140,3297964905,5523314295,301549746,5041144419,370731277,142823291,621129760,6284583030,5104202731},
		Premium = true,
		KeySys = true,
		Loadstring = "https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init",
	},
	CombatWarriors = {
		Name = "Nova.XYZ",
		Description = "This script is one of the best for the game that I have found so, uh.. enjoy!",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {263152704,4282985734},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NOVA_HUB_SOURCE",
	},
	IdentityFraud = {
		Name = "Identity Fraud",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {338521019},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/tkorra/Identity_Fraud/main/main.lua",
	},
	CriticalStrike = {
		Name = "Critical Strike",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {111311599},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/WrF6UWQg",
	},
	DBR = {
		Name = "Dragon Ball Rage",
		Description = "A DomainX exclusive, by our developer, Urbanstorm",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {71315343},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/Urbanstorms/DomainX/main/DBR.lua",
	},
	Vega = {
		Name = "Vega Remover",
		Description = "A powerful tool that removes known barriers in cafe games",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {5580097107,738548299,610172644,1217895158,3522042406,679498303},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/realvega/VegaRemover/main/source",
	},
	KaijuParadise = {
		Name = "RealZzHub",
		Description = "Currently the best script right now for Kaiju Paradise. Some Features should not be used like Auto-Escape if you wish to stay discreet.",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {8318588114,6456351776},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/RealZzHub/MainV2/main/Games/KaijuPD.lua",
	},
	FNF = {
		Name = "Friday Night Funkin'",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {6447798030},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/main.lua",
	},
	PrisonLife = {
		Name = "Prison Life",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {155615604},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife",
	},
	andestsim = {
		Name = "Anime Destroyer Simulator",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {7082539621},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/DevPolarhub/ScriptPacks/main/Anime%20Destroyers%20Simulator",
	},
	towerdefensesim = {
		Name = "Tower Defense Simulator",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {3260590327},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/Mjryt8Mm",
	},
	DemonSlayer = {
		Name = "Demon Slayer RPG 2",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {4734949248},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/HDTerebi/DSRPG2/master/Shitty%20GUI.lua",
	},
	NDS = {
		Name = "Natural Disaster Survival",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {189707},
		Premium = true,
		Loadstring = "https://gist.githubusercontent.com/TurkOyuncu99/7c75386107937fa006304efd24543ad4/raw/8d759dfcd95d39949c692735cfdf62baec0bf835/cafwetweg",
	},
	RoGhoul = {
		Name = "Ro-Ghoul",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {914010731},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/z4gs/scripts/master/Ro-Ghoul%20Auto%20Farm.lua",
	},
	MegaEasyObby = {
		Name = "Mega Easy Obby",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {3587619225},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/X361rzKq",
	},
	NinjaLegends = {
		Name = "Ninja Legends",
		Description = "Full featured autofarm script for Ninja Legends",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {3956818381},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/Q39hYJ8V",
	},
	MyRestaurant = {
		Name = "My Restaurant",
		Description = "Full featured autofarm script for My Restaurant",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {4490140733},
		Premium = true,
		Loadstring = "http://void-scripts.com/Scripts/myRest.lua",
	},
	StopItSlender = {
		Name = "Stop It Slender!",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {30869879},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/hFxynXvs",
	},
	inooarctic = {
		Name = "Innovation Arctic Base Remote Core Panel",
		Description = "A nice control panel that connects you the Facility's Core Tempreature Controls.. How much damage can you do?",
		Colour = Color3.fromRGB(50, 168, 160),
		Games = {1033860623},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/SXgNhMJK",
	},
	StrollerAbuse = {
		Name = "Stroller UI",
		Description = "Kill and bring players using the Stroller tool's flaws",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {1662219031},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/Q4qQh4MS",
	},
}

--
function DiscordSend(Text)
	local webhookcheck =
	is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
	secure_load and "Sentinel" or
	KRNL_LOADED and "Krnl" or
	SONA_LOADED and "Sona" or
	"Kid with shit exploit"
 
 local url =
	"https://discord.com/api/webhooks/1054550405700390912/1ErQVSie0tPQGAaGeEmLB24Ye_ehJ_07TvgRt_qy1tpgZjeqximgIfrtUBWVwMjMZWFv"
 local data = {			
	["content"] = Text,
 }
 local newdata = game:GetService("HttpService"):JSONEncode(data)
 
 local headers = {
	["content-type"] = "application/json"
 }
 request = http_request or request or HttpPost or syn.request
 local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
 request(abcdef)
end
--

function figureNotifs(Stack,Container)
	local stacksize = 1

	local i = #Stack
	while i > 0 do
		local gui = Stack[i]
		if gui then
			if stacksize == 1 then
				stacksize = 0
			else
				stacksize = stacksize + 0.135
			end
			local desiredpos = UDim2.new(0,0,stacksize,0)
			if gui.Position ~= desiredpos then
				gui:TweenPosition(desiredpos,"Out","Quint",0.5,true)
			end
		end
		i = i-1
	end
end

function figureToasts(Stack,Container)

	local stacksize = 0

	local i = #Stack
	while i > 0 do
		local gui = Stack[i]
		if gui then
			if stacksize == 0 then
				stacksize = 1
			else
				stacksize = stacksize - 0.13
			end
			local desiredpos = UDim2.new(0.5,0,stacksize,0)
			if gui.Position ~= desiredpos then
				gui:TweenPosition(desiredpos,"Out","Quint",0.6,true)
			end
		end
		i = i-1
	end
end

function DomainLibrary:Toasts1(ToastSettings)
		spawn(function()
			if not Font then
				Font = "GothamSemibold"
			end
			if not Color then
				Color = Color3.fromRGB(255,255,255)
			end
			if not Time then
				Time = 7
			end
			if Font == "GothamSemiBold" then
				Font = "GothamSemibold"
			end
			local notificationContainer = Domain.Toasts
			local Notification = notificationContainer:WaitForChild('Template')	
			local notifClone = Notification:Clone()
			local notifContent = notifClone:WaitForChild('Content')
			--CLONE
			notifClone.BackgroundTransparency = 1
			notifContent.Font = ToastSettings.Font
			notifContent.TextWrapped = false
			notifContent.TextTransparency = 1
			notifContent.BackgroundTransparency = 1
			notifClone.Name = 'Toast'
			notifClone.Visible = true
			notifContent.TextColor3 = ToastSettings.Color
			notifContent.Text = ToastSettings.Content
			notifClone.Parent = notificationContainer
			notifContent.TextYAlignment = Enum.TextYAlignment.Center
			notifClone.Position = UDim2.new(0.5,1,0)

			notifClone:TweenPosition(UDim2.new(0.5,0.87,0),'Out','Quint',0.3,true)

			TweenService:Create(notifContent, TweenInfo.new(0.35, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
			TweenService:Create(notifContent, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {TextStrokeTransparency = 0.7}):Play()
			table.insert(ToastStack,notifClone)
			figureToasts(ToastStack,notificationContainer)
			--
			function animatedtext(Text)
				for i = 1, #Text do
					notifContent.Text = (string.sub(Text, 1, i))
					wait(0.05)
				end
			end
			animatedtext(ToastSettings.Content)
			wait(ToastSettings.Duration)
			--
			for a,b in pairs(ToastStack) do
				if b == notifClone then
					table.remove(ToastStack,a)
				end
			end
			wait(0.05)
			notifClone:TweenPosition(UDim2.new(0.5,0,notifClone.Position.Y.Scale-0.3,0),'Out','Quint',1,true)
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextStrokeTransparency = 1})
			tween:Play()
			wait(0.305)
			notifClone:Destroy()
			figureToasts(ToastStack,notificationContainer)
	end)
end

-- TEMPLATE = warn("Blackout Detected","rbxassetid://11219169312",Color3.fromRGB(140, 34, 34),10)

function warn(Content,Image,Color,Time)
	spawn(function()
		if not Content then
			Content = "Admin Detected"
		end
		if not Image then
			Image = "rbxassetid://3926307971"
		end
		if not Color then
			Color = Color3.new(0.701961, 0.235294, 0.243137)
		end
		if not Time then
			Time = 7
		end

		if Image == "rbxassetid://3926307971" then
			Domain.Warn.Warning.ContentImage.ImageRectOffset = Vector2.new(884, 4)
			Domain.Warn.Warning.ContentImage.ImageRectSize = Vector2.new(36, 36)
		end
	Domain.Warn.Warning.ContentImage.ImageRectOffset = Vector2.new(0, 0)
	Domain.Warn.Warning.ContentImage.ImageRectSize = Vector2.new(0, 0)
	Domain.Warn.Warning.WarningBox.Content.Text = Content
	Domain.Warn.Warning.ContentImage.Image = Image
	Domain.Warn.Warning.WarningBox.Content.TextColor3 = Color
	Domain.Warn.Warning.IconBox.UIStroke.Color = Color
	Domain.Warn.Warning.ContentImage.ImageColor3 = Color
	Domain.Warn.Warning.Divider.ProgressBar.Size = UDim2.new(1, 0, 1.151, 0)
	Domain.Warn.Warning.IconBox.BackgroundTransparency = 1
	Domain.Warn.Warning.IconBox.UIStroke.Transparency = 1
	Domain.Warn.Warning.ContentImage.ImageTransparency = 1
	wait(1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.IconBox, transitionInfo, {BackgroundTransparency = 0.5})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.IconBox.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.ContentImage, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	wait(1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.IconBox, transitionInfo, {Position = UDim2.new(-0.725, 0, -0.306, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.ContentImage, transitionInfo, {Position = UDim2.new(-0.670, 0, 0.1, 0)})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Box2, transitionInfo, {Transparency = 0.5})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Box2, transitionInfo, {Transparency = 0.5})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning, transitionInfo, {Transparency = 0.5})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.WarningBox, transitionInfo, {Transparency = 0.5})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Divider, transitionInfo, {Transparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Divider.ProgressBar, transitionInfo, {Transparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Box2.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Box2.Title2, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.WarningBox.Content, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(Time, Enum.EasingStyle.Linear)
	local tween = TweenService:Create(Domain.Warn.Warning.Divider.ProgressBar, transitionInfo, {Size = UDim2.new(0, 0, 1.151, 0)})
	tween:Play()
	wait(Time)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Box2, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Box2, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.WarningBox, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Divider, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Divider.ProgressBar, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Box2.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.Box2.Title2, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.WarningBox.Content, transitionInfo, {TextTransparency = 1})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.IconBox, transitionInfo, {Position = UDim2.new(0.198, 0, -0.306, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.ContentImage, transitionInfo, {Position = UDim2.new(0.244, 0, 0.1, 0)})
	tween:Play()
	wait(0.6)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.IconBox, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.IconBox.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Warn.Warning.ContentImage, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	end)
end




-- TTTEMPLATE : Toast("Cloudz OS Testing","GothamSemibold",Color3.fromRGB(255,0,0))

function Toast(Content,Font,Color,Time)
	if DMNReady then
		Domain.Toasts.Visible = true
		Domain.Toasts.ClipsDescendants = false
		Domain.Toasts.Template.Visible = false
		spawn(function()
			if not Font then
				Font = "GothamSemibold"
			end
			if not Color then
				Color = Color3.fromRGB(255,255,255)
			end
			if not Time then
				Time = 7
			end
			local notificationContainer = Domain.Toasts
			local Notification = notificationContainer:WaitForChild('Template')	
			local notifClone = Notification:Clone()
			local notifContent = notifClone:WaitForChild('Content')
			if Font == "GothamSemiBold" then
				Font = "GothamSemibold"
			end
			notifClone.BackgroundTransparency = 1
			notifContent.Font = Font
			notifContent.TextWrapped = false
			notifContent.TextTransparency = 1
			notifContent.BackgroundTransparency = 1
			notifClone.Name = 'Toast'
			notifClone.Visible = true
			notifContent.TextColor3 = Color
			notifContent.Text = Content
			notifClone.Parent = notificationContainer
			notifContent.TextYAlignment = Enum.TextYAlignment.Center
			notifClone.Position = UDim2.new(0.5,1,0)
			wait(0.5)
			notifClone:TweenPosition(UDim2.new(0.5,0.87,0),'Out','Quint',0.3,true)
			local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextStrokeTransparency = 0.9})
			tween:Play()
			table.insert(ToastStack,notifClone)
			figureToasts(ToastStack,notificationContainer)
			function animatedtext(Text)
				for i = 1, #Text do
					notifContent.Text = (string.sub(Text, 1, i))
					wait(0.05)
				end
			end
			animatedtext(Content)
			wait(Time)
			for a,b in pairs(ToastStack) do
				if b == notifClone then
					table.remove(ToastStack,a)
				end
			end
			wait(0.05)
			notifClone:TweenPosition(UDim2.new(0.5,0,notifClone.Position.Y.Scale-0.3,0),'Out','Quint',1,true)
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextStrokeTransparency = 1})
			tween:Play()
			wait(0.305)
			notifClone:Destroy()
			figureToasts(ToastStack,notificationContainer)
		end)
	end
end

local function rgb255RichText(color3)
    local R = (color3.R * 255)
    local G = (color3.G * 255)
    local B = (color3.B * 255)
    return string.format("rgb(%d, %d, %d)", R, G, B)
end

function FastToast(Content,Font,Color,Time)
	if DMNReady then
		Domain.Toasts.Visible = true
		Domain.Toasts.ClipsDescendants = false
		Domain.Toasts.Template.Visible = false
		spawn(function()
			if not Font then
				Font = "GothamSemibold"
			end
			if not Color then
				Color = Color3.fromRGB(255,255,255)
			end
			if not Time then
				Time = 7
			end
			local notificationContainer = Domain.Toasts
			local Notification = notificationContainer:WaitForChild('Template')	
			local notifClone = Notification:Clone()
			local notifContent = notifClone:WaitForChild('Content')
			if Font == "GothamSemiBold" then
				Font = "GothamSemibold"
			end
			notifClone.BackgroundTransparency = 1
			notifContent.Font = Font
			notifContent.TextWrapped = false
			notifContent.TextTransparency = 1
			notifContent.BackgroundTransparency = 1
			notifClone.Name = 'Toast'
			notifClone.Visible = true
			notifContent.TextColor3 = Color
			notifContent.Text = Content
			notifClone.Parent = notificationContainer
			notifContent.TextYAlignment = Enum.TextYAlignment.Center
			notifClone.Position = UDim2.new(0.5,1,0)
			wait(0.5)
			notifClone:TweenPosition(UDim2.new(0.5,0.87,0),'Out','Quint',0.3,true)
			local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextStrokeTransparency = 0.9})
			tween:Play()
			table.insert(ToastStack,notifClone)
			figureToasts(ToastStack,notificationContainer)
			wait(Time)
			for a,b in pairs(ToastStack) do
				if b == notifClone then
					table.remove(ToastStack,a)
				end
			end
			wait(0.05)
			notifClone:TweenPosition(UDim2.new(0.5,0,notifClone.Position.Y.Scale-0.3,0),'Out','Quint',1,true)
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextStrokeTransparency = 1})
			tween:Play()
			wait(0.305)
			notifClone:Destroy()
			figureToasts(ToastStack,notificationContainer)
		end)
	end
end

function Refresh()
	DomainLibrary:Notify({
		Title = "CloudzOS {GMN}",
		Content = "Hold on! Refreshing Your Character",
		Duration = 6.5,
		Image = 4335476290,
	 })
	local PreviousPosition = LocalPlayer.Character.HumanoidRootPart.CFrame
	LocalPlayer.Character.Humanoid.Health = 0
	if LocalPlayer.Character:FindFirstChild("Head") then LocalPlayer.Character.Head:Destroy() end
	LocalPlayer.CharacterAdded:Wait()
	LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	LocalPlayer.Character.HumanoidRootPart.CFrame = PreviousPosition
end

function FindRootPart(Character)
	local rootPart = Character:FindFirstChild('HumanoidRootPart') or Character:FindFirstChild('Torso') or Character:FindFirstChild('UpperTorso')
	return rootPart
end

function HasTools()
	if LocalPlayer:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or LocalPlayer.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end

function AttachToPlayer(Player)
	if HasTools() then
		local Character = LocalPlayer.Character
		local PlCharacter = Player.Character
		local Humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid") -- Can sometimes fail, causing kill to error, working on fix
		local HumanoidRootPart = FindRootPart(LocalPlayer.Character)
		local PlHumanoidRootPart = FindRootPart(Player.Character)
		Humanoid.Name = "1"
		local NewHumanoid = Humanoid:Clone()
		NewHumanoid.Parent = Character
		NewHumanoid.Name = "Humanoid"
		wait()
		Humanoid:Destroy()
		workspace.CurrentCamera.CameraSubject = Character
		NewHumanoid.DisplayDistanceType = "None"
		local Tool = LocalPlayer:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or LocalPlayer.Character:FindFirstChildOfClass("Tool")
		Tool.Parent = Character
		HumanoidRootPart.CFrame = PlHumanoidRootPart.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			HumanoidRootPart.CFrame = PlHumanoidRootPart.CFrame
		until (Tool.Parent ~= Character or not HumanoidRootPart or not PlHumanoidRootPart or not HumanoidRootPart.Parent or not PlHumanoidRootPart.Parent or n > 250) and n > 2
	else
		Toast("You need a tool to perform this action on "..Player.Name) 
	end
end

-- {0.295, 0},{0.067, 0}

-- {0, 300},{0, 55}

function Kill(Player)
	if HasTools() then
		if Player and Player ~= nil then
			Toast("Trying to kill "..Player.Name)
			local RegularPosition = FindRootPart(LocalPlayer.Character).CFrame
			Refresh()
			wait()
			repeat wait() until LocalPlayer.Character ~= nil and FindRootPart(LocalPlayer.Character)
			wait(0.3)
			local HumanoidRootPart = FindRootPart(LocalPlayer.Character)
			AttachToPlayer(Player)
			repeat
				wait()
				HumanoidRootPart.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5,999999)
			until not FindRootPart(LocalPlayer.Character) or not FindRootPart(LocalPlayer.Character)
			wait(1)
			LocalPlayer.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = RegularPosition
		else
			Toast("We are unable to find the Player instance")
		end
	else
		Toast("You need a tool to perform kill on "..Player.Name) 
	end
end

function PreviousElegance(check)
	left = false
	--[[
	if not check then
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)
	end]]
	for _, GameID in pairs(KaijuParadise) do
		if GameID == game.PlaceId then
			TweenService:Create(game:GetService("Players").Melvoledi.PlayerGui.MainGui.InventoryGui, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 0,0.91,-70)}):Play()
			TweenService:Create(game:GetService("Players").Melvoledi.PlayerGui.MainGui.WeaponUI.MainFrame, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 0,1,-120)}):Play()
		end
	end
	--[[local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(game:GetService("CoreGui").RobloxGui.Backpack, transitionInfo, {Position = UDim2.new(0, 0,-0.070, 0)})
	tween:Play()]]
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {BackgroundTransparency = 0.6})
	tween:Play()
	Domain.DisplayOrder = 100
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Back)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Size = UDim2.new(0, 300,0, 55)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextTransparency = 0})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(70, 70, 70)})
	tween:Play()
	for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
		if obj.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj, transitionInfo, {Size = UDim2.new(0, 36,0, 36)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Icon, transitionInfo, {Size = UDim2.new(0, 24,0, 24)})
			tween:Play()
			local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(238, 238, 238)})
			tween:Play()
			wait(0.1)
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(238, 238, 238)})
			tween:Play()
			local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
		end
	end
end

function elegance(check)
	if not Domain then
		return
	end
	if not Domain:FindFirstChild("Main") then
		return
	end
	if Domain.Main.KeybindNote.TextTransparency ~= 1 then
		return
	end
	--[[
	if not check then
		if game:GetService("StarterGui"):GetCoreGuiEnabled(Enum.CoreGuiType.Backpack) then
			inventorywasopen = true
		end
		if inventorywasopen then
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
		end
	end]]
	Domain.DisplayOrder = 1
	for _, GameID in pairs(KaijuParadise) do
		if GameID == game.PlaceId then
			TweenService:Create(game:GetService("Players").Melvoledi.PlayerGui.MainGui.InventoryGui, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 0,0.93,-70)}):Play()
			TweenService:Create(game:GetService("Players").Melvoledi.PlayerGui.MainGui.WeaponUI.MainFrame, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 0,1.02,-120)}):Play()
		end
	end
	--[[local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(game:GetService("CoreGui").RobloxGui.Backpack, transitionInfo, {Position = UDim2.new(0, 0,-0.060, 0)})
	tween:Play()]]
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Back)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Size = UDim2.new(0, 250,0, 44)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {BackgroundTransparency = 0.75})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextTransparency = 0.5})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 174, 33)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 174, 33)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(255, 174, 33)})
	tween:Play()
	for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
		if obj.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj, transitionInfo, {Size = UDim2.new(0, 26,0, 26)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Icon, transitionInfo, {Size = UDim2.new(0, 20,0, 20)})
			tween:Play()
			local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageTransparency = 0.4})
			tween:Play()
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(255, 174, 33)})
			tween:Play()
			wait(0.1)
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(255, 174, 33)})
			tween:Play()
			local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Transparency = 0.9})
			tween:Play()
		end
	end
end

local hotbar = game:GetService("CoreGui").RobloxGui.Backpack

local checkbar = false

if hotbar.Visible == true then
checkbar = true
elseif hotbar.Visible == false then
checkbar = false
end

local gamemenuopened = false

Domain.Main.MouseEnter:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or gamemenuopened or homeopen or jcopen then 
		return
	end
	PreviousElegance()
end)

GuiService.MenuOpened:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	PreviousElegance()
	gamemenuopened = true
	local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(5, 153, 86)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(5, 153, 86)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(5, 153, 86)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(5, 153, 86)})
	tween:Play()
	for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
		if obj.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(5, 153, 86)})
			tween:Play()
			wait(0.1)
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(5, 153, 86)})
			tween:Play()
		end
	end
end)

GuiService.MenuClosed:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	gamemenuopened = false
	local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(70, 70, 70)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
	tween:Play()
	for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
		if obj.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(238, 238, 238)})
			tween:Play()
			wait(0.1)
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(238, 238, 238)})
			tween:Play()
		end
	end
end)


-- Home

coroutine.wrap(function()
while true do
	wait(0.1)
Domain.Main.Buttons.HomeButton.Interact.MouseLeave:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	if gamemenuopened == false then
	TweenService:Create(Domain.Main.Buttons.HomeButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(238, 238, 238)}):Play()
	TweenService:Create(Domain.Main.Buttons.HomeButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(238, 238, 238)}):Play()
	elseif gamemenuopened == true then
	TweenService:Create(Domain.Main.Buttons.HomeButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(5, 153, 86)}):Play()
	TweenService:Create(Domain.Main.Buttons.HomeButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(5, 153, 86)}):Play()
	end
end)
end
end)()

Domain.Main.Buttons.HomeButton.Interact.MouseEnter:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	TweenService:Create(Domain.Main.Buttons.HomeButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(148, 0, 5)}):Play()
	wait(0.1)
	TweenService:Create(Domain.Main.Buttons.HomeButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(148, 0, 5)}):Play()
	
end)
--
coroutine.wrap(function()
	while true do
		wait(0.1)
Domain.Main.Buttons.JoinCodesButton.Interact.MouseLeave:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	if gamemenuopened == false then
	TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(238, 238, 238)}):Play()
	TweenService:Create(Domain.Main.Buttons.JoinCodesButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(238, 238, 238)}):Play()
	elseif gamemenuopened == true then
	TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(5, 153, 86)}):Play()
	TweenService:Create(Domain.Main.Buttons.JoinCodesButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(5, 153, 86)}):Play()
	end
end)
end
end)()

Domain.Main.Buttons.JoinCodesButton.Interact.MouseEnter:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	TweenService:Create(Domain.Main.Buttons.JoinCodesButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(41, 26, 255)}):Play()
	wait(0.1)
	TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(41, 26, 255)}):Play()
	
end)
--
coroutine.wrap(function()
	while true do
		wait(0.1)
Domain.Main.Buttons.PlayerButton.Interact.MouseLeave:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	if gamemenuopened == false then
	TweenService:Create(Domain.Main.Buttons.PlayerButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(238, 238, 238)}):Play()
	TweenService:Create(Domain.Main.Buttons.PlayerButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(238, 238, 238)}):Play()
	elseif gamemenuopened == true then
	TweenService:Create(Domain.Main.Buttons.PlayerButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(5, 153, 86)}):Play()
	TweenService:Create(Domain.Main.Buttons.PlayerButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(5, 153, 86)}):Play()
	end
end)
end
end)()

Domain.Main.Buttons.PlayerButton.Interact.MouseEnter:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	TweenService:Create(Domain.Main.Buttons.PlayerButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(175, 94, 1)}):Play()
	wait(0.1)
	TweenService:Create(Domain.Main.Buttons.PlayerButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(175, 94, 1)}):Play()
end)
--
coroutine.wrap(function()
	while true do
		wait(0.1)
Domain.Main.Buttons.PlayersButton.Interact.MouseLeave:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	if gamemenuopened == false then
	TweenService:Create(Domain.Main.Buttons.PlayersButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(238, 238, 238)}):Play()
	TweenService:Create(Domain.Main.Buttons.PlayersButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(238, 238, 238)}):Play()
	elseif gamemenuopened == true then
	TweenService:Create(Domain.Main.Buttons.PlayersButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(5, 153, 86)}):Play()
	TweenService:Create(Domain.Main.Buttons.PlayersButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(5, 153, 86)}):Play()
	end
end)
end
end)()

Domain.Main.Buttons.PlayersButton.Interact.MouseEnter:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	TweenService:Create(Domain.Main.Buttons.PlayersButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(20, 184, 17)}):Play()
	wait(0.1)
	TweenService:Create(Domain.Main.Buttons.PlayersButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(20, 184, 17)}):Play()
end)
--
coroutine.wrap(function()
	while true do
		wait(0.1)
Domain.Main.Buttons.ScriptsButton.Interact.MouseLeave:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	if gamemenuopened == false then
	TweenService:Create(Domain.Main.Buttons.ScriptsButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(238, 238, 238)}):Play()
	TweenService:Create(Domain.Main.Buttons.ScriptsButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(238, 238, 238)}):Play()
	elseif gamemenuopened == true then
	TweenService:Create(Domain.Main.Buttons.ScriptsButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(5, 153, 86)}):Play()
	TweenService:Create(Domain.Main.Buttons.ScriptsButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(5, 153, 86)}):Play()
	end
end)
end
end)()

Domain.Main.Buttons.ScriptsButton.Interact.MouseEnter:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	TweenService:Create(Domain.Main.Buttons.ScriptsButton.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Color = Color3.fromRGB(255, 209, 24)}):Play()
	wait(0.1)
	TweenService:Create(Domain.Main.Buttons.ScriptsButton.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageColor3 = Color3.fromRGB(255, 209, 24)}):Play()
end)

-- enter

Domain.Main.MouseLeave:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or gamemenuopened or homeopen or jcopen then 
		return
	end
	left = true
	wait(0.5)
	if not left then
		return
	end
	wait(0.5)
	if not left then
		return
	end
	wait(20)
	if not left then
		return
	end
	elegance()
end)

-- e

UserInputService.WindowFocusReleased:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or gamemenuopened or homeopen or jcopen then 
		return
	end
	left = true
	wait(0.1)
	if not left then
		return
	end
	wait(0.1)
	if not left then
		return
	end
	wait(5)
	if not left then
		return
	end
	elegance()
end)

UserInputService.WindowFocused:Connect(function()
	if scriptsopen or plrlistopen or plrconopen or homeopen or jcopen then 
		return
	end
	if not Domain:FindFirstChild("Main") then
		return
	end
	wait(0.1)
	if gamemenuopened == true then
		
	elseif gamemenuopened == false then
		PreviousElegance("b")
	end
end)

function Respawn()
	DomainLibrary:Notify({
		Title = "CloudzOS {GMN}",
		Content = "Hold on! Respawning Your Character",
		Duration = 6.5,
		Image = 4335476290,
	 }) 
	local Character = LocalPlayer.Character
	if Character:FindFirstChildOfClass("Humanoid") then 
		Character:FindFirstChildOfClass("Humanoid"):ChangeState(15) 
	end
	Character:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	LocalPlayer.Character = newChar
	wait()
	LocalPlayer.Character = Character
	newChar:Destroy()
end

function Unfly()
	Flying = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

function BeginFly()
	local Mouse = LocalPlayer:GetMouse()
	repeat wait() until LocalPlayer and LocalPlayer.Character and FindRootPart(LocalPlayer.Character) and LocalPlayer.Character:FindFirstChild('Humanoid')
	repeat wait() until Mouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = FindRootPart(LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function Flyv2()
		Flying = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
			repeat wait()
				if LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then

					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not Flying
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (PlayerFlySpeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (PlayerFlySpeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (PlayerFlySpeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (PlayerFlySpeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (PlayerFlySpeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(PlayerFlySpeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	Flyv2()
end

function Fly()
	Unfly()
	wait()
	BeginFly()
end


local Clip = true
local Noclipping
function NoClip()
	Clip = false
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and LocalPlayer.Character ~= nil then
			for _, child in pairs(LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = game:GetService('RunService').Stepped:Connect(NoclipLoop)
	Toast("Character NoClip enabled")
end

function ReClip()
	if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
	Toast("Character NoClip disabled")
end

function God()
	Toast("God Mode enabled - Respawn to disable")
	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, LocalPlayer.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, LocalPlayer.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	LocalPlayer.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
end

function Teleport(Player)
	if game.Players:FindFirstChild(Player.Name) then
		Toast("Attempting to teleport you to "..Player.Name)
		local targetplayer = game.Workspace:FindFirstChild(Player.Name).HumanoidRootPart
		LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(targetplayer.Position.X, targetplayer.Position.Y, targetplayer.Position.Z)
	else
		Toast(Player.Name.." has left the server")
	end
end

function ESP(Player)
	local plr = game:GetService("Workspace")
	local target = plr[Player.Name]
	local targett = target.Name
	if target then
		local a = Instance.new("BillboardGui",target)
		a.Size = UDim2.new(3,0, 3,0)
		a.Name = "A"
		a.AlwaysOnTop = true
		local b = Instance.new("Frame",a)
		b.Size = UDim2.new(1.3,0, 2,0)
		b.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		b.BackgroundTransparency = 0.4
		b.BorderSizePixel = 0
		local lol = Instance.new("UICorner",b)
		local c = Instance.new("TextLabel",b)
		c.Text = targett
		c.Size = UDim2.new(1,0, 1,0)
		c.Font = "GothamBold"
		c.TextColor3 = Color3.fromRGB(34, 34, 34)
		c.BackgroundTransparency = 1
		c.BorderSizePixel = 0
	end
end
function UnESP(Player)
	local plr = game:GetService("Workspace")
	local target = plr[Player.Name]
	local targett = target.Name
	if target then
		if target:FindFirstChildWhichIsA("BillboardGui") then
			target:FindFirstChildWhichIsA("BillboardGui"):Destroy()
		end
	end
end
function AddPlayer(Player)

	local template = Domain.Playerlist.List.Template
	if Domain.Playerlist.List:FindFirstChild(Player.Name) then
		return
	end
	if not Domain.Playerlist.List:FindFirstChild("Template") then
		return
	end
	local NewPlr = template:Clone()
	NewPlr.Parent = Domain.Playerlist.List
	if Player.Name == LocalPlayer.Name then
		NewPlr.SName.Font = "GothamBold"
	else 
		NewPlr.SName.Font = "GothamSemibold"
	end
	if Player.Name ~= "shlexius" and Player.name ~= "fvllex" then
		NewPlr.PremiumBar.Visible = false
	else 
		NewPlr.PremiumBar.Text.Text = "Developer"
		NewPlr.PremiumBar.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
	end
	if NewPlr:FindFirstChild("Avatar") then
		NewPlr.Avatar.Image = game.Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size60x60)
	end

	NewPlr.Size = UDim2.new(0.979, 0, 0.0103, 0)
	NewPlr.Visible = true
	NewPlr.Name = Player.Name
	if CurrentListPosition == 1 then 
		CurrentListPosition = 0
	else
		CurrentListPosition = CurrentListPosition + 0.3
	end
	NewPlr.ESP.ImageTransparency = 0.5
	NewPlr.SName.Text = Player.Name
	if Player.OsPlatform == "DomainX" then
		NewPlr.SName.Text = Player.Name.." - Using DomainX"
	end

	NewPlr.Kill.MouseButton1Click:Connect(function()
		Kill(Player)
	end)
	NewPlr.Teleport.MouseButton1Click:Connect(function()
		Teleport(Player)
	end)
	NewPlr.ESP.MouseButton1Click:Connect(function()
		if NewPlr.ESP.ImageTransparency == 0.5 then
			ESP(Player)
			NewPlr.ESP.ImageTransparency = 0
		else
			NewPlr.ESP.ImageTransparency = 0.5
			UnESP(Player)
		end
	end)
end

function OpenMain()
	db = true
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.KeybindNote, transitionInfo, {TextTransparency = 1})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.KeybindNote, transitionInfo, {TextStrokeTransparency = 1})
	tween:Play()
	for _, button in ipairs(Domain.Main.Buttons:GetChildren()) do
		if button.ClassName == "Frame" then
			button.BackgroundTransparency = 1
			button.Icon.ImageTransparency = 1
		end
	end
	Domain.Main.Time.Position = UDim2.new(-0.027, 0, 0.109, 0)
	Domain.Main.Time.AMPM.Position = UDim2.new(-0.023, 0, 0.273, 0)
	Domain.Main.BackgroundTransparency = 1
	Domain.Main.Time.TextTransparency = 1
	Domain.Main.Time.AMPM.TextTransparency = 1
	Domain.Main.Position = UDim2.new(0.5, 0, 1.25, 0)
	Domain.Main.Size = UDim2.new(0.271, 0,0.062, 0)
	Domain.Main.Visible = true

	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Position = UDim2.new(0.5, 0,1, -12)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Shadow, transitionInfo, {ImageTransparency = 0.5})
	tween:Play()
	wait(0.18)
	for _, GameID in pairs(KaijuParadise) do
		if GameID == game.PlaceId then
			TweenService:Create(game:GetService("Players").Melvoledi.PlayerGui.MainGui.InventoryGui, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 0,0.91,-70)}):Play()
			TweenService:Create(game:GetService("Players").Melvoledi.PlayerGui.MainGui.WeaponUI.MainFrame, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 0,1,-120)}):Play()
		end
	end
	--[[local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(game:GetService("CoreGui").RobloxGui.Backpack, transitionInfo, {Position = UDim2.new(0, 0,-0.070, 0)})
	tween:Play()]]
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Back)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Size = UDim2.new(0, 300,0, 55)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.81, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Position = UDim2.new(0.5, 0, 0.81, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Position = UDim2.new(0.5, 0, 0.81, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.788, 0)})
	tween:Play()

	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {Position = UDim2.new(-0.027, 0, 0.109, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {Position = UDim2.new(-0.023, 0, 0.273, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextTransparency = 0})
	tween:Play()
	if not homeopen and not homedb and not ExecutorAutomatic and workspace.CurrentCamera.FieldOfView ~= 70 then
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 70})
		tween:Play()
	end
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {BackgroundTransparency = 0.6})
	tween:Play()

	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
	wait(0.05)

	for _, button in ipairs(Domain.Main.Buttons:GetChildren()) do
		if button.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button.Icon, transitionInfo, {ImageTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button, transitionInfo, {Position = UDim2.new(button.Position.X.Scale, 0,0.5, 0)})
			tween:Play()
			wait(0.05)
		end
	end
	wait(0.95)
	db = false
	baropen = true
end

function CloseMain()
	db = true
	for _, button in ipairs(Domain.Main.Buttons:GetChildren()) do
		if button.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(button.Icon, transitionInfo, {ImageTransparency = 1})
			tween:Play()
		end
	end

	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	wait(0.01)
	local transitionInfo = TweenInfo.new(1.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Size = UDim2.new(0.271, 0,0.062, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Shadow, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	wait(0.03)
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main, transitionInfo, {Position = UDim2.new(0.5, 0, 1.10, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.8, 0)})
	tween:Play()

	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.9, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextTransparency = 1})
	tween:Play()
	for _, GameID in pairs(KaijuParadise) do
		if GameID == game.PlaceId then
			TweenService:Create(game:GetService("Players").Melvoledi.PlayerGui.MainGui.InventoryGui, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 0,1,-70)}):Play()
			TweenService:Create(game:GetService("Players").Melvoledi.PlayerGui.MainGui.WeaponUI.MainFrame, TweenInfo.new(1, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 0,1,-120)}):Play()
		end
	end
	--[[local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(game:GetService("CoreGui").RobloxGui.Backpack, transitionInfo, {Position = UDim2.new(0, 0,0, 0)})
	tween:Play()]]
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.79, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Position = UDim2.new(0.5, 0, 0.79, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Position = UDim2.new(0.5, 0, 0.79, 0)})
	tween:Play()
	wait(0.8)
	db = false
	baropen = false
end

function OpenPlayerConfig()
	db = true
	plrconopen = true
	if scriptsopen then
		CloseScripts()
		scriptsopen = false
	elseif plrlistopen then
		ClosePlayerlist()
		plrlistopen = false
	end
	if not ThemeEnabled then
		if checkbar then
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)
		else
		end
		coroutine.wrap(function()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(175, 94, 1)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(175, 94, 1)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(175, 94, 1)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(175, 94, 1)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(175, 94, 1)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(175, 94, 1)})
					tween:Play()
				end
			end
		--
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton.Selection, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton.Selection, transitionInfo, {Size = UDim2.new(0, 36,0, 2)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton.Selection, transitionInfo, {Position = UDim2.new(0, 0,1.145, 0)})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(175, 94, 1)})
		tween:Play()
		end)()
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.56, 0)})
	tween:Play()
	wait(0.05)
	Domain.Player.Size = UDim2.new(0.278,0,0.189,0)
	Domain.Player.Position = UDim2.new(0.5,0,0.81,0)
	Domain.Player.BackgroundTransparency = 1
	for _, o in ipairs(Domain.Player:GetDescendants()) do
		if o.ClassName == "Frame" and o.Name ~= "Divider" then
			o.BackgroundTransparency = 1
			if o:FindFirstChild("Action") then
				o.Action.Amount.BackgroundTransparency = 1	
			end
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" then
			o.TextTransparency = 1
		end
	end
	Domain.Player.Divider.Size = UDim2.new(0,0,0.007,0)
	Domain.Player.Visible = true
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Position = UDim2.new(0.5,0,0.81,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Size = UDim2.new(0.296,0,0.201,0)})
	tween:Play()
	wait(0.01)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.05)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player.Divider, transitionInfo, {Size = UDim2.new(1,0,0.007,0)})
	tween:Play()
	wait(0.1)
	for _, o in ipairs(Domain.Player:GetDescendants()) do
		if o.ClassName == "UIStroke" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {Transparency = 0})
			tween:Play()
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" then
			if o.Parent:FindFirstChild("Action") then
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 0.6})
				tween:Play()
			else
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 0})
				tween:Play()
			end
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			if o.Name == "Shadow" then
				local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 0.8})
				tween:Play()
			else
				local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 0})
				tween:Play()
			end

		end
		if o.ClassName == "Frame" and o.Name ~= "Divider" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			if o:FindFirstChild("Action") then
				local siz = o.Action.Amount.Size
				o.Action.Amount.Size = UDim2.new(0,0,1,0)
				local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.Action.Amount, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
				wait(0.01)
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.Action.Amount, transitionInfo, {Size = siz})
				tween:Play()
			end
			if o.ClassName ~= "UIStroke" then
				wait(0.001)
			end
		end
	end
	db = false
end

function ClosePlayerConfig()
	if checkbar then
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
		else
	end
	db = true
	plrconopen = false
	if not ThemeEnabled then
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
		coroutine.wrap(function()	
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(70, 70, 70)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(238, 238, 238)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(238, 238, 238)})
					tween:Play()
				end
			end
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton.Selection, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.1)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton.Selection, transitionInfo, {Size = UDim2.new(0, 24,0, 2)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton.Selection, transitionInfo, {Position = UDim2.new(0.167, 0,1.145, 0)})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
		tween:Play()
		end)()
	end
	for _, o in ipairs(Domain.Player:GetDescendants()) do
		if o.ClassName == "Frame" and o.Name ~= "Divider" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			if o:FindFirstChild("Action") then
				local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.Action.Amount, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			end
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 1})
			tween:Play()
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 1})
			tween:Play()
		end
		if o.ClassName == "UIStroke" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {Transparency = 1})
			tween:Play()
		end
	end
	wait(0.01)
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player.Divider, transitionInfo, {Size = UDim2.new(0,0,0.007,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Size = UDim2.new(0.271, 0, 0.184, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player, transitionInfo, {Position = UDim2.new(0.5,0,0.802,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.8, 0)})
	tween:Play()

	wait(0.3)
	Domain.Player.Visible = false
	db = false
end

function openuniversal()

    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    --
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    --
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    --
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    --
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()

    --
    wait(0.5)

    Domain.Scripts.Main.Visible = false
    Domain.Scripts.UniversalScripts.List.Position = UDim2.new(0,0,0.5,0)
    Domain.Scripts.UniversalScripts.List.ScrollBarImageTransparency = 1


    for _, AddedScript in ipairs(Domain.Scripts.UniversalScripts.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			AddedScript.BackgroundTransparency = 1
			AddedScript.UIStroke.Transparency = 1
			AddedScript.Border.BackgroundTransparency = 1
			AddedScript.Border.BorderAdd.BackgroundTransparency = 1
			AddedScript.Border.BorderAdd.BackgroundTransparency = 1
			AddedScript.Execute.BackgroundTransparency = 1
			AddedScript.Execute.UIStroke.Transparency = 1
			AddedScript.Thumbnail.ImageTransparency = 1
			AddedScript.Title.TextTransparency = 1
			AddedScript.Subtitle.TextTransparency = 1
		end
	end

    Domain.Scripts.UniversalScripts.Visible = true

    wait(0.1)

    local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.UniversalScripts.List, transitionInfo, {Position = UDim2.new(0,0,0.152,0)})
	tween:Play()
    
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.UniversalScripts.List, transitionInfo, {ScrollBarImageTransparency = 0})
	tween:Play()

    for _, AddedScript in ipairs(Domain.Scripts.UniversalScripts.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			wait(0.05)
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Title, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Thumbnail, transitionInfo, {ImageTransparency = 0.7})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Subtitle, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {BackgroundTransparency = 0.8})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {TextTransparency = 0})
			tween:Play()
			wait(0.05)
		end
	end

end

local blurlightS = nil

function OpenScripts()
	db = true
	if not ThemeEnabled then
		if checkbar then
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)
			else
		end
		coroutine.wrap(function()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(255, 209, 24)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 209, 24)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 209, 24)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 209, 24)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(255, 209, 24)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(255, 209, 24)})
					tween:Play()
				end
			end
		--
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton.Selection, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton.Selection, transitionInfo, {Size = UDim2.new(0, 36,0, 2)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton.Selection, transitionInfo, {Position = UDim2.new(0, 0,1.145, 0)})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 209, 24)})
		tween:Play()
		end)()
	end
	scriptsopen = true
	if plrlistopen then
		ClosePlayerlist()
		plrlistopen = false
	elseif plrconopen then
		ClosePlayerConfig()
		plrconopen = false
	end
	wait(0.1)
	Domain.Scripts.Main.Buttons.GameDetection.BackgroundTransparency = 1
	Domain.Scripts.Main.Buttons.GameDetection.UIStroke.Transparency = 1
	Domain.Scripts.Main.Buttons.GameDetection.Title.TextTransparency = 1
	Domain.Scripts.Main.Buttons.SiriusGameDetection.BackgroundTransparency = 1
	Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke.Transparency = 1
	Domain.Scripts.Main.Buttons.SiriusGameDetection.Title.TextTransparency = 1
	Domain.Scripts.Main.Buttons.Universal.BackgroundTransparency = 1
	Domain.Scripts.Main.Buttons.Universal.UIStroke.Transparency = 1
	Domain.Scripts.Main.Buttons.Universal.Title.TextTransparency = 1
	Domain.Scripts.Main.Buttons.Universal.Icon.ImageTransparency = 1
	Domain.Scripts.Main.Buttons.Games.BackgroundTransparency = 1
	Domain.Scripts.Main.Buttons.Games.UIStroke.Transparency = 1
	Domain.Scripts.Main.Buttons.Games.Title.TextTransparency = 1
	Domain.Scripts.Main.Buttons.Games.Subtitle.TextTransparency = 1
	Domain.Scripts.Main.Buttons.Games.Icon.ImageTransparency = 1
	Domain.Scripts.Main.Buttons.Library.BackgroundTransparency = 1
    Domain.Scripts.Main.Buttons.Library.UIStroke.Transparency = 1
	Domain.Scripts.Main.Buttons.Library.Title.TextTransparency = 1
	Domain.Scripts.Main.Buttons.Library.Subtitle.TextTransparency = 1
	Domain.Scripts.Main.Buttons.Library.Icon.ImageTransparency = 1
	Domain.Scripts.BackgroundTransparency = 1
	Domain.Scripts.UIStroke.Transparency = 1
	Domain.Scripts.UIStroke.Transparency = 1
    Domain.Scripts.Titlebar.BackgroundTransparency = 1
	Domain.Scripts.Titlebar.Title.TextTransparency = 1
	Domain.Scripts.Titlebar.Title.Text = "Main Page"
    Domain.Scripts.Titlebar.Icon.ImageTransparency = 1
	Domain.Scripts.undo.ImageTransparency = 1
	Domain.Scripts.Position = UDim2.new(0.5,0,0.81,0)
	Domain.Scripts.BackgroundTransparency = 1
	Domain.Scripts.Visible = true
	Domain.Scripts.Main.Visible = true
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {Position = UDim2.new(0.5,0,0.82,0)})
	tween:Play()
		blurlightS = nil
		if not getgenv().SecureMode then
			blurlightS = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
			blurlightS.Enabled = true
			blurlightS.FarIntensity = 0
			blurlightS.FocusDistance = 51.6
			blurlightS.InFocusRadius = 50
			blurlightS.NearIntensity = 1
			game:GetService("Debris"):AddItem(script,0)
		end
	if Domain.Name == "Domain" then
		neon:BindFrame(Domain.Scripts.BlurModule, {
			Transparency = 0.98;
			BrickColor = BrickColor.new("Institutional white");
		})
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.534, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Titlebar, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Titlebar.Frame, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    wait(0.5)
    local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Titlebar.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.undo, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Titlebar.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.01)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {BackgroundTransparency = 0.4})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	wait(0.6)

	db = false
end

universalopen = false

libraryopen = false

gamesopen = false

Domain.Scripts.Main.Buttons.Universal.Interact.MouseButton1Click:Connect(function()
	if scriptsopen then
		universalopen = true
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()

	--
	wait(0.5)

	Domain.Scripts.Main.Visible = false
	Domain.Scripts.UniversalScripts.List.Position = UDim2.new(0,0,0.5,0)
	Domain.Scripts.UniversalScripts.List.ScrollBarImageTransparency = 1


	for _, AddedScript in ipairs(Domain.Scripts.UniversalScripts.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			AddedScript.BackgroundTransparency = 1
			AddedScript.UIStroke.Transparency = 1
			AddedScript.Border.BackgroundTransparency = 1
			AddedScript.Border.BorderAdd.BackgroundTransparency = 1
			AddedScript.Border.BorderAdd.BackgroundTransparency = 1
			AddedScript.Execute.BackgroundTransparency = 1
			AddedScript.Execute.UIStroke.Transparency = 1
			AddedScript.Thumbnail.ImageTransparency = 1
			AddedScript.Title.TextTransparency = 1
			AddedScript.Subtitle.TextTransparency = 1
		end
	end

	Domain.Scripts.UniversalScripts.Visible = true
	Domain.Scripts.Titlebar.Title.Text = "Universal Scripts"
	wait(0.1)

	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.UniversalScripts.List, transitionInfo, {Position = UDim2.new(0,0,0.152,0)})
	tween:Play()
	
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.UniversalScripts.List, transitionInfo, {ScrollBarImageTransparency = 0})
	tween:Play()

	for _, AddedScript in ipairs(Domain.Scripts.UniversalScripts.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			wait(0.05)
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Title, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Thumbnail, transitionInfo, {ImageTransparency = 0.7})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Subtitle, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {BackgroundTransparency = 0.8})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {TextTransparency = 0})
			tween:Play()
			wait(0.05)
		end
	end
else
	return
end
end)

--

Domain.Scripts.Main.Buttons.Games.Interact.MouseButton1Click:Connect(function()
	if scriptsopen then
		gamesopen = true
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()

	--
	wait(0.5)

	Domain.Scripts.Main.Visible = false
	Domain.Scripts.Games.List.Position = UDim2.new(0,0,0.5,0)
	Domain.Scripts.Games.List.ScrollBarImageTransparency = 1

	for _, AddedScript in ipairs(Domain.Scripts.Games.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			AddedScript.BackgroundTransparency = 1
			AddedScript.UIStroke.Transparency = 1
			AddedScript.Border.BackgroundTransparency = 1
			AddedScript.Border.BorderAdd.BackgroundTransparency = 1
			AddedScript.Border.BorderAdd.BackgroundTransparency = 1
			AddedScript.Execute.BackgroundTransparency = 1
			AddedScript.Execute.UIStroke.Transparency = 1
			AddedScript.Execute.TextTransparency = 1
			AddedScript.Thumbnail.ImageTransparency = 1
			AddedScript.GameIcon.ImageTransparency = 1
			AddedScript.Title.TextTransparency = 1
		end
	end

	Domain.Scripts.Games.Visible = true
	Domain.Scripts.Titlebar.Title.Text = "Favorite Games"
	wait(0.1)

	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Games.List, transitionInfo, {Position = UDim2.new(0,0,0.152,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Games.List, transitionInfo, {ScrollBarImageTransparency = 0})
	tween:Play()

	for _, AddedGame in ipairs(Domain.Scripts.Games.List:GetChildren()) do
		if AddedGame:IsA("Frame") and AddedGame.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.Border, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			wait(0.05)
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.Title, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.Thumbnail, transitionInfo, {ImageTransparency = 0.7})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.GameIcon, transitionInfo, {ImageTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.Execute, transitionInfo, {BackgroundTransparency = 0.8})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.Execute.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedGame.Execute, transitionInfo, {TextTransparency = 0})
			tween:Play()
			wait(0.05)
		end
	end
else
	return
end
end)

Domain.Scripts.Main.Buttons.Library.Interact.MouseButton1Click:Connect(function()
	if scriptsopen then
		libraryopen = true
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	--
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()

	--
	wait(0.5)

	Domain.Scripts.Main.Visible = false
	Domain.Scripts.Library.List.Position = UDim2.new(0,0,0.5,0)
	Domain.Scripts.Library.List.ScrollBarImageTransparency = 1

	for _, AddedScript in ipairs(Domain.Scripts.Library.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			AddedScript.BackgroundTransparency = 1
			AddedScript.UIStroke.Transparency = 1
			AddedScript.Border.BackgroundTransparency = 1
			AddedScript.Border.BorderAdd.BackgroundTransparency = 1
			AddedScript.Border.BorderAdd.BackgroundTransparency = 1
			AddedScript.Execute.BackgroundTransparency = 1
			AddedScript.Execute.UIStroke.Transparency = 1
			AddedScript.GameIcon.BackgroundTransparency = 1
			AddedScript.GameIcon.ImageTransparency = 1
			AddedScript.GameIcon.UIStroke.Transparency = 1
			AddedScript.GameIcon.Title.TextTransparency = 1
			AddedScript.GameIcon.Title.Position = UDim2.new(-0.7,0,0.5,0)
			AddedScript.Thumbnail.ImageTransparency = 1
			AddedScript.Title.TextTransparency = 1
			AddedScript.Subtitle.TextTransparency = 1
		end
	end

	Domain.Scripts.Library.Visible = true
	Domain.Scripts.Titlebar.Title.Text = "Scripts Library"
	wait(0.1)

	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Library.List, transitionInfo, {Position = UDim2.new(0,0,0.152,0)})
	tween:Play()
	
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Library.List, transitionInfo, {ScrollBarImageTransparency = 0})
	tween:Play()

	for _, AddedScript in ipairs(Domain.Scripts.Library.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			wait(0.05)
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Title, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Thumbnail, transitionInfo, {ImageTransparency = 0.7})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Subtitle, transitionInfo, {TextTransparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {BackgroundTransparency = 0.8})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {TextTransparency = 0})
			tween:Play()
			--
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.GameIcon.UIStroke, transitionInfo, {Transparency = 0})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.GameIcon, transitionInfo, {ImageTransparency = 0})
			tween:Play()
			wait(0.05)
		end
	end
else
	return
end
end)

Domain.Scripts.undo.MouseButton1Click:Connect(function()
	Domain.Scripts.Titlebar.Title.Text = "Main Page"
if universalopen then
	for _, AddedScript in ipairs(Domain.Scripts.UniversalScripts.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Title, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Thumbnail, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Subtitle, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {TextTransparency = 1})
			tween:Play()
		end
	end
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.UniversalScripts.List, transitionInfo, {ScrollBarImageTransparency = 1})
	tween:Play()
	wait(0.8)
	Domain.Scripts.UniversalScripts.Visible = false
	Domain.Scripts.Main.Visible = true
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	wait(0.6)
	universalopen = false
elseif libraryopen then
	for _, AddedScript in ipairs(Domain.Scripts.Library.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Title, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Thumbnail, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Subtitle, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.GameIcon.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.GameIcon, transitionInfo, {ImageTransparency = 1})
			tween:Play()
		end
	end
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Library.List, transitionInfo, {ScrollBarImageTransparency = 1})
	tween:Play()
	wait(0.8)
	Domain.Scripts.Library.Visible = false
	Domain.Scripts.Main.Visible = true
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	wait(0.6)
	libraryopen = false
elseif gamesopen then
	for _, AddedScript in ipairs(Domain.Scripts.Games.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Title, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Thumbnail, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.GameIcon, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {TextTransparency = 1})
			tween:Play()
		end
	end
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Games.List, transitionInfo, {ScrollBarImageTransparency = 1})
	tween:Play()
	wait(0.8)
	Domain.Scripts.Games.Visible = false
	Domain.Scripts.Main.Visible = true
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	wait(0.6)
	Gamesopen = false
	end
end)

function CloseScripts()
	db = true
	if not ThemeEnabled then
		if checkbar then
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
			else
		end
		coroutine.wrap(function()	
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(70, 70, 70)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(238, 238, 238)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(238, 238, 238)})
					tween:Play()
				end
			end
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton.Selection, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.1)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton.Selection, transitionInfo, {Size = UDim2.new(0, 24,0, 2)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton.Selection, transitionInfo, {Position = UDim2.new(0.167, 0,1.145, 0)})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255,255,255)})
		tween:Play()
		end)()
	end
	
	if EmoteToggle == true then
		game:GetService("CoreGui").RobloxGui.EmotesMenu.Main.EmotesWheel.Visible = false
		EmoteToggle = false
	end

	Domain.Scripts.Titlebar.Title.Text = "Main Page"
if universalopen then
	for _, AddedScript in ipairs(Domain.Scripts.UniversalScripts.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Title, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Thumbnail, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Subtitle, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {TextTransparency = 1})
			tween:Play()
		end
	end
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.UniversalScripts.List, transitionInfo, {ScrollBarImageTransparency = 1})
	tween:Play()
	Domain.Scripts.UniversalScripts.Visible = false
	Domain.Scripts.Main.Visible = true
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	universalopen = false
elseif libraryopen then
	for _, AddedScript in ipairs(Domain.Scripts.Library.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Title, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Thumbnail, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Subtitle, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.GameIcon.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.GameIcon, transitionInfo, {ImageTransparency = 1})
			tween:Play()
		end
	end
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Library.List, transitionInfo, {ScrollBarImageTransparency = 1})
	tween:Play()
	Domain.Scripts.Library.Visible = false
	Domain.Scripts.Main.Visible = true
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	libraryopen = false
elseif gamesopen then
	for _, AddedScript in ipairs(Domain.Scripts.Games.List:GetChildren()) do
		if AddedScript:IsA("Frame") and AddedScript.Name ~= "Template" then
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Border.BorderAdd2, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Title, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Thumbnail, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.GameIcon, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
            local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute.UIStroke, transitionInfo, {Transparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(AddedScript.Execute, transitionInfo, {TextTransparency = 1})
			tween:Play()
		end
	end
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Games.List, transitionInfo, {ScrollBarImageTransparency = 1})
	tween:Play()
	Domain.Scripts.Games.Visible = false
	Domain.Scripts.Main.Visible = true
	local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	Gamesopen = false
	else
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.GameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.SiriusGameDetection.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Universal.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Games.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    wait(0.1)
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Subtitle, transitionInfo, {TextTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Main.Buttons.Library.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	end
	scriptsopen = false
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	if not getgenv().SecureMode then
		neon:UnbindFrame(Domain.Scripts.BlurModule)
	end
	blurlightS:Destroy()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Titlebar, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Titlebar.Frame, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Titlebar.Icon, transitionInfo, {ImageTransparency = 1})
	tween:Play()
    local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.undo, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts.Titlebar.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Scripts, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.8, 0)})
	tween:Play()
	wait(0.8)
	Domain.Scripts.Visible = false
	db = false
end


function CloseJC()
	db = true
	if not ThemeEnabled then
		coroutine.wrap(function()	
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(70, 70, 70)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(238, 238, 238)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(238, 238, 238)})
					tween:Play()
				end
			end
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
			wait(0.1)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {Size = UDim2.new(0, 24,0, 2)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {Position = UDim2.new(0.167, 0,1.145, 0)})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
		tween:Play()
		end)()
	end


	for _, o in ipairs(Domain.Settings:GetDescendants()) do
		if o.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" or o.ClassName == "TextBox" then
			local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 1})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 1})
			tween:Play()
		end
	end
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings, transitionInfo, {Size = UDim2.new(0.22, 0, 0.207, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	wait(0.8)
	jcopen = false
	db = false
end

function CloseJC1()
	db = true
	if not ThemeEnabled then
		coroutine.wrap(function()	
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(70, 70, 70)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(238, 238, 238)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(238, 238, 238)})
					tween:Play()
				end
			end
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
			wait(0.1)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {Size = UDim2.new(0, 24,0, 2)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {Position = UDim2.new(0.167, 0,1.145, 0)})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
		tween:Play()
		end)()
	end
	Domain.Settings.Divider.Size = UDim2.new(1,0,0.002,0)
	Domain.Settings.Divider1.Size = UDim2.new(1,0,0.003,0)
	Domain.Settings.Divider2.Size = UDim2.new(1,0,0.002,0)
	Domain.Settings.Divider3.Size = UDim2.new(1,0,0.002,0)
	jcopen = true
	Domain.Settings.Size = UDim2.new(0.169, 0, 0.382, 0)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Buttons, transitionInfo, {Size = UDim2.new(0, 221, 0, 59)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Buttons, transitionInfo, {Position = UDim2.new(0.155, 0, 0.822, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Buttons, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Divider, transitionInfo, {Size = UDim2.new(0,0,0.002,0)})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Divider1, transitionInfo, {Size = UDim2.new(0,0,0.003,0)})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Divider3, transitionInfo, {Size = UDim2.new(0,0,0.002,0)})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Divider2, transitionInfo, {Size = UDim2.new(0,0,0.002,0)})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint) 
	local tween = TweenService:Create(Domain.Settings, transitionInfo, {Size = UDim2.new(0.160, 0, 0.207, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	for _, o in ipairs(Domain.Settings:GetDescendants()) do
		if o.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" or o.ClassName == "TextBox" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 1})
			tween:Play()
			if o.Name == "CloudzOS" then
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.UIStroke, transitionInfo, {Transparency = 1})
				tween:Play()
			end
			if o.Name == "Sirius" then
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.UIStroke, transitionInfo, {Transparency = 1})
				tween:Play()
			end
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 1})
			tween:Play()
		end
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	wait(1)
	Domain.Settings.Visible = false
	jcopen = false
	db = false
end

function OpenPlayerlist()
	db = true
	if not ThemeEnabled then
		if checkbar then
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,false)
			else
		end
		coroutine.wrap(function()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(20, 184, 17)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(20, 184, 17)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(20, 184, 17)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(20, 184, 17)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(20, 184, 17)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(20, 184, 17)})
					tween:Play()
				end
			end
		--
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton.Selection, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton.Selection, transitionInfo, {Size = UDim2.new(0, 36,0, 2)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton.Selection, transitionInfo, {Position = UDim2.new(0, 0,1.145, 0)})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(20, 184, 17)})
		tween:Play()
		end)()
	end
	plrlistopen = true
	if scriptsopen then
		CloseScripts()
		scriptsopen = false
	elseif plrconopen then
		ClosePlayerConfig()
		plrconopen = false
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.56, 0)})
	tween:Play()

	for _, plrframe in ipairs(Domain.Playerlist.List:GetChildren()) do
		if plrframe.ClassName == "Frame" and plrframe.Name ~= "Template" then
			plrframe.BackgroundTransparency = 1
			plrframe.SName.TextTransparency = 1
			if plrframe:FindFirstChild("Avatar") then
				plrframe.Avatar.ImageTransparency = 1
				plrframe.Avatar.BackgroundTransparency = 1
			end
			plrframe.ESP.Visible = false
			plrframe.Kill.ImageTransparency = 1
			plrframe.Teleport.ImageTransparency = 1
			plrframe.ButtonBG.BackgroundTransparency = 1
			plrframe.PremiumBar.BackgroundTransparency = 1
			plrframe.PremiumBar.Text.TextTransparency = 1
			plrframe.UIStroke.Transparency = 1
		end
	end
	wait(0.1)
	Domain.Playerlist.Search.Visible = false
	Domain.Playerlist.Title.TextTransparency = 1
	Domain.Playerlist.Size = UDim2.new(0.278,0,0.189,0)
	Domain.Playerlist.Position = UDim2.new(0.5,0,0.81,0)
	Domain.Playerlist.BackgroundTransparency = 1
	Domain.Playerlist.Divider.Size = UDim2.new(0,0,0.007,0)
	Domain.Playerlist.Visible = true
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Position = UDim2.new(0.5,0,0.81,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Size = UDim2.new(0.296,0,0.201,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Shadow, transitionInfo, {ImageTransparency = 0.8})
	tween:Play()
	wait(0.01)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Divider, transitionInfo, {Size = UDim2.new(1,0,0.007,0)})
	tween:Play()
	wait(0.2)

	for _, plrframe in ipairs(Domain.Playerlist.List:GetChildren()) do
		if plrframe.ClassName == "Frame" and plrframe.Name ~= "Template" and plrframe then
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(plrframe, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			wait(0.02)
			if plrframe:FindFirstChild("Avatar") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Avatar, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Avatar, transitionInfo, {ImageTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("SName") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.SName, transitionInfo, {TextTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("ButtonBG") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.ButtonBG, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("Kill") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Kill, transitionInfo, {ImageTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("ESP") then
				plrframe.ESP.Visible = true
			end
			if plrframe:FindFirstChild("Teleport") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Teleport, transitionInfo, {ImageTransparency = 0})
				tween:Play()
			end
			if plrframe:FindFirstChild("PremiumBar") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.PremiumBar, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()

				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.PremiumBar.Text, transitionInfo, {TextTransparency = 0})
				tween:Play()
			end
			wait(0.005)
			if plrframe:FindFirstChild("UIStroke") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.UIStroke, transitionInfo, {Transparency = 0})
				tween:Play()
			end
		end
	end
	wait(0.5)
	Domain.Playerlist.Visible = true
	db = false
end

function PromptPremium()
	if UserIsPremium then
		return
	end
	local cl = false
	Domain.Premium.Size = UDim2.new(0.222, 0, 0.19, 0)
	Domain.Premium.Position = UDim2.new(0.5, 0, 0.53, 0)
	Domain.Premium.UIGradient.Offset = Vector2.new(1,0)
	Domain.Premium.BackgroundTransparency = 1
	Domain.Premium.Dollars.Text = Price
	Domain.Premium.UIStroke.Transparency = 1
	Domain.Premium.Exit.ImageTransparency = 1
	Domain.Premium.Title.TextTransparency = 1
	Domain.Premium.Description.TextTransparency = 1
	Domain.Premium.Shadow.ImageTransparency = 1
	Domain.Premium.Purchase.BackgroundTransparency = 1
	Domain.Premium.Purchase.TextTransparency = 1
	Domain.Premium.Purchase.UIStroke.Transparency = 1
	Domain.Premium.FeaturesTitle.TextTransparency = 1
	Domain.Premium.Dollars.TextTransparency = 1
	Domain.Premium.Robux.TextTransparency = 1
	for _, f in ipairs(Domain.Premium.Features:GetChildren()) do
		if f.ClassName == "TextLabel" then
			f.TextTransparency = 1
		end
	end
	Domain.Premium.Visible = true

	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium, transitionInfo, {Position = UDim2.new(0.5, 0, 0.5, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Shadow, transitionInfo, {ImageTransparency = 0.9})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium, transitionInfo, {Size = UDim2.new(0.242, 0, 0.207, 0)})
	tween:Play()
	wait(1)
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.UIGradient, transitionInfo, {Offset = Vector2.new(0,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Description, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.4)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.FeaturesTitle, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.15)
	for _, f in ipairs(Domain.Premium.Features:GetChildren()) do
		if f.ClassName == "TextLabel" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(f, transitionInfo, {TextTransparency = 0})
			tween:Play()
			wait(0.1)
		end
	end
	wait(0.5)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Dollars, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Robux, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.5)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Purchase.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
	wait(0.5)
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Premium.Exit, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	Domain.Premium.Purchase.AutoButtonColor = false
	Domain.Premium.Purchase.MouseEnter:Connect(function()
		if cl then
			return
		end
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Size = UDim2.new(0.313,0,0.174,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Position = UDim2.new(0.796,0,0.862,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {BackgroundTransparency = 0.4})
		tween:Play()
		wait(0.1)
		Domain.Premium.Purchase.Text = "Join Discord"
	end)
	Domain.Premium.Purchase.MouseLeave:Connect(function()
		if cl then
			return
		end
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Size = UDim2.new(0.233,0,0.174,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Position = UDim2.new(0.856,0,0.862,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.1)
		Domain.Premium.Purchase.Text = "Purchase"
	end)

	Domain.Premium.Exit.MouseButton1Click:Connect(function()
		cl = true
		for _, obj in ipairs(Domain.Premium:GetDescendants()) do
			if obj.ClassName == "Frame" or obj.ClassName == "TextButton" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "ImageButton" or obj.ClassName == "ImageLabel" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "UIStroke" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {Transparency = 1})
				tween:Play()
			end
		end
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.51)
		Domain.Premium.Purchase.Text = "Purchase"
		Domain.Premium.Visible = false
	end)

	Domain.Premium.Purchase.MouseButton1Click:Connect(function()
		cl = true
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Size = UDim2.new(0.233,0,0.174,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {Position = UDim2.new(0.856,0,0.862,0)})
		tween:Play()
		wait(0.1)
		Domain.Premium.Purchase.Text = "Working.."
		local HttpService = game:GetService("HttpService")
		local RequestEnabled = (syn and syn.request) or (http and http.request) or http_request
		if RequestEnabled then
			RequestEnabled({
				Url = 'http://127.0.0.1:6463/rpc?v=1',
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json',
					Origin = 'https://discord.com'
				},
				Body = HttpService:JSONEncode({
					cmd = 'INVITE_BROWSER',
					nonce = HttpService:GenerateGUID(false),
					args = {code = DiscordLink2}
				})
			})
		end
		Domain.Premium.Purchase.Text = "Joined!"
		wait(0.5)
		for _, obj in ipairs(Domain.Premium:GetDescendants()) do
			if obj.ClassName == "Frame" or obj.ClassName == "TextButton" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "ImageButton" or obj.ClassName == "ImageLabel" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "UIStroke" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {Transparency = 1})
				tween:Play()
			end
		end
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium.Purchase, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Premium, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		wait(0.51)
		Domain.Premium.Purchase.Text = "Purchase"
		Domain.Premium.Visible = false
	end)
end

function ClosePlayerlist()
	db = true
	if not ThemeEnabled then
		if checkbar then
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
			else
		end
		coroutine.wrap(function()	
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(70, 70, 70)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(238, 238, 238)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(238, 238, 238)})
					tween:Play()
				end
			end
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton.Selection, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
			wait(0.1)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton.Selection, transitionInfo, {Size = UDim2.new(0, 24,0, 2)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton.Selection, transitionInfo, {Position = UDim2.new(0.167, 0,1.145, 0)})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
		tween:Play()
		end)()
	end
	plrlistopen = false
	local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	for _, plrframe in ipairs(Domain.Playerlist.List:GetChildren()) do
		if plrframe.ClassName == "Frame" and plrframe.Name ~= "Template" and plrframe then

			if plrframe:FindFirstChild("Avatar") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Avatar, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Avatar, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("SName") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.SName, transitionInfo, {TextTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("ButtonBG") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.ButtonBG, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("Kill") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Kill, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("ESP") then
				plrframe.ESP.Visible = false
			end
			if plrframe:FindFirstChild("Teleport") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.Teleport, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("Teleport") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.UIStroke, transitionInfo, {Transparency = 1})
				tween:Play()
			end
			if plrframe:FindFirstChild("PremiumBar") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.PremiumBar, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(plrframe.PremiumBar.Text, transitionInfo, {TextTransparency = 1})
				tween:Play()
			end
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(plrframe, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()

		end
	end

	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Shadow, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist.Divider, transitionInfo, {Size = UDim2.new(0,0,0.007,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Size = UDim2.new(0.271, 0, 0.184, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Playerlist, transitionInfo, {Position = UDim2.new(0.5,0,0.802,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Toasts, transitionInfo, {Position = UDim2.new(0.5, 0, 0.8, 0)})
	tween:Play()

	wait(0.4)
	Domain.Playerlist.Visible = false
	db = false
end

function StartPopUpFramework()
	if DMNReady then
		for _, button in ipairs(Domain.Player:GetChildren()) do
			if button:FindFirstChild("Interact") then
				button.Interact.MouseEnter:Connect(function()
					button.Popup.Visible = true
					button.Popup.BackgroundTransparency = 1
					button.Popup.Pointer.ImageTransparency = 1
					button.Popup.Title.TextTransparency = 1
					button.Popup.Pointer.ImageColor3 = button.Popup.BackgroundColor3
					local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup, transitionInfo, {BackgroundTransparency = 0})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup.Pointer, transitionInfo, {ImageTransparency = 0})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup.Title, transitionInfo, {TextTransparency = 0})
					tween:Play()
				end)
				button.Interact.MouseLeave:Connect(function()
					local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup, transitionInfo, {BackgroundTransparency = 1})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup.Pointer, transitionInfo, {ImageTransparency = 1})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(button.Popup.Title, transitionInfo, {TextTransparency = 1})
					tween:Play()
					wait(0.2)
					button.Popup.Visible = false
				end)
			end
		end
	end
end

function OpenHome()
	if not homedb and DMNReady then
		if jcopen then
			CloseJC1()
		end
		if not ThemeEnabled then
			if checkbar then
				game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
				else
			end
			coroutine.wrap(function()	
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(148, 0, 5)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(148, 0, 5)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(148, 0, 5)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(148, 0, 5)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(148, 0, 5)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(148, 0, 5)})
					tween:Play()
				end
			end
			--
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Buttons.HomeButton.Selection, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
			wait(0.2)
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
			local tween = TweenService:Create(Domain.Main.Buttons.HomeButton.Selection, transitionInfo, {Size = UDim2.new(0, 36,0, 2)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
			local tween = TweenService:Create(Domain.Main.Buttons.HomeButton.Selection, transitionInfo, {Position = UDim2.new(0, 0,1.145, 0)})
			tween:Play()
			wait(0.2)
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Buttons.HomeButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(148, 0, 5)})
			tween:Play()
			--
			end)()
		end
		homedb = true
		homeopen = true
		local blur = Instance.new("BlurEffect",game.Lighting)
		blur.Name = "DomainBlur"
		blur.Size = 0
		Domain.Home.Shadow.ImageTransparency = 1
		Domain.Home.Welcome.TextTransparency = 1
		Domain.Home.WelcomeSub.TextTransparency = 1
		-- CAMERA
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(game.Lighting:FindFirstChild("DomainBlur"), transitionInfo, {Size = 24})
		tween:Play()
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 40})
		tween:Play()
		-- PLAYERGUI
		for _, gui in ipairs(LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):GetChildren()) do
			if gui:IsA("ScreenGui") then
				if gui.Enabled then
					if not table.find(CachedUI,gui.Name) then
						table.insert(CachedUI,#CachedUI+1,gui.Name)
					end
					gui.Enabled = false
				end
			end
		end
		-- AUDIO
		for _, audio in ipairs(workspace:GetChildren()) do
			if audio.ClassName == "Sound" then
				local EQ = Instance.new("EqualizerSoundEffect")
				EQ.Parent = audio
				EQ.Name = "DomainEditorialEffect"
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = game:GetService("TweenService"):Create(EQ, transitionInfo, {HighGain = -20})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = game:GetService("TweenService"):Create(EQ, transitionInfo, {LowGain = 5})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = game:GetService("TweenService"):Create(EQ, transitionInfo, {MidGain = -20})
				tween:Play()
			end
		end
		-- CoreGUI
		table.clear(cachedcoreguis)
		for _, coregui in pairs(coreguis) do
			if game:GetService("StarterGui"):GetCoreGuiEnabled(coregui) then
				table.insert(cachedcoreguis,#cachedcoreguis,coregui)
			end
		end
		for _, coregui in pairs(cachedcoreguis) do
			game:GetService("StarterGui"):SetCoreGuiEnabled(coregui,false)
		end
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		-- NOTIFICATION

		if NotifSettings == nil then
			Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Notifications, transitionInfo, {Position = UDim2.new(1, -25, 0.6, -25)})
			tween:Play()
		elseif NotifSettings == "Bottom" then
			Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Notifications, transitionInfo, {Position = UDim2.new(1, -25, 0.8, -25)})
			tween:Play()
		elseif NotifSettings == "Top" then
			Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Notifications, transitionInfo, {Position = UDim2.new(1, -25, 0.6, -25)})
			tween:Play()
		end

		-- Discord
		Domain.Home.Discord.BackgroundTransparency = 1
		Domain.Home.Discord.Title.TextTransparency = 1
		Domain.Home.Discord.Info.TextTransparency = 1
		Domain.Home.Discord.Icon.ImageTransparency = 1
		Domain.Home.Discord.Copyframe.BackgroundTransparency = 1
		Domain.Home.Discord.Copyframe.Copy.ImageTransparency = 1
		Domain.Home.Discord.Size = UDim2.new(0.157, 0, 0.137, 0)
		Domain.Home.Discord.Position = UDim2.new(0.013,0,0.165,0)
		-- Friends
		Domain.Home.Friends.BackgroundTransparency = 1
		Domain.Home.Friends.Icon.ImageTransparency = 1
		Domain.Home.Friends.Info.TextTransparency = 1
		Domain.Home.Friends.Title.TextTransparency = 1
		Domain.Home.Friends.Online.BackgroundTransparency = 1
		Domain.Home.Friends.Online.Icon.ImageTransparency = 1
		Domain.Home.Friends.Online.FriendsOnline.TextTransparency = 1
		Domain.Home.Friends.Online.Title.TextTransparency = 1
		Domain.Home.Friends.Offline.BackgroundTransparency = 1
		Domain.Home.Friends.Offline.Icon.ImageTransparency = 1
		Domain.Home.Friends.Offline.FriendsOffline.TextTransparency = 1
		Domain.Home.Friends.Offline.Title.TextTransparency = 1
		Domain.Home.Friends.InServer.BackgroundTransparency = 1
		Domain.Home.Friends.InServer.Icon.ImageTransparency = 1
		Domain.Home.Friends.InServer.FriendsInGame.TextTransparency = 1
		Domain.Home.Friends.InServer.Title.TextTransparency = 1
		Domain.Home.Friends.All.BackgroundTransparency = 1
		Domain.Home.Friends.All.Icon.ImageTransparency = 1
		Domain.Home.Friends.All.FriendsAll.TextTransparency = 1
		Domain.Home.Friends.All.Title.TextTransparency = 1
		Domain.Home.Friends.Size = UDim2.new(0.224, 0, 0.199, 0)
		Domain.Home.Friends.Position = UDim2.new(0.165,0,0.163,0)
		-- Data
		Domain.Home.Data.BackgroundTransparency = 1
		Domain.Home.Data.Title.TextTransparency = 1
		Domain.Home.Data.Info.TextTransparency = 1
		for _, txt in ipairs(Domain.Home.Data.data:GetChildren()) do
			if txt.Name ~= "UIListLayout" then
				txt.TextTransparency = 1
				txt.RichText = true
			end
		end
		Domain.Home.Data.Size = UDim2.new(0.153, 0, 0.315, 0)
		Domain.Home.Data.Position = UDim2.new(0.017,0,0.302,0)
		-- Music, ControlPanel and FPS
		Domain.Home.ControlPanel.BackgroundTransparency = 1
		Domain.Home.ControlPanel.Buttons.Lighting.BackgroundTransparency = 1
		Domain.Home.ControlPanel.Buttons.Notification.BackgroundTransparency = 1
		Domain.Home.ControlPanel.Buttons.Power.BackgroundTransparency = 1
		Domain.Home.ControlPanel.Buttons.Lighting.Interact.ImageTransparency = 1
		Domain.Home.ControlPanel.Buttons.Notification.Interact.ImageTransparency = 1
		Domain.Home.ControlPanel.Buttons.Power.Interact.ImageTransparency = 1


		for _, mitem in ipairs(Domain.Home.Music:GetDescendants()) do
			if mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") then
				mitem.ImageTransparency = 1
			elseif mitem:IsA("TextButton") or mitem:IsA("TextLabel") or mitem:IsA("TextBox") then
				mitem.TextTransparency = 1
			elseif mitem:IsA("Frame") or mitem:IsA("TextLabel") or mitem:IsA("TextButton") or mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") or mitem:IsA("TextBox") then
				mitem.BackgroundTransparency = 1
			end
		end
		-- User
		Domain.Home.User.BackgroundTransparency = 1
		Domain.Home.User.BigTitle.TextTransparency = 1
		Domain.Home.User.Title.TextTransparency = 1
		Domain.Home.User.Avatar.ImageTransparency = 1
		Domain.Home.User.Avatar.BackgroundTransparency = 1
		Domain.Home.User.Size = UDim2.new(0.157, 0, 0.099, 0)
		Domain.Home.User.Position = UDim2.new(0.166,0,0.361,0)
		-- Keybind
		Domain.Home.Keybind.BackgroundTransparency = 1
		Domain.Home.Keybind.KeyBG.BackgroundTransparency = 1
		Domain.Home.Keybind.Title.TextTransparency = 1
		Domain.Home.Keybind.Info.TextTransparency = 1
		Domain.Home.Keybind.KeyBG.KeyBox.TextTransparency = 1
		Domain.Home.Keybind.Size = UDim2.new(0.132, 0, 0.09, 0)
		Domain.Home.Keybind.Position = UDim2.new(0.167,0,0.458,0)
		-- Wallpaper
		Domain.Home.WallpaperManage.BackgroundTransparency = 1
		Domain.Home.WallpaperManage.WBG.BackgroundTransparency = 1
		Domain.Home.WallpaperManage.Title.TextTransparency = 1
		Domain.Home.WallpaperManage.Info.TextTransparency = 1
		Domain.Home.WallpaperManage.WBG.WBox.TextTransparency = 1
		Domain.Home.WallpaperManage.None.Interact.ImageTransparency = 1
		Domain.Home.WallpaperManage.None.BackgroundTransparency = 1
		Domain.Home.WallpaperManage.Size = UDim2.new(0.116, 0, 0.091, 0)
		Domain.Home.WallpaperManage.Position = UDim2.new(0.167, 0, 0.548, 0)
		-- Executors
		Domain.Home.Executors.BackgroundTransparency = 1
		Domain.Home.Executors.Title.TextTransparency = 1
		Domain.Home.Executors.Info.TextTransparency = 1
		Domain.Home.Executors.Size = UDim2.new(0.155, 0, 0.175, 0)
		Domain.Home.Executors.Position = UDim2.new(0.015,0,0.617,0)
		for _, img in ipairs(Domain.Home.Executors.data:GetChildren()) do
			if img.Name ~= "UIListLayout" then
				img.ImageTransparency = 1
			end
		end

		Domain.Home.Visible = true
		wait(0.01)

		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Shadow, transitionInfo, {ImageTransparency = 0.25})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Welcome, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()	
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS.FPSText, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WelcomeSub, transitionInfo, {TextTransparency = 0.3})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Lighting, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Notification, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Power, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Lighting.Interact, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Notification.Interact, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Power.Interact, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		for _, mitem in ipairs(Domain.Home.Music:GetDescendants()) do
			if mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") then
				if mitem.Name == "ShadowDown" then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(mitem, transitionInfo, {ImageTransparency = 0.8})
					tween:Play()
				else
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(mitem, transitionInfo, {ImageTransparency = 0})
					tween:Play()
				end
			elseif mitem:IsA("TextButton") or mitem:IsA("TextLabel") or mitem:IsA("TextBox") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {TextTransparency = 0})
				tween:Play()
			elseif mitem.Name ~= "ID" and mitem:IsA("Frame") or mitem:IsA("TextLabel") or mitem:IsA("TextButton") or mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") or mitem:IsA("TextBox") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
			end
		end

		-- Discord Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord, transitionInfo, {Size = UDim2.new(0.151, 0, 0.132, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord, transitionInfo, {Position = UDim2.new(0.019, 0, 0.17, 0)})
		tween:Play()
		wait(0.05)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Icon, transitionInfo, {ImageTransparency = 0.95})
		tween:Play()
		wait(0.05)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Copyframe, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Copyframe.Copy, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		wait(0.01)
		-- Friends Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends, transitionInfo, {Size = UDim2.new(0.215, 0, 0.191, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends, transitionInfo, {Position = UDim2.new(0.173, 0, 0.17, 0)})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.FriendsOnline, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.FriendsOffline, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.FriendsInGame, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.Icon, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.FriendsAll, transitionInfo, {TextTransparency = 0})
		tween:Play()
		-- Data Animation
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data, transitionInfo, {Size = UDim2.new(0.151,0,0.311,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data, transitionInfo, {Position = UDim2.new(0.019,0,0.306,0)})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Executor, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Version, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Time, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Players, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.File, transitionInfo, {TextTransparency = 0})
		tween:Play()
		-- User Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User, transitionInfo, {Size = UDim2.new(0.15, 0, 0.094, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User, transitionInfo, {Position = UDim2.new(0.173, 0, 0.364, 0)})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Avatar, transitionInfo, {BackgroundTransparency = 0.9})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Avatar, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.BigTitle, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		-- Executors
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors, transitionInfo, {Size = UDim2.new(0.151, 0, 0.17, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors, transitionInfo, {Position = UDim2.new(0.019, 0, 0.621, 0)})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		for _, img in ipairs(Domain.Home.Executors.data:GetChildren()) do
			if img.Name ~= "UIListLayout" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(img, transitionInfo, {ImageTransparency = 0})
				tween:Play()
				wait(0.001)
			end
		end
		-- Keybind
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.005)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind, transitionInfo, {Size = UDim2.new(0.126, 0, 0.086, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind, transitionInfo, {Position = UDim2.new(0.173, 0, 0.462, 0)})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.KeyBG, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.KeyBG.KeyBox, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.005)

		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage, transitionInfo, {Size = UDim2.new(0.109, 0, 0.086, 0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage, transitionInfo, {Position = UDim2.new(0.173, 0, 0.553, 0)})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.Title, transitionInfo, {TextTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.Info, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.None, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.None.Interact, transitionInfo, {ImageTransparency = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.WBG, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.001)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.WBG.WBox, transitionInfo, {TextTransparency = 0})
		tween:Play()
		wait(0.65)

		homedb = false
	end
end

function ChangeWallpaperS(WallpaperFileName)
	if not UserIsPro then
		Toast("You must be Pro to use this feature!")
		PromptPremium()
		return
	end
	if CheckWritefile() then
		if isfile(WallpaperFileName) then
			Domain.Home.Wallpaper.Visible = true
			Domain.Home.Wallpaper.ImageTransparency = 1
			if getsynasset then
				Domain.Home.Wallpaper.Image = getsynasset(WallpaperFileName)
				writefile("DomainX Wallpaper.txt",WallpaperFileName)
				Toast("Sucessfully changed wallpaper to "..WallpaperFileName,"GothamSemibold",Color3.fromRGB(11, 217, 155))
			elseif getcustomasset then
				Domain.Home.Wallpaper.Image = getcustomasset(WallpaperFileName)
				writefile("DomainX Wallpaper.txt",WallpaperFileName)
				Toast("Sucessfully changed wallpaper to "..WallpaperFileName,"GothamSemibold",Color3.fromRGB(11, 217, 155))
			else
				Toast("Missing getcustomasset function")
			end
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 0})
			tween:Play()
		else
			Toast("Couldn't Locate File! make sure you're using a PNG or JPEG File!","GothamSemibold",Color3.FromRGB(120, 17, 10))
		end
	end
end

function ChangeWallpaper(WallpaperFileName)
	if not UserIsPro then
		Toast("You must be Pro to use this feature!")
		PromptPremium()
		return
	end
	if CheckWritefile() then
		if isfile(WallpaperFileName) then
			Domain.Home.Wallpaper.Visible = true
			Domain.Home.Wallpaper.ImageTransparency = 1
			if getsynasset then
				Domain.Home.Wallpaper.Image = getsynasset(WallpaperFileName)
				writefile("DomainX Wallpaper.txt",WallpaperFileName)
				Toast("Sucessfully changed wallpaper to "..WallpaperFileName,"GothamSemibold",Color3.fromRGB(11, 217, 155))
			elseif getcustomasset then
				Domain.Home.Wallpaper.Image = getcustomasset(WallpaperFileName)
				writefile("DomainX Wallpaper.txt",WallpaperFileName)
				Toast("Sucessfully changed wallpaper to "..WallpaperFileName,"GothamSemibold",Color3.fromRGB(11, 217, 155))
			else
				Toast("ERROR : Missing getcustomasset function","GothamSemibold",Color3.FromRGB(120, 17, 10))
			end
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 0})
			tween:Play()
		else
			Toast("ERROR : Couldn't Locate File! make sure you're using a PNG or JPEG File!","GothamSemibold",Color3.FromRGB(120, 17, 10))
		end
	end
end

Domain.Home.WallpaperManage.None.Interact.MouseButton1Click:Connect(function()
	if CheckWritefile() then
		if isfile("DomainX Wallpaper.txt") then
			delfile("DomainX Wallpaper.txt")
			Domain.Home.WallpaperManage.WBG.WBox.Text = ""
		end
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	wait(0.8)
	Domain.Home.Wallpaper.Visible = false
	Domain.Home.Wallpaper.Image = ""
	Toast("Wallpaper has been Reset")
end)

Domain.Settings.WallpaperManage.None.Interact.MouseButton1Click:Connect(function()
	if CheckWritefile() then
		if isfile("DomainX Wallpaper.txt") then
			delfile("DomainX Wallpaper.txt")
			Domain.Settings.WallpaperManage.WBG.WBox.Text = ""
		end
	end
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	wait(0.8)
	Domain.Home.Wallpaper.Visible = false
	Domain.Home.Wallpaper.Image = ""
	Toast("Home Wallpaper has been Reset")
end)

function Execute(String)
	if loadstring then
		loadstring(game:HttpGet(String, true))()
	else
		Toast("Missing loadstring function")
	end
end

function PromptDetection(Script)
	if Script.Premium then
		if not UserIsPremium then
			return
		else
			Domain.Detection.Banner.Amount.TextColor3 = Color3.fromRGB(0, 216, 240)
			Domain.Detection.Banner.CusTitle.TextColor3 = Color3.fromRGB(0, 216, 240)
		end
	else
		Domain.Detection.Banner.Amount.TextColor3 = Color3.fromRGB(255,255,255)
		Domain.Detection.Banner.CusTitle.TextColor3 = Color3.fromRGB(255,255,255)
	end
	if CustomScriptEnabled then
		Domain.Detection.Banner.Amount.TextColor3 = Color3.fromRGB(18, 138, 40)
		Domain.Detection.Banner.CusTitle.TextColor3 = Color3.fromRGB(18, 138, 40)
	end
	Domain.Detection.Bottom.Executes.Execute.BackgroundTransparency = 1
	Domain.Detection.Bottom.Executes.Execute.TextTransparency = 1
	Domain.Detection.BackgroundTransparency = 1
	Domain.Detection.Banner.BackgroundTransparency = 1
	Domain.Detection.Banner.Amount.TextTransparency = 1
	Domain.Detection.Banner.CusTitle.TextTransparency = 1
	Domain.Detection.Banner.Icon.ImageTransparency = 1
	Domain.Detection.Divider.Size = UDim2.new(0, 0, 0, 1)
	Domain.Detection.Divider2.Size = UDim2.new(0, 0, 0, 1)
	Domain.Detection.Size = UDim2.new(0, 308,0, 150)
	Domain.Detection.Position = UDim2.new(0.5, 0,0.235, 0)
	for _, obj in ipairs(Domain.Detection:GetDescendants()) do
		if obj.ClassName == "TextLabel" then
			obj.TextTransparency = 1
		elseif obj.ClassName == "ImageLabel" or obj.ClassName == "ImageButton" then
			obj.ImageTransparency = 1
		elseif obj.ClassName == "Frame" then
			obj.BackgroundTransparency = 1
		elseif obj.ClassName == "UIStroke" then
			obj.Transparency = 1
		end
	end

	local Product = game:GetService("MarketplaceService")
	local Details = Product:GetProductInfo(game.PlaceId)
	local IconID = Details.IconImageAssetId

	local DetectionFired = true
	Domain.Detection.Top.MinimalTitle.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	Domain.Detection.Visible = true
	Domain.Detection.Banner.Icon.Image = "rbxassetid://"..IconID
	Domain.Detection.Bottom.ScriptSubtitle.Text = Script.Description
	Domain.Detection.Top.Title.Text = Script.Name
	Domain.Detection.Thumbnail.Image = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..game.PlaceId.."&fmt=png&wd=420&ht=420"
	Domain.Detection.BackgroundTransparency = 1 

	TweenService:Create(Domain.Detection.Banner, TweenInfo.new(1, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Domain.Detection.Banner.Icon, TweenInfo.new(1, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
	wait(0.5)
	TweenService:Create(Domain.Detection.Banner.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
	wait(1)
	TweenService:Create(Domain.Detection.Banner.Icon, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.6}):Play()
	TweenService:Create(Domain.Detection.Banner.Amount, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	TweenService:Create(Domain.Detection.Banner.CusTitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	--
	coroutine.wrap(function()
		wait(5)
		TweenService:Create(Domain.Detection.Banner.Amount, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		TweenService:Create(Domain.Detection.Banner.CusTitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.3)
		TweenService:Create(Domain.Detection.Banner.Icon, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.2}):Play()
	end)()

	wait(0.7)

	Domain.Detection.Divider.BackgroundTransparency = 0.8
	Domain.Detection.Divider2.BackgroundTransparency = 0.8
	TweenService:Create(Domain.Detection.Divider, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0,138,0,1)}):Play()
	TweenService:Create(Domain.Detection.Divider2, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0,138,0,1)}):Play()
	wait(0.5)
	TweenService:Create(Domain.Detection, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.5}):Play()
	local blurlightD = nil
		if not getgenv().SecureMode then
			blurlightD = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
			blurlightD.Enabled = true
			blurlightD.FarIntensity = 0
			blurlightD.FocusDistance = 51.6
			blurlightD.InFocusRadius = 50
			blurlightD.NearIntensity = 1
			game:GetService("Debris"):AddItem(script,0)
		end
	if Domain.Name == "Domain" then
		neon:BindFrame(Domain.Detection.BlurModule, {
			Transparency = 0.98;
			BrickColor = BrickColor.new("Institutional white");
		})
	end
	TweenService:Create(Domain.Detection, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0.5, 0,0.194, 0)}):Play()
	TweenService:Create(Domain.Detection, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 348,0, 190)}):Play()
	TweenService:Create(Domain.Detection.Thumbnail, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0.8}):Play()
	TweenService:Create(Domain.Detection.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
	TweenService:Create(Domain.Detection.Top.Icon, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
	TweenService:Create(Domain.Detection.Top.MinimalTitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	wait(0.5)
	TweenService:Create(Domain.Detection.Top.Title, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	TweenService:Create(Domain.Detection.Bottom.ScriptSubtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
	wait(0.3)
	TweenService:Create(Domain.Detection.Bottom.Executes, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Domain.Detection.Bottom.Executes.ExecutesFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
	TweenService:Create(Domain.Detection.Bottom.Executes.Execute, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.8}):Play()
	TweenService:Create(Domain.Detection.Bottom.Executes.Execute.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 0.2}):Play()
	TweenService:Create(Domain.Detection.Bottom.Executes.Execute, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	TweenService:Create(Domain.Detection.Bottom.Executes.ScriptSubtitle, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
	wait(1)
	TweenService:Create(Domain.Detection.Top.Close, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()

	Domain.Detection.Top.Close.MouseButton1Click:Connect(function()
		for _, obj in ipairs(Domain.Detection:GetDescendants()) do
			if obj.ClassName == "TextLabel" then
				local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "ImageLabel" or obj.ClassName == "ImageButton" then
				local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "Frame" then
				local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			elseif obj.ClassName == "UIStroke" then
				local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj, transitionInfo, {Transparency = 1})
				tween:Play()
			end
		end
		TweenService:Create(Domain.Detection.Divider, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,1)}):Play()
		TweenService:Create(Domain.Detection.Divider2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,1)}):Play()
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Detection, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		if not getgenv().SecureMode then
			neon:UnbindFrame(Domain.Detection.BlurModule)
		end
		blurlightD:Destroy()
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Detection.Thumbnail, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Detection, transitionInfo, {Position = UDim2.new(0.5, 0,0.235, 0)})
		tween:Play()
		TweenService:Create(Domain.Detection.Bottom.Executes.Execute, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
		TweenService:Create(Domain.Detection.Bottom.Executes.Execute.UIStroke, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
		TweenService:Create(Domain.Detection.Bottom.Executes.Execute, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
		wait(0.81)
		Domain.Detection.Visible = false
		DetectionFired = false
	end)
	--
	Domain.Detection.Bottom.Executes.Execute.MouseButton1Click:Connect(function()
		local sound = Instance.new("Sound")
					sound.Parent = Domain
					sound.SoundId = "rbxassetid://"..4590662766
					sound.Name = "spawned"
					sound.Volume = 2
					sound.PlayOnRemove = true
					sound:Destroy()

			for _, obj in ipairs(Domain.Detection:GetDescendants()) do
				if obj.ClassName == "TextLabel" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 1})
					tween:Play()
				elseif obj.ClassName == "ImageLabel" or obj.ClassName == "ImageButton" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 1})
					tween:Play()
				elseif obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
					tween:Play()
				elseif obj.ClassName == "UIStroke" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {Transparency = 1})
					tween:Play()
				end
			end
			TweenService:Create(Domain.Detection.Divider, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,1)}):Play()
			TweenService:Create(Domain.Detection.Divider2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,1)}):Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Detection, transitionInfo, {Position = UDim2.new(0.5, 0,0.235, 0)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Detection, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			if not getgenv().SecureMode then
				neon:UnbindFrame(Domain.Detection.BlurModule)
			end
			blurlightD:Destroy()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Detection.Thumbnail, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			TweenService:Create(Domain.Detection.Bottom.Executes.Execute, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
			TweenService:Create(Domain.Detection.Bottom.Executes.Execute.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
			TweenService:Create(Domain.Detection.Bottom.Executes.Execute, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			wait(0.81)
			Domain.Detection.Visible = false
			Toast("Starting "..Script.Name)
			Toast("If Script does not begin then reprompt")

			if Script.KeySys == true then
				wait(1)
				DomainLibrary:Notify({
					Title = "CloudzOS {KEY SYSTEM}",
					Content = "You might be asked to go through a key system!",
					Duration = 6.5,
					Image = 3610239960,
				 }) 
			end
			Execute(Script.Loadstring)
	end)
	--
	UserInputService.InputBegan:Connect(function(input, processed)
		if (input.KeyCode == Enum.KeyCode.Y and processed == false) and DetectionFired then
			DetectionFired = false
			local sound = Instance.new("Sound")
					sound.Parent = Domain
					sound.SoundId = "rbxassetid://"..4590662766
					sound.Name = "spawned"
					sound.Volume = 2
					sound.PlayOnRemove = true
					sound:Destroy()
			for _, obj in ipairs(Domain.Detection:GetDescendants()) do
				if obj.ClassName == "TextLabel" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {TextTransparency = 1})
					tween:Play()
				elseif obj.ClassName == "ImageLabel" or obj.ClassName == "ImageButton" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {ImageTransparency = 1})
					tween:Play()
				elseif obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {BackgroundTransparency = 1})
					tween:Play()
				elseif obj.ClassName == "UIStroke" then
					local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj, transitionInfo, {Transparency = 1})
					tween:Play()
				end
			end
			TweenService:Create(Domain.Detection.Divider, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,1)}):Play()
			TweenService:Create(Domain.Detection.Divider2, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Size = UDim2.new(0,0,0,1)}):Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Detection, transitionInfo, {Position = UDim2.new(0.5, 0,0.235, 0)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Detection, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()

			if not getgenv().SecureMode then
				neon:UnbindFrame(Domain.Detection.BlurModule)
			end
			blurlightD:Destroy()
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Detection.Thumbnail, transitionInfo, {ImageTransparency = 1})
			tween:Play()
			TweenService:Create(Domain.Detection.Bottom.Executes.Execute, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
			TweenService:Create(Domain.Detection.Bottom.Executes.Execute.UIStroke, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
			TweenService:Create(Domain.Detection.Bottom.Executes.Execute, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
			wait(0.81)
			Domain.Detection.Visible = false
			Toast("Starting "..Script.Name)
			Toast("If Script does not begin then reprompt")

			if Script.KeySys == true then
				wait(1)
				DomainLibrary:Notify({
					Title = "CloudzOS {KEY SYSTEM}",
					Content = "You might be asked to go through a key system!",
					Duration = 6.5,
					Image = 3610239960,
				 }) 
			end
			Execute(Script.Loadstring)

		end
	end)
end


function CloseHome()
	if not homedb then
		homeopen = false
		homedb = true
		if not ThemeEnabled then
			if checkbar then
				game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack,true)
				else
			end
			coroutine.wrap(function()	
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(70, 70, 70)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(238, 238, 238)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(238, 238, 238)})
					tween:Play()
				end
			end
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Buttons.HomeButton.Selection, transitionInfo, {BackgroundTransparency = 1})
			tween:Play()
			wait(0.1)
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
			local tween = TweenService:Create(Domain.Main.Buttons.HomeButton.Selection, transitionInfo, {Size = UDim2.new(0, 24,0, 2)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
			local tween = TweenService:Create(Domain.Main.Buttons.HomeButton.Selection, transitionInfo, {Position = UDim2.new(0.167, 0,1.145, 0)})
			tween:Play()
			wait(0.2)
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Buttons.HomeButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
			tween:Play()
			--
			end)()
		end

		if NotifSettings == nil then
			Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Notifications, transitionInfo, {Position = UDim2.new(1, -25, 0.55, -25)})
			tween:Play()
		elseif NotifSettings == "Bottom" then
			Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Notifications, transitionInfo, {Position = UDim2.new(1, -25, 1, -25)})
			tween:Play()
		elseif NotifSettings == "Top" then
			Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Notifications, transitionInfo, {Position = UDim2.new(1, -25, 0.55, -25)})
			tween:Play()
		end	

		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()	
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS.FPSText, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.FPS.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()	

		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Lighting, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Notification, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Power, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Lighting.Interact, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Notification.Interact, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.ControlPanel.Buttons.Power.Interact, transitionInfo, {ImageTransparency = 1})
		tween:Play()

		for _, mitem in ipairs(Domain.Home.Music:GetDescendants()) do
			if mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			elseif mitem:IsA("TextButton") or mitem:IsA("TextLabel") or mitem:IsA("TextBox") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {TextTransparency = 1})
				tween:Play()
			elseif mitem:IsA("Frame") or mitem:IsA("TextLabel") or mitem:IsA("TextButton") or mitem:IsA("ImageButton") or mitem:IsA("ImageLabel") or mitem:IsA("TextBox") then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(mitem, transitionInfo, {BackgroundTransparency = 1})
				tween:Play()
			end
		end

		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Wallpaper, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Welcome, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WelcomeSub, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Copyframe, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Discord.Copyframe.Copy, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		-- Friends Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Online.FriendsOnline, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.Offline.FriendsOffline, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.InServer.FriendsInGame, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.Icon, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Friends.All.FriendsAll, transitionInfo, {TextTransparency = 1})
		tween:Play()
		-- Data Animation
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Executor, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Version, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Time, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.Players, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Data.data.File, transitionInfo, {TextTransparency = 1})
		tween:Play()
		-- User Animate
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Avatar, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Avatar, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.BigTitle, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.User.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		-- Executors
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Executors.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		for _, img in ipairs(Domain.Home.Executors.data:GetChildren()) do
			if img.Name ~= "UIListLayout" then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(img, transitionInfo, {ImageTransparency = 1})
				tween:Play()
			end
		end
		-- Keybind
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.KeyBG, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Keybind.KeyBG.KeyBox, transitionInfo, {TextTransparency = 1})
		tween:Play()
		wait(0.01)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.Title, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.Info, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.WBG, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.None, transitionInfo, {BackgroundTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.None.Interact, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.WallpaperManage.WBG.WBox, transitionInfo, {TextTransparency = 1})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 70})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(game.Lighting:FindFirstChild("DomainBlur"), transitionInfo, {Size = 0})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Home.Shadow, transitionInfo, {ImageTransparency = 1})
		tween:Play()
		for _, gui in pairs(CachedUI) do
			for _, pgui in ipairs(LocalPlayer:FindFirstChildWhichIsA("PlayerGui"):GetChildren()) do
				if table.find(CachedUI,pgui.Name) then
					pgui.Enabled = true
				end 
			end
		end
		for _, audio in ipairs(workspace:GetChildren()) do
			if audio.ClassName == "Sound" then
				if audio:FindFirstChild("DomainEditorialEffect") then
					local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
					local tween = game:GetService("TweenService"):Create(audio:FindFirstChild("DomainEditorialEffect"), transitionInfo, {HighGain = -15})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
					local tween = game:GetService("TweenService"):Create(audio:FindFirstChild("DomainEditorialEffect"), transitionInfo, {LowGain = -15})
					tween:Play()
					local transitionInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quint)
					local tween = game:GetService("TweenService"):Create(audio:FindFirstChild("DomainEditorialEffect"), transitionInfo, {MidGain = 5})
					tween:Play()
					wait(0.35)
					audio:FindFirstChild("DomainEditorialEffect"):Destroy()
				end
			end
		end
		for _, coregui in pairs(cachedcoreguis) do
			game:GetService("StarterGui"):SetCoreGuiEnabled(coregui,true)
		end
		wait(0.8)
		Domain.Home.Visible = false
		game.Lighting:FindFirstChild("DomainBlur"):Destroy()
		homedb = false
	end
end
Domain.Settings.Shadow.Visible = false
function OpenJC()
	db = true
	if homeopen then
		CloseHome()
	end
	if not ThemeEnabled then
		coroutine.wrap(function()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(41, 26, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(41, 26, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(41, 26, 255)})
			tween:Play()
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(41, 26, 255)})
			tween:Play()
			for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
				if obj.ClassName == "Frame" then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(41, 26, 255)})
					tween:Play()
					wait(0.1)
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(41, 26, 255)})
					tween:Play()
				end
			end
		--
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {BackgroundTransparency = 0})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {Size = UDim2.new(0, 36,0, 2)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {Position = UDim2.new(0, 0,1.145, 0)})
		tween:Play()
		wait(0.2)
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton.Selection, transitionInfo, {BackgroundColor3 = Color3.fromRGB(41, 26, 255)})
		tween:Play()
		end)()
	end
	Domain.Settings.Divider.Size = UDim2.new(0,0,0.001,0)
	Domain.Settings.Divider1.Size = UDim2.new(0,0,0.001,0)
	Domain.Settings.Divider2.Size = UDim2.new(0,0,0.001,0)
	Domain.Settings.Divider3.Size = UDim2.new(0,0,0.001,0)
	jcopen = true
	Domain.Settings.Size = UDim2.new(0.160, 0, 0.207, 0)
	Domain.Settings.Visible = true
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings, transitionInfo, {Size = UDim2.new(0.169, 0, 0.382, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Buttons, transitionInfo, {Size = UDim2.new(0, 221, 0, 59)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Buttons, transitionInfo, {Position = UDim2.new(0.155, 0, 0.822, 0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Buttons, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Divider, transitionInfo, {Size = UDim2.new(1,0,0.002,0)})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Divider1, transitionInfo, {Size = UDim2.new(1,0,0.003,0)})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Divider3, transitionInfo, {Size = UDim2.new(1,0,0.002,0)})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Divider2, transitionInfo, {Size = UDim2.new(1,0,0.002,0)})
	tween:Play()
	wait(0.1)
	for _, o in ipairs(Domain.Settings:GetDescendants()) do
		if o.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 0})
			tween:Play()
		end
		if o.ClassName == "TextLabel" or o.ClassName == "TextButton" or o.ClassName == "TextBox" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {TextTransparency = 0})
			tween:Play()
			if o.Name == "CloudzOS" then
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.UIStroke, transitionInfo, {Transparency = 0})
				tween:Play()
			end
			if o.Name == "Sirius" then
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o, transitionInfo, {BackgroundTransparency = 0})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(o.UIStroke, transitionInfo, {Transparency = 0})
				tween:Play()
			end
		end
		if o.ClassName == "ImageLabel" or o.ClassName == "ImageButton" then
			local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(o, transitionInfo, {ImageTransparency = 0})
			tween:Play()
		end
	end
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Settings.Buttons, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()

	db = false
end

function ChatFromCommand(Message)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message)
end

function CheckServers()
	local servers = {}
	for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
			servers[#servers + 1] = v.id
		end
	end
	if #servers > 0 then
		return #servers
	else
		return "NoFound"
	end
end

serveropen = false

function rainbowgui()
	ClosePlayerConfig()
	while serveropen do
		local r, g, b = math.random(), math.random(), math.random()
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.new(r, g, b)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Serverhop, transitionInfo, {BackgroundColor3 = Color3.new(r, g, b)})
		tween:Play()
		local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.new(r, g, b)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.new(r, g, b)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.new(r, g, b)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.new(r, g, b)})
		tween:Play()
		for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
			if obj.ClassName == "Frame" then
				local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.new(r, g, b)})
				tween:Play()
				wait(0.1)
				local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.new(r, g, b)})
				tween:Play()
			end
		end
		tween.Completed:Wait()
		wait(1)
	end
end

function OpenServerhopMenu()
	coroutine.wrap(function()
	serveropen = true
	rainbowgui()
	end)()
	ServerhopCancelled = false
	Domain.Serverhop.Visible = true
	Domain.Serverhop.BackgroundTransparency = 1
	Domain.Serverhop.Title.TextTransparency = 1
	Domain.Serverhop.Info.TextTransparency = 1
	Domain.Serverhop.ServerhopLoading.Players.TextTransparency = 1
	Domain.Serverhop.UIStroke.Transparency = 1
	Domain.Serverhop.Stop.Visible = true
	Domain.Serverhop.ServerhopLoading.Size = UDim2.new(0.642,0,0.015,0)
	Domain.Serverhop.ProgressInfo.TextTransparency = 1
	Domain.Serverhop.ServerhopLoading.BackgroundTransparency = 1
	Domain.Serverhop.ServerhopLoading.Progress.Size = UDim2.new(0,0,1,0)
	Domain.Serverhop.Stop.ImageTransparency = 1
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop, transitionInfo, {BackgroundTransparency = 0.15})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.UIStroke, transitionInfo, {Transparency = 0})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Title, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Info, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading, transitionInfo, {BackgroundTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ProgressInfo, transitionInfo, {TextTransparency = 0})
	tween:Play()
	wait(0.3)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Stop, transitionInfo, {ImageTransparency = 0})
	tween:Play()
	wait(0.1)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.1,0,1,0)})
	tween:Play()
end

function CloseServerhopMenu()
	coroutine.wrap(function()
	serveropen = false
	local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.UIStroke, transitionInfo, {Color = Color3.fromRGB(70, 70, 70)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.7, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.AMPM, transitionInfo, {TextColor3 = Color3.fromRGB(255, 255, 255)})
	tween:Play()
	for _, obj in ipairs(Domain.Main.Buttons:GetChildren()) do
		if obj.ClassName == "Frame" then
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.Icon, transitionInfo, {ImageColor3 = Color3.fromRGB(238, 238, 238)})
			tween:Play()
			wait(0.1)
			local transitionInfo = TweenInfo.new(1.1, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(obj.UIStroke, transitionInfo, {Color = Color3.fromRGB(238, 238, 238)})
			tween:Play()
		end
	end
	end)()
	serverhopdb = false
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0,0,1,0)})
	tween:Play()
	wait(0.9)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading, transitionInfo, {Size = UDim2.new(0,0,0.015,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ProgressInfo, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Players, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Title, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Info, transitionInfo, {TextTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.Stop, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop.UIStroke, transitionInfo, {Transparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Serverhop, transitionInfo, {BackgroundTransparency = 1})
	tween:Play()
end

--

function Serverhop()
	if not serverhopdb then
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()	
		serverhopdb = true
		Domain.Serverhop.ProgressInfo.Text = "Fetching Servers"
		OpenServerhopMenu()

		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()	
		wait(0.3)	
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.22,0,1,0)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
		tween:Play()
		wait(0.3)
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()	
		wait(0.9)
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.4,0,1,0)})
		tween:Play()
		wait(0.3)
		if ThemeEnabled then
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
			tween:Play()
		else
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
			tween:Play()
		end		
		wait(0.6)
		Domain.Serverhop.ProgressInfo.Text = "Finding best server"
		local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.5,0,1,0)})
		tween:Play()
		-- "Fetching servers"
		local Amount = CheckServers()
		if Amount == "NoFound" then
			-- No Servers, return
			Domain.Serverhop.ProgressInfo.Text = "No servers found"
			if ThemeEnabled then
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
				tween:Play()
			else
				local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
				tween:Play()
			end	
			CloseServerhopMenu()
		elseif Amount > 0 then
			-- Found more than 0 servers, let them know, then wait, then teleport
			if not ServerhopCancelled then
				Domain.Serverhop.ProgressInfo.Text = "Found server"
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.8,0,1,0)})
				tween:Play()
			end
			wait(1.7)
			local highestnumber = 0
			local servers = {}
			for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
				if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
					print(v.playing.." / "..v.maxPlayers.." PLAYERS IN NEW SERVER")
						Domain.Serverhop.ServerhopLoading.Players.Text = v.playing.." / "..v.maxPlayers.." PLAYERS IN NEW SERVER"
						local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
						local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Players, transitionInfo, {TextTransparency = 0})
						tween:Play()
						servers[1] = v.id
					wait(3.5)
			
			if #servers > 0 then
				Domain.Serverhop.ProgressInfo.Text = "Teleporting"
				local transitionInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(0.85,0,1,0)})
				tween:Play()
				local transitionInfo = TweenInfo.new(0.75, Enum.EasingStyle.Quint)
				local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(1,0,1,0)})
				tween:Play()
				Domain.Serverhop.Stop.Visible = false
				if not ServerhopCancelled then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
					tween:Play()	
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[1])
					serverhopdb = false
				end
			else
				Domain.Serverhop.ProgressInfo.Text = "Server lost"
				CloseServerhopMenu()
				if ThemeEnabled then
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
					tween:Play()
				else
					local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
					local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
					tween:Play()
				end	
				serverhopdb = false
			end
		end
	end
end
end
end

--

Domain.Serverhop.Stop.MouseButton1Click:Connect(function()
	Domain.Serverhop.ProgressInfo.Text = "Cancelled"
	if ThemeEnabled then
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
		tween:Play()
	else
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Serverhop, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62,62,62)})
		tween:Play()
	end

	ServerhopCancelled = true
	CloseServerhopMenu()
	serverhopdb = false
end)

function GetDate()
	local date = {}
	local months = {
		{"January", 31};
		{"February", 28};
		{"March", 31};
		{"April", 30};
		{"May", 31};
		{"June", 30};
		{"July", 31};
		{"August", 31};
		{"September", 30};
		{"October", 31};
		{"November", 30};
		{"December", 31};
	}
	local t = tick()
	date.total = t
	date.seconds = math.floor(t % 60)
	date.minutes = math.floor((t / 60) % 60)
	date.hours = math.floor((t / 60 / 60) % 24)
	date.year = (1970 + math.floor(t / 60 / 60 / 24 / 365.25))
	date.yearShort = tostring(date.year):sub(-2)
	date.isLeapYear = ((date.year % 4) == 0)
	date.isAm = (date.hours < 12)
	date.hoursPm = (date.isAm and date.hours or (date.hours == 12 and 12 or (date.hours - 12)))
	if (date.hoursPm == 0) then date.hoursPm = 12 end
	if (date.isLeapYear) then
		months[2][2] = 29
	end
	do
		date.dayOfYear = math.floor((t / 60 / 60 / 24) % 365.25)
		local dayCount = 0
		for i,month in pairs(months) do
			dayCount = (dayCount + month[2])
			if (dayCount > date.dayOfYear) then
				date.monthWord = month[1]
				date.month = i
				date.day = (date.dayOfYear - (dayCount - month[2]) + 1)
				break
			end
		end
	end
	function date:format(str)
		str = str
		:gsub("#s", ("%.2i"):format(self.seconds))
		:gsub("#m", ("%.2i"):format(self.minutes))
		:gsub("#h", tostring(self.hours))
		:gsub("#H", tostring(self.hoursPm))
		:gsub("#Y", tostring(self.year))
		:gsub("#y", tostring(self.yearShort))
		:gsub("#a", (self.isAm and "AM" or "PM"))
		return str
	end
	return date
end

function CopyDiscord()
	if setclipboard then
		setclipboard(DiscordLink)
	end
end

function UpdateExecutor()
	if not identifyexecutor then
		Client = "Universal"
	else
		Client = identifyexecutor()
	end
end

function CheckWritefile()
	if isfile and delfile and writefile and readfile then
		return true
	end
	warn("Warning - writefile is not supported")
	return false
end

local assetstoload = {
	"http://www.roblox.com/asset/?id=3523728077",
	"http://www.roblox.com/asset/?id=6240829846",
	"http://www.roblox.com/asset/?id=3926305904",
	"http://www.roblox.com/asset/?id=274960114",
	"http://www.roblox.com/asset/?id=5185348876",
	"http://www.roblox.com/asset/?id=3602733521",
	"http://www.roblox.com/asset/?id=3926307971",
	"http://www.roblox.com/asset/?id=6863726446",
}


spawn(function()
	ContentProvider:PreloadAsync(assetstoload)
	loadedmainassets = true
end)

local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function dec(data)
	data = string.gsub(data, '[^'..b..'=]', '')
	return (data:gsub('.', function(x)
		if (x == '=') then return '' end
		local r,f='',(b:find(x)-1)
		for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
		return r;
	end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
		if (#x ~= 8) then return '' end
		local c=0
		for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
		return string.char(c)
	end))
end

function StartAntiKick()
	--hookfunction(LocalPlayer.Kick,(function()
end

function StartAntiIdle()
	GetConnections = getconnections or get_signal_cons
	if GetConnections then
		for i, ob in pairs(GetConnections(LocalPlayer.Idled)) do
			if ob["Disable"] then
				ob["Disable"](ob)
			elseif ob["Disconnect"] then
				ob["Disconnect"](ob)
			end
		end
	end
end

function LoadThemes()
	if DebugMode then
		warn("DomainX - Loading Themes")
	end
	Toast("Loading "..Theme.Name.." theme to DomainX")
	for _, obj in ipairs(Domain:GetDescendants()) do
		if obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" then
			if Theme.Font ~= "" then
				obj.Font = Theme.Font
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(33, 33, 33)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(40, 40, 40))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Theme.PrimaryColor
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(58, 58, 58)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(238, 238, 238))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 49, 49))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" then
			if obj.BackgroundColor3 == Color3.fromRGB(238, 238, 238) then
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" then
			if obj.BackgroundColor3 == Color3.fromRGB(62,62,62) then
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "TextBox" then
			if obj.BackgroundColor3 == Color3.fromRGB(47,47,47) then
				obj.BackgroundColor3 = Theme.SecondaryColor
			end
		end
	end
end

function FirstCheck()
	if isfile("DomainX Version.txt") or isfile("DomainX Keybind.txt") then
		firsttime = false
	else
		firsttime = true
	end
end

function VersionCheck()
	if DebugMode then
		warn("DomainX - Starting Version Check")
	end
	if isfile("DomainX Version.txt") then
		if DebugMode then
			warn("DomainX - Version File Existent")
		end
		if tostring(readfile("DomainX Version.txt")) ~= tostring(Release) then
			warn("New Update Available ","rbxassetid://7734052335",Color3.fromRGB(197, 128, 255),5)
			wait(5)
			DomainLibrary:Notify({
				Title = "CloudzOS {UPD}",
				Content = "CloudzOS Has Been Updated! "..ReleaseType.." (v."..Release..")",
				Duration = 6.5,
				Image = 7734052335,
			 })   
			local num = math.random(1,5)
			if num == 2 then
				PromptPremium()
			end
			writefile("DomainX Version.txt",tostring(Release))
			if DebugMode then
				warn("DomainX - New Version, writing over")
			end
			local HttpService = game:GetService("HttpService")
			local RequestEnabled = (syn and syn.request) or (http and http.request) or http_request
			if RequestEnabled and not UserIsPremium then
				if DebugMode then
					warn("DomainX - Joining Discord")
				end
				RequestEnabled({
					Url = 'http://127.0.0.1:6463/rpc?v=1',
					Method = 'POST',
					Headers = {
						['Content-Type'] = 'application/json',
						Origin = 'https://discord.com'
					},
					Body = HttpService:JSONEncode({
						cmd = 'INVITE_BROWSER',
						nonce = HttpService:GenerateGUID(false),
						args = {code = DiscordLink2}
					})
				})
			end
		end
	else
		if DebugMode then
			warn("DomainX - No Version File")
		end
		if not firsttime then
			if DebugMode then
				warn("DomainX - Not First Time, notifying")
			end
			warn("New Update Available ","rbxassetid://7734052335",Color3.fromRGB(197, 128, 255),5)
			wait(5)
			DomainLibrary:Notify({
				Title = "CloudzOS {UPD}",
				Content = "CloudzOS Has Been Updated! "..ReleaseType.." (v."..Release..")",
				Duration = 6.5,
				Image = 7734052335,
			 })  
			local num = math.random(1,5)
			if num == 2 then
				PromptPremium()
				if DebugMode then
					warn("DomainX - Prompting Premium")
				end
			end
		end
		if DebugMode then
			warn("DomainX - Could be first time, continuing")
		end
		local HttpService = game:GetService("HttpService")
		local RequestEnabled = (syn and syn.request) or (http and http.request) or http_request
		if RequestEnabled and not UserIsPremium then
			RequestEnabled({
				Url = 'http://127.0.0.1:6463/rpc?v=1',
				Method = 'POST',
				Headers = {
					['Content-Type'] = 'application/json',
					Origin = 'https://discord.com'
				},
				Body = HttpService:JSONEncode({
					cmd = 'INVITE_BROWSER',
					nonce = HttpService:GenerateGUID(false),
					args = {code = DiscordLink2}
				})
			})
			if DebugMode then
				warn("DomainX - Joining Discord")
			end
		end
		if DebugMode then
			warn("DomainX - Starting writefile")
		end
		writefile("DomainX Version.txt",tostring(Release))
		if DebugMode then
			warn("DomainX - Writing new version file")
		end
	end
end

function ContinueBoot()
	DMNReady = true
	if DebugMode then
		warn("DomainX - Continuing Boot Process (begun)")
	end
	Domain.Premium.Robux.Text = "or 2899 Robux"
	FirstCheck()
	VersionCheck()
	if DebugMode then
		warn("DomainX - Checked Version success")
	end

	if getconnections then
		for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
			v:Disable()
		end
		if DebugMode then
			warn("DomainX - Disabled ScriptContext Errors")
		end
	end
	for _, ob in ipairs(Domain:GetDescendants()) do
		if ob.ClassName == "Frame" or ob.ClassName == "TextButton" or ob.ClassName == "TextLabel" or ob.ClassName == "ImageLabel" or ob.ClassName == "ImageButton" or ob.ClassName == "TextBox" then
			ob.ZIndex = ob.ZIndex + 10
		end
	end
	if DebugMode then
		warn("DomainX - Increasing ZIndex")
	end
	if UserIsPro and ThemeEnabled then
		LoadThemes()
	end
	if DebugMode then
		warn("DomainX - Loading Themes (if any)")
	end
	if ThemeEnabled and not UserIsPro then
		Toast("You must be Pro to use Themes")
		PromptPremium()
	end

	StartPopUpFramework()
	if DebugMode then
		warn("DomainX - Starting pop up framework")
	end
	StartAntiKick()
	StartAntiIdle()
	Domain.Home.Data.data.Players.Text = "Players: <b>"..tostring(#game.Players:GetChildren()).."/"..tostring(game.Players.MaxPlayers).."</b>"
	Domain.Main.Position = UDim2.new(0.5, 0, 1.15, 0)
	Domain.Home.Discord.Info.RichText = true
	Domain.Main.Time.Text = tostring(GetDate():format("#H:#m"))
	Domain.Main.Time.AMPM.Text = tostring(GetDate():format("#a"))
	Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(764,244)
	Domain.Playerlist.List.Template.Visible = false
	Domain.Home.Music.RecentlyPlayed.Visible = false
	Domain.DisplayOrder = 100
	Domain.Home.Discord.Info.RichText = true
	Domain.Home.User.BigTitle.Text = LocalPlayer.DisplayName
	Domain.Home.User.Title.Text = "@"..LocalPlayer.Name
	Domain.Home.User.Title.TextColor3 = Color3.fromRGB(100, 100, 100)
	Domain.Home.Keybind.KeyBG.KeyBox.Text = tostring(Keybind)
	Domain.Settings.Keybind.KeyBG.KeyBox.Text = tostring(Keybind)
	Domain.Main.KeybindNote.Visible = true
	Domain.Main.Visible = true

	if DebugMode then
		warn("DomainX - Started AntiKick and AntiIdle")
	end


	if not IgnorePlayerData then
		for _, Player in ipairs(game.Players:GetChildren()) do
			if Player:IsA("Player") then
				spawn(function()
					AddPlayer(Player)
				end)

			end
		end
		Domain.Home.User.Avatar.Image = game:GetService("Players"):GetUserThumbnailAsync(LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
		if DebugMode then
			warn("DomainX - Finished Player Data")
		end	
	end
	if not Connected then
		Toast("Unable to connect to DomainX server","GothamBold")
		UserIsPremium = true
		UserIsPro = true
	end	
	if not ExecutorAutomatic or firsttime then
		if DebugMode then
			warn("DomainX - First time or not autoexec")
		end
		local sound = Instance.new("Sound")
		sound.Parent = Domain
		sound.SoundId = "rbxassetid://"..6958727243
		sound.Name = "boot"
		if DebugMode then
			warn("DomainX - Instance Success!")
		end
		sound.Volume = 10
		sound.PlayOnRemove = true
		if DebugMode then
			warn("DomainX - Waiting for sound load")
		end
		sound:Destroy()
		if DebugMode then
			warn("DomainX - Destroyed sound (loaded)")
		end
		wait(0.75)
		if DebugMode then
			warn("DomainX - Preparing effect")
		end
		if workspace.CurrentCamera.FieldOfView <= 71 and workspace.CurrentCamera.FieldOfView >= 70  then
			if DebugMode then
				warn("DomainX - FOV 70 ~")
			end
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 67})
			tween:Play()
			wait(0.25)
			local transitionInfo = TweenInfo.new(0.8, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = 64})
			tween:Play()
		end
		wait(0.6)
		Domain.Main.KeybindNote.Visible = false
		if DebugMode then
			warn("DomainX - Keybind Note false")
		end
		if DebugMode then
			warn("DomainX - Opening main")
		end
		OpenMain()
		if DebugMode then
			warn("DomainX - Opened Main")
		end

	else
		if DebugMode then
			warn("DomainX - Autoexec")
		end
		wait(1)
		Domain.Main.KeybindNote.Text = "tap "..Keybind.." to start"
		Domain.Main.Position = UDim2.new(0.5,0,1.05,0)
		Domain.Main.KeybindNote.Visible = true
		Domain.Main.Visible = true
	end
	if PremiumToastRequired == true then
		Toast("Successfully upgraded license","GothamBlack")
	end

	Toast("Loading in to CloudzOS v"..Release,"GothamBold")
wait(1.2)
	--if protected then
	--	if Client ~= "Universal" then
	--		Toast(Client.." has protected the interface from detection")
	--	else
	--		Toast("Your executor has protected the interface from detection")
	--	end
	--end

	coroutine.wrap(function()
	if CheckWritefile() then
		if isfile("DomainX Wallpaper.txt") then
			if isfile(readfile("DomainX Wallpaper.txt")) then
				if getsynasset then
					Domain.Home.Wallpaper.Visible = true
					Domain.Home.Wallpaper.Image = getsynasset(readfile("DomainX Wallpaper.txt"))
					Domain.Home.WallpaperManage.WBG.WBox.Text = readfile("DomainX Wallpaper.txt")
					Domain.Settings.WallpaperManage.WBG.WBox.Text = readfile("DomainX Wallpaper.txt")
					Domain.Settings.Loadtimes.WBG.WBox.PlaceholderText = readfile("CloudzOS Wait.txt")
				else
					Domain.Home.Wallpaper.Visible = true
					Domain.Home.Wallpaper.Image = getcustomasset(readfile("DomainX Wallpaper.txt"))
					Domain.Home.WallpaperManage.WBG.WBox.Text = readfile("DomainX Wallpaper.txt")
					Domain.Settings.WallpaperManage.WBG.WBox.Text = readfile("DomainX Wallpaper.txt")
					Domain.Settings.Loadtimes.WBG.WBox.PlaceholderText = readfile("CloudzOS Wait.txt")
				end
			end
		end
	end

	-- Sorts out script order
	Domain.Scripts.UniversalScripts.List.Template.Visible = false
	local newpos = 1
	for _, Script in pairs(UniversalScripts) do
		local new = Domain.Scripts.UniversalScripts.List.Template:Clone()
		new.Parent = Domain.Scripts.UniversalScripts.List
		new.Name = Script.Name
		new.Visible = true
		new.UIStroke.Color = Script.Colour
		new.Subtitle.Text = Script.Subtitle
		new.Title.Text = Script.Name
		new.Thumbnail.Image = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..game.placeId.."&fmt=png&wd=420&ht=420"
		new.Execute.MouseButton1Click:Connect(function()
			loadstring(game:HttpGet(Script.Loadstring))()
		end)
	end
	--
	Domain.Scripts.Games.List.Template.Visible = false
	local newpos = 1
	for _, Script in pairs(FavoriteGames) do
		local new = Domain.Scripts.Games.List.Template:Clone()
		local MP = game:GetService('MarketplaceService')
		new.Parent = Domain.Scripts.Games.List
		new.Visible = true
		new.UIStroke.Color = Color3.fromRGB(80, 209, 0)
		new.Title.Text = game:GetService('MarketplaceService'):GetProductInfo(Script).Name
		new.GameIcon.Image = "rbxassetid://"..MP:GetProductInfo(Script).IconImageAssetId
		new.Thumbnail.Image = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..Script.."&fmt=png&wd=420&ht=420"
		new.Execute.MouseButton1Click:Connect(function()
			FastToast("Teleporting to <b><i><u>"..game:GetService('MarketplaceService'):GetProductInfo(Script).Name.."</u></i></b>","GothamBlack",Color3.fromRGB(130, 31, 184), 10)
				wait(0.5)
				Toast("If not teleported then current game does not support teleports.","Semibold",Color3.fromRGB(130, 31, 184), 10)
				wait(10)
				game:GetService("TeleportService"):Teleport(Script, LocalPlayer)
		end)
	end
	--bookmarktp
	Domain.Scripts.Library.List.Template.Visible = false
	local newpos = 1
	for _, Script in pairs(DetectionScripts) do
		local new = Domain.Scripts.Library.List.Template:Clone()
		local MP = game:GetService('MarketplaceService')
		new.Parent = Domain.Scripts.Library.List
		new.Name = Script.Name
		new.Visible = true
		new.GameIcon.UIStroke.Color = Script.Colour
		new.Execute.UIStroke.Color = Script.Colour
		new.Execute.BackgroundColor3 = Script.Colour
		new.UIStroke.Color = Script.Colour
		new.Subtitle.Text = Script.Description
		new.Title.Text = Script.Name
		new.GameIcon.MouseEnter:Connect(function()
			TweenService:Create(new.GameIcon.Title, TweenInfo.new(0.5), {Position = UDim2.new(-1.5,0,0.5,0)}):Play()
			wait(0.2)
			TweenService:Create(new.GameIcon.Title, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
		end)
		new.GameIcon.MouseLeave:Connect(function()
			TweenService:Create(new.GameIcon.Title, TweenInfo.new(0.5), {Position = UDim2.new(-0.7,0,0.5,0)}):Play()
			wait(0.2)
			TweenService:Create(new.GameIcon.Title, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
		end)

		for _, GameID in pairs(Script.Games) do
			new.GameIcon.Title.Text = game:GetService('MarketplaceService'):GetProductInfo(GameID).Name
			new.GameIcon.Image = "rbxassetid://"..MP:GetProductInfo(GameID).IconImageAssetId
			new.Thumbnail.Image = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..GameID.."&fmt=png&wd=420&ht=420"
			new.GameIcon.MouseButton1Click:Connect(function()
				FastToast("Teleporting to <b><i><u>"..game:GetService('MarketplaceService'):GetProductInfo(GameID).Name.."</u></i></b>","GothamBlack",Color3.fromRGB(130, 31, 184), 10)
				wait(0.5)
				Toast("If not teleported then current game does not support teleports.","GothamSemibold",Color3.fromRGB(130, 31, 184), 10)
				wait(10)
				game:GetService("TeleportService"):Teleport(GameID, LocalPlayer)
			end)
		end
		new.Execute.MouseButton1Click:Connect(function()
			loadstring(game:HttpGet(Script.Loadstring))()
		end)
	end
	end)()

	if not ExecutorAutomatic and not firsttime then
		wait(0.4)
		Toast("Please wait whilst we get everything ready!","GothamSemibold")
		wait(1.5)
	end

	if CheckWritefile() == true then
		-- Writefile check! true
		if not isfolder(CustomFolderName) then -- folder no existo,
			makefolder(CustomFolderName) -- make folder
		else -- folder existo
			local LoadedCustomScripts = 0
			for _, file in ipairs(listfiles(CustomFolderName)) do -- check files
				local NewCustomScript = game:GetService("HttpService"):JSONDecode(readfile(file))
				local NewTable = {
					Name = NewCustomScript.Name,
					Description =  NewCustomScript.Description,
					Games = NewCustomScript.Games,
					Loadstring = NewCustomScript.Loadstring,
				}
				table.insert(CustomScripts,NewTable)
				LoadedCustomScripts = LoadedCustomScripts + 1
			end
			if LoadedCustomScripts == 1 then
				DomainLibrary:Notify({
					Title = "CloudzOS {Game Engine}",
					Content = "Successfully loaded "..LoadedCustomScripts.." custom script",
					Duration = 6.5,
					Image = 3944680095,
				 })
				 Domain.Detection.Banner.Amount.Text = LoadedCustomScripts
			elseif LoadedCustomScripts > 1 then
				DomainLibrary:Notify({
					Title = "CloudzOS {Game Engine}",
					Content = "Successfully loaded "..LoadedCustomScripts.." custom scripts",
					Duration = 6.5,
					Image = 3944680095,
				 })
				 Domain.Detection.Banner.Amount.Text = LoadedCustomScripts
			end
			if not UserIsPremium and LoadedCustomScripts > 0 then
				DomainLibrary:Notify({
					Title = "CloudzOS {Game Engine}",
					Content = "You Must Have Premium to Use these!",
					Duration = 6.5,
					Image = 3944680095,
				 })  
				PromptPremium()
			end	
		end
	end
	local Prompted = false
	for _, custscript in pairs(CustomScripts) do
		if Prompted then
			return
		end
		for _, GameID in pairs(custscript.Games) do
			if GameID == game.PlaceId then
				CustomScriptEnabled = true
				PromptDetection(custscript)
				Prompted = true
			end
		end
	end
	if Prompted == false then
		for _, Script in pairs(DetectionScripts) do
			for _, GameID in pairs(Script.Games) do
				if GameID == game.PlaceId then
					if Script.Premium then
						if UserIsPremium then
							PromptDetection(Script)
						end
					else
						PromptDetection(Script)
					end
				end
			end
		end
	end
	if DebugMode then
		warn("Do.baX - Booted, ready!")
	end
end

function CheckLatest()
	if DebugMode then
		warn("DomainX - Checking version")
	end
	--loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/routine',true))()
	--local ver = game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/latest')
	--print(ver)
	--if tonumber(ver) > Release then
	--	Connected = false
	--	warn("Not up to date, needs to be on "..tostring(game:HttpGet('https://raw.githubusercontent.com/shlexware/DomainX/main/latest')))
	--	return false
	--else
	-- Connected = true
	--end
end

function BootDomainX()
	local Start_Time = os.clock() -- This is start time
	function CheckExecutionTime()
	return os.clock()-Start_Time -- Returns execution time in seconds
	end
	wait(readfile("CloudzOS Wait.txt"))
	if DebugMode then
		warn("DomainX - Beginning Boot Process")
	end
	Domain.Main.Visible = true
	Domain.Main.Position = UDim2.new(0.5, 0, 1.05, 0)
	Domain.Main.KeybindNote.Position = UDim2.new(0.5,0,-1.303,0)
	Domain.Main.KeybindNote.Text = "Loading CloudzOS"
	Domain.Main.KeybindNote.Visible = true
	Domain.Main.Buttons.ModulesButton.Visible = false
	Domain.Main.KeybindNote.TextTransparency = 0.4
	if Beta then
		if not UserIsPremium then
			return
		end
	end
	if CheckLatest() == false then
		Connected = false
	end
	UpdateExecutor()

	if not DomainEnabled then
		DomainLibrary:Notify({
			Title = "CloudzOS {AI}",
			Content = "CloudzOS Is not Enabled!",
			Duration = 6.5,
			Image = 3944680095,
		 })  
		wait(NotificationDuration+3)
		Domain:Destroy()
		return
	end

	if DebugMode then
		warn("DomainX - Continuing Boot Process")
	end
	ContinueBoot()

	DomainXLoaded = true
end

-- Main functionality of core buttons

Domain.Main.Buttons.HomeButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.HomeButton, transitionInfo, {Size = UDim2.new(0, 30,0, 30)})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.HomeButton, transitionInfo, {Size = UDim2.new(0, 36,0, 36)})
	tween:Play()
	if homeopen then
		CloseHome()
	else
		OpenHome()
	end
end)

Domain.Home.Discord.Copyframe.Copy.MouseButton1Click:Connect(function()
	CopyDiscord()
	Domain.Home.Discord.Info.Text = "Successfully copied the discord invite link to your clipboard."
	wait(3)
	Domain.Home.Discord.Info.Text = "We'd love to have you join our community! Tap the button to <b>copy</b> the link to your <b>clipboard</b>"
end)

Domain.Main.Buttons.PlayerButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton, transitionInfo, {Size = UDim2.new(0, 30,0, 30)})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.PlayerButton, transitionInfo, {Size = UDim2.new(0, 36,0, 36)})
	tween:Play()
	if not db then
		if plrconopen then
			ClosePlayerConfig()
		else
			OpenPlayerConfig()
		end
	end
end)

Domain.Main.Buttons.PlayersButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton, transitionInfo, {Size = UDim2.new(0, 30,0, 30)})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.PlayersButton, transitionInfo, {Size = UDim2.new(0, 36,0, 36)})
	tween:Play()
	if not db and DMNReady then
		if plrlistopen then
			ClosePlayerlist()
		else
			OpenPlayerlist()
		end
	end
end)

local JCTOGGLE = false

Domain.Main.Buttons.JoinCodesButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton, transitionInfo, {Size = UDim2.new(0, 30,0, 30)})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.JoinCodesButton, transitionInfo, {Size = UDim2.new(0, 36,0, 36)})
	tween:Play()
if JCTOGGLE == false then
	OpenJC()
	JCTOGGLE = true
elseif JCTOGGLE == true then
	CloseJC1()
	JCTOGGLE = false
end
end)

EmoteToggle = false

Domain.Scripts.Titlebar.Icon.MouseButton1Click:Connect(function()
if EmoteToggle == false then
	game:GetService("CoreGui").RobloxGui.EmotesMenu.Main.EmotesWheel.Visible = true
	EmoteToggle = true
elseif EmoteToggle == true then
	game:GetService("CoreGui").RobloxGui.EmotesMenu.Main.EmotesWheel.Visible = false
	EmoteToggle = false
end
end)

local function onActivatedOS()
	local Prompted = false
        for _, custscript in pairs(CustomScripts) do
            if Prompted then
                return
            end
            for _, GameID in pairs(custscript.Games) do
                if GameID == game.PlaceId then
                    CustomScriptEnabled = true
                    PromptDetection(custscript)
                    Prompted = true
                end
            end
        end
        if Prompted == false then
            for _, Script in pairs(DetectionScripts) do
                for _, GameID in pairs(Script.Games) do
                    if GameID == game.PlaceId then
                        if Script.Premium then
                            if UserIsPremium then
                                PromptDetection(Script)
                            end
                        else
                            PromptDetection(Script)
                        end
                    end
                end
            end
        end
end


Domain.Settings.Buttons.Sirius.Activated:Connect(function()
if(game.PlaceId == 3039795291) then
	if OpenDMR == false then
		openDMRInterface()
	elseif OpenDMR then
		CloseDMRInterface()
	end
else
	Toast("Game must be QS Energy Research Facility to open this!","GothamBlack",Color3.fromRGB(184, 4, 4))
end
end)

Domain.Scripts.Main.Buttons.SiriusGameDetection.Interact.Activated:Connect(function()
	if(game.PlaceId == 3039795291) then
		if OpenDMR == false then
			openDMRInterface()
		elseif OpenDMR == true then
			CloseDMRInterface()
		end
	else
		Toast("Game must be QS Energy Research Facility to open this!","GothamBlack",Color3.fromRGB(184, 4, 4))
	end
end)

Domain.Settings.Buttons.CloudzOS.Activated:Connect(function()
onActivatedOS()
Toast("Opening CloudzOS Game Prompt")
wait(1)
Toast("If CloudzOS's Game Prompt doesn't show up then the game is not supported")
end)


Domain.Scripts.Main.Buttons.GameDetection.Interact.Activated:Connect(function()
	onActivatedOS()
	Toast("Opening CloudzOS Game Prompt")
	wait(1)
	Toast("If CloudzOS's Game Prompt doesn't show up then the game is not supported")
end)

Domain.Main.Buttons.ScriptsButton.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton, transitionInfo, {Size = UDim2.new(0, 30,0, 30)})
	tween:Play()
	wait(0.2)
	local transitionInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Buttons.ScriptsButton, transitionInfo, {Size = UDim2.new(0, 36,0, 36)})
	tween:Play()
	if not db and DMNReady then
		if scriptsopen then
			CloseScripts()
		else
			OpenScripts()
		end
	end
end)

function Rejoin()
	Domain.Serverhop.Title.Text = "REJOIN SYSTEM"
	Domain.Serverhop.Info.Text = "Rejoins the current server."
	Domain.Serverhop.ProgressInfo.Text = "Pinging Server"
	Domain.Serverhop.ServerhopLoading.Players.Text = "PLAYERS IN CURRENT SERVER: "..tostring(#game.Players:GetChildren()).."/"..tostring(game.Players.MaxPlayers)
	OpenServerhopMenu()
	local transitionInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
	local tween = TweenService:Create(Domain.Serverhop.Stop, transitionInfo, {ImageTransparency = 1})
	tween:Play()
	local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Players, transitionInfo, {TextTransparency = 0})
	tween:Play()
	local transitionInfo = TweenInfo.new(6, Enum.EasingStyle.Linear)
	local tween = TweenService:Create(Domain.Serverhop.ServerhopLoading.Progress, transitionInfo, {Size = UDim2.new(1,0,1,0)})
	tween:Play()
	Toast("Rejoining Sever")
	wait(2)
	Domain.Serverhop.ProgressInfo.Text = "Teleporting"
	wait(1)
	Domain.Serverhop.ProgressInfo.Text = "Teleporting."
	wait(1)
	Domain.Serverhop.ProgressInfo.Text = "Teleporting.."
	wait(1)
	Domain.Serverhop.ProgressInfo.Text = "Teleporting..."
	wait(1)
	if #game.Players:GetPlayers() <= 1 then
		LocalPlayer:Kick("\nDMNX - Rejoining Server")
		wait()
		game:GetService('TeleportService'):Teleport(game.PlaceId, LocalPlayer)
	else
		game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
	end
end

function Invisible()
	if invisRunning then return end
	invisRunning = true
	-- Full credit to AmokahFox @V3rmillion
	local Player = LocalPlayer
	repeat wait(.1) until Player.Character
	local Character = Player.Character
	Character.Archivable = true
	local IsInvis = false
	local IsRunning = true
	local InvisibleCharacter = Character:Clone()
	InvisibleCharacter.Parent = game:GetService'Lighting'
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
	local CF

	local invisFix = game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			local IsInteger
			if tostring(Void):find'-' then
				IsInteger = true
			else
				IsInteger = false
			end
			local Pos = Player.Character.HumanoidRootPart.Position
			local Pos_String = tostring(Pos)
			local Pos_Seperate = Pos_String:split(', ')
			local X = tonumber(Pos_Seperate[1])
			local Y = tonumber(Pos_Seperate[2])
			local Z = tonumber(Pos_Seperate[3])
			if IsInteger == true then
				if Y <= Void then
					Respawn()
				end
			elseif IsInteger == false then
				if Y >= Void then
					Respawn()
				end
			end
		end)
	end)

	for i,v in pairs(InvisibleCharacter:GetDescendants())do
		if v:IsA("BasePart") then
			if v.Name == "HumanoidRootPart" then
				v.Transparency = 1
			else
				v.Material = Enum.Material.ForceField
				v.Color = Color3.fromRGB(25,25,25)
			end
		end
	end

	function Respawn()
		IsRunning = false
		if IsInvis == true then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				IsInvis = false
				InvisibleCharacter.Parent = nil
				invisRunning = false
			end)
		elseif IsInvis == false then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				TurnVisible()
			end)
		end
	end

	local invisDied
	invisDied = InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
		Respawn()
		invisDied:Disconnect()
	end)

	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = Player.Character.HumanoidRootPart.CFrame
	Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	wait(.2)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	InvisibleCharacter = InvisibleCharacter
	Character.Parent = game:GetService'Lighting'
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	Player.Character = InvisibleCharacter
	workspace.CurrentCamera:remove()
	wait(.1)
	repeat wait() until Player.Character ~= nil
	workspace.CurrentCamera.CameraSubject = Player.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	Player.CameraMinZoomDistance = 0.5
	Player.CameraMaxZoomDistance = 400
	Player.CameraMode = "Classic"
	Player.Character.Head.Anchored = false
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false

	function TurnVisible()
		if IsInvis == false then return end
		invisFix:Disconnect()
		invisDied:Disconnect()
		CF = workspace.CurrentCamera.CFrame
		Character = Character
		local CF_1 = Player.Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart.CFrame = CF_1
		InvisibleCharacter:Destroy()
		Player.Character = Character
		Character.Parent = workspace
		IsInvis = false
		Player.Character.Animate.Disabled = true
		Player.Character.Animate.Disabled = false
		invisDied = Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
			invisDied:Disconnect()
		end)
		invisRunning = false
	end
end

Domain.Player.Noclip.Interact.MouseButton1Click:Connect(function()
	if Clip then
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Noclip, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()
		NoClip()
	else
		if ThemeEnabled then
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Noclip, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
			tween:Play()
		else
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Noclip, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62, 62, 62)})
			tween:Play()
		end

		ReClip()
	end
end)
Domain.Player.Invisible.Interact.MouseButton1Click:Connect(Invisible)
Domain.Player.God.Interact.MouseButton1Click:Connect(God)
Domain.Player.Respawn.Interact.MouseButton1Click:Connect(function()
	Respawn()
	local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player.Respawn, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
	tween:Play()

end)

Domain.Player.Rejoin.Interact.MouseButton1Click:Connect(Rejoin)

Domain.Player.Fly.Interact.MouseButton1Click:Connect(function()
	if Flying then
		if ThemeEnabled then
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Fly, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
			tween:Play()
		else
			local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
			local tween = TweenService:Create(Domain.Player.Fly, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62, 62, 62)})
			tween:Play()
		end
		Domain.Player.Fly.Popup.Title.Text = "Fly"
		Domain.Player.Fly.Interact.Image = "rbxassetid://3926305904"
		Domain.Player.Fly.Interact.ImageRectOffset = Vector2.new(124,364)
		Toast("Disabled flight")
		Unfly()
	else 
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Fly, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
		tween:Play()

		Domain.Player.Fly.Popup.Title.Text = "Unfly"
		Domain.Player.Fly.Interact.Image = "rbxassetid://3926307971"
		Domain.Player.Fly.Interact.ImageRectOffset = Vector2.new(884,324)
		Toast("Enabled flight")
		Fly()
	end
end)

function PlaySound()
	if Domain:FindFirstChildWhichIsA("Sound") then
		Domain:FindFirstChildWhichIsA("Sound"):Destroy()
	end
	Domain.Home.Music.PlayingTitle.Text = "Now Playing"
	MusicPlaying = true
	local MusicSound = Instance.new("Sound",Domain)
	MusicSound.Volume = 1
	MusicSound.SoundId = "rbxassetid://"..Domain.Home.Music.ID.IDFrame.IDBox.Text
	CurrentMusicInfo = game:GetService("MarketplaceService"):GetProductInfo(tonumber(Domain.Home.Music.ID.IDFrame.IDBox.Text))
	Domain.Home.Music.ID.IDFrame.IDBox.Text = ""
	MusicSound.TimePosition = 0
	MusicSound.Looped = true
	MusicSound:Play()
	if CurrentMusicInfo then
		Domain.Home.Music.Playing.Text = CurrentMusicInfo.Name
	else
		Domain.Home.Music.Playing.Text = "Unknown"
	end
	Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(804,124)
	Toast("Playing music using ShlexSound")
end

Domain.Home.Music.Toggle.MouseButton1Click:Connect(function()
	if MusicPlaying then
		MusicPlaying = false
		if not Domain:FindFirstChildWhichIsA("Sound") then
			Toast("Domain was unable to locate any Sound to stop")
			Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(764,244)
		else
			Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(764,244)
			Domain:FindFirstChildWhichIsA("Sound"):Pause()
			Toast("Stopped Sound")
		end
	elseif not MusicPlaying then
		if not Domain:FindFirstChildWhichIsA("Sound") then
			Toast("Please start a sound using the Asset ID bar above")
		else
			MusicPlaying = true
			Domain.Home.Music.Toggle.ImageRectOffset = Vector2.new(804,124)
			Domain:FindFirstChildWhichIsA("Sound"):Resume()
			Toast("Resumed sound")
		end
	end
end)
 
Domain.Home.Music.ID.IDFrame.IDBox.FocusLost:Connect(function()
	PlaySound()
end)

Domain.Settings.WallpaperManage.WBG.WBox.FocusLost:Connect(function()
	ChangeWallpaperS(Domain.Settings.WallpaperManage.WBG.WBox.Text)
end)

Domain.Settings.Loadtimes.WBG.WBox.FocusLost:Connect(function()
	writefile("CloudzOS Wait.txt",tostring(Domain.Settings.Loadtimes.WBG.WBox.Text))
	Domain.Settings.Loadtimes.WBG.WBox.PlaceholderText = readfile("CloudzOS Wait.txt")
	Toast("Changed CloudzOS Wait time to "..Domain.Settings.Loadtimes.WBG.WBox.Text.."s")
end)

Domain.Home.WallpaperManage.WBG.WBox.FocusLost:Connect(function()
	ChangeWallpaper(Domain.Home.WallpaperManage.WBG.WBox.Text)
end)
local CheckingForKey = false
Domain.Home.Keybind.KeyBG.KeyBox.Focused:Connect(function()
	CheckingForKey = true
end)
Domain.Home.Keybind.KeyBG.KeyBox.FocusLost:Connect(function()
	CheckingForKey = false
end)

local CheckingForKey = false
Domain.Settings.Keybind.KeyBG.KeyBox.Focused:Connect(function()
	CheckingForKey = true
end)
Domain.Settings.Keybind.KeyBG.KeyBox.FocusLost:Connect(function()
	CheckingForKey = false
end)

function ChangeKeybind(Key)
	local SplitMessage = string.split(tostring(Key), ".")
	local NewKeyNoEnum = SplitMessage[3]
	Keybind = tostring(NewKeyNoEnum)
	Domain.Home.Keybind.KeyBG.KeyBox.Text = Keybind
	Domain.Home.Keybind.KeyBG.KeyBox:ReleaseFocus()
	if CheckWritefile() then
		writefile("DomainX Keybind.txt",tostring(NewKeyNoEnum))
		Toast("Successfully changed Keybind to "..tostring(NewKeyNoEnum))
	else
		Toast("Successfully changed Keybind to "..tostring(NewKeyNoEnum)..", however we're unable to save for next use")
	end
end
function ChangeKeybindS(Key)
	local SplitMessage = string.split(tostring(Key), ".")
	local NewKeyNoEnum = SplitMessage[3]
	Keybind = tostring(NewKeyNoEnum)
	Domain.Settings.Keybind.KeyBG.KeyBox.Text = Keybind
	Domain.Settings.Keybind.KeyBG.KeyBox:ReleaseFocus()
	if CheckWritefile() then
		writefile("DomainX Keybind.txt",tostring(NewKeyNoEnum))
	else	
	end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
	if not DMNReady then
		return
	end
	if not CheckingForKey then
		if (input.KeyCode == Enum.KeyCode[Keybind] and processed == false) and not db then
			if baropen then
				if plrlistopen then
					ClosePlayerlist()
					plrlistopen = false
				elseif plrconopen then
					ClosePlayerConfig()
					plrconopen = false
				elseif scriptsopen then
					CloseScripts()
					scriptsopen = false
				end
				CloseMain()
			else
				OpenMain()
			end
		end
	else
		if input.KeyCode ~= Enum.KeyCode.Unknown then
			ChangeKeybind(input.KeyCode)
			ChangeKeybindS(input.KeyCode)
		end
	end
end)

local RunService = game:GetService("RunService")
local FpsLabel = Domain.Home.FPS.FPSText

local TimeFunction = RunService:IsRunning() and time or os.clock

local LastIteration, Start
local FrameUpdateTable = {}

-- Fling Detection
coroutine.wrap(function()
	if(game.PlaceId == 1033860623) then
	for _, players in ipairs(game:GetService("Players"):GetChildren()) do
	   local Player = players
	   local Character = Player.Character
	   local HRT = Character:WaitForChild("HumanoidRootPart")
	   local Run = game:GetService("RunService")
	   local PreviousValue = HRT.CFrame
	   local MaxAngle = 130
	   local TimeTouched = 0
	   local E = true
	   local playerissit = false
	   Run.Stepped:Connect(function()
		KaijuParadise = {6456351776, 8318588114}
		for _, GameID in pairs(KaijuParadise) do
			if GameID == game.PlaceId then
				return
			end
		end
		Character.Humanoid.Seated:Connect(function(isSeated, seatPart)
			if isSeated then
				playerissit = true
			else
				playerissit = false
			end
		end)
		if Player.Name == LocalPlayer.Name then
			return
		else
		end
		  local Angle = math.deg(math.acos(HRT.CFrame.LookVector:Dot(PreviousValue.LookVector)))
		  if Angle >= MaxAngle then
			if playerissit then
				return 
			else
			end
			 if E == true then
				E = false
				if TimeTouched == 0 then
					DomainLibrary:WatchTower({
						Title = "CloudzOS {Watch Tower}",
						Content = "CloudzOS possibly detected <b><i><u>"..Player.Name.."</u></i></b> to be using some sort of fling and have prompted choices to combat this.",
						Duration = 6.5,
						Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
						Actions = { -- Notification Buttons
						   Ignore = {
							  Name = "Ignore",
							  Callback = function()
							  return
						   end
						},
						View = {
							Name = "View",
							Callback = function()
							coroutine.wrap(function()
								game.Workspace.Camera.CameraSubject = Player.Character.Humanoid
								wait(2)
								DomainLibrary:WatchTower({
									Title = "CloudzOS {Watch Tower}",
									Content = "Since you are viewing whoever set the detection off we can send you back to normal view whenever you're ready.",
									Duration = 6.5,
									Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
									Actions = { -- Notification Buttons
									   Ignore = {
										  Name = "Return back to normal view",
										  Callback = function()
											game.Workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
									   end
									},
								 },
								})
							end)()
						 end
					  },
						Block = {
							Name = "Block",
							Callback = function()
								NoClip()
								DomainLibrary:WatchTower({
									Title = "CloudzOS {Watch Tower}",
									Content = "Based on Information that CloudzOS has detected, CloudzOS has enabled <b><i><u> Noclip </u></i></b> for 5 minutes.",
									Duration = 10,
									Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
								})
								coroutine.wrap(function()
									wait(300)
									ReClip()
									DomainLibrary:WatchTower({
										Title = "CloudzOS {Watch Tower}",
										Content = "CloudzOS has re-enabled <b><i><u> clipping </u></i></b> after we turned it on for 5 minutes in order to combat the other exploiter.",
										Duration = 10,
										Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
									})
								end)()
						 end
					  },
					 },
					})
					TimeTouched += 1
				elseif TimeTouched == 1 then
					TimeTouched += 1
				else
					TimeTouched += 1
				end
				 if TimeTouched == 2 then
					 TimeTouched = 0
				 end
				wait(1)
				E = true
		end
		  end
		  PreviousValue = HRT.CFrame
	   end)
	   end
	else
	end
	end)()
	--
	coroutine.wrap(function()
		if(game.PlaceId == 1033860623) then
		game.Players.PlayerAdded:Connect(function(Player)
		   local Player = players
		   local Character = Player.Character
		   local HRT = Character:WaitForChild("HumanoidRootPart")
		   local Run = game:GetService("RunService")
		   local PreviousValue = HRT.CFrame
		   local MaxAngle = 130
		   local TimeTouched = 0
		   local E = true
		   local playerissit = false
		   Run.Stepped:Connect(function()
			KaijuParadise = {6456351776, 8318588114}
			for _, GameID in pairs(KaijuParadise) do
				if GameID == game.PlaceId then
					return
				end
			end
			Character.Humanoid.Seated:Connect(function(isSeated, seatPart)
				if isSeated then
					playerissit = true
				else
					playerissit = false
				end
			end)
			if Player.Name == LocalPlayer.Name then
				return
			else
			end
			  local Angle = math.deg(math.acos(HRT.CFrame.LookVector:Dot(PreviousValue.LookVector)))
			  if Angle >= MaxAngle then
				if playerissit then
					return 
				else
				end
				 if E == true then
					E = false
					if TimeTouched == 0 then
						DomainLibrary:WatchTower({
							Title = "CloudzOS {Watch Tower}",
							Content = "CloudzOS possibly detected <b><i><u>"..Player.Name.."</u></i></b> to be using some sort of fling and have prompted choices to combat this.",
							Duration = 6.5,
							Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
							Actions = { -- Notification Buttons
							   Ignore = {
								  Name = "Ignore",
								  Callback = function()
								  return
							   end
							},
							View = {
								Name = "View",
								Callback = function()
								coroutine.wrap(function()
									game.Workspace.Camera.CameraSubject = Player.Character.Humanoid
									wait(2)
									DomainLibrary:WatchTower({
										Title = "CloudzOS {Watch Tower}",
										Content = "Since you are viewing whoever set the detection off we can send you back to normal view whenever you're ready.",
										Duration = 6.5,
										Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
										Actions = { -- Notification Buttons
										   Ignore = {
											  Name = "Return back to normal view",
											  Callback = function()
												game.Workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
										   end
										},
									 },
									})
								end)()
							 end
						  },
							Block = {
								Name = "Block",
								Callback = function()
									NoClip()
									DomainLibrary:WatchTower({
										Title = "CloudzOS {Watch Tower}",
										Content = "Based on Information that CloudzOS has detected, CloudzOS has enabled <b><i><u> Noclip </u></i></b> for 5 minutes.",
										Duration = 10,
										Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
									})
									coroutine.wrap(function()
										wait(300)
										ReClip()
										DomainLibrary:WatchTower({
											Title = "CloudzOS {Watch Tower}",
											Content = "CloudzOS has re-enabled <b><i><u> clipping </u></i></b> after we turned it on for 5 minutes in order to combat the other exploiter.",
											Duration = 10,
											Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
										})
									end)()
							 end
						  },
						 },
						})
						TimeTouched += 1
					elseif TimeTouched == 1 then
						TimeTouched += 1
					else
						TimeTouched += 1
					end
					 if TimeTouched == 2 then
						 TimeTouched = 0
					 end
					wait(20)
					E = true
			end
			  end
			  PreviousValue = HRT.CFrame
		   end)
		   end)
		else
		end
	end)()

-- Speed Detection
coroutine.wrap(function()
	if(game.PlaceId == 1033860623) then
	game.Players.PlayerAdded:Connect(function(Player)
		local char = players.Character or players.CharacterAppearanceLoaded:Wait()
		local limit = char.Humanoid.WalkSpeed
		local hardlimit = 30
		local TimeTouched = 0
		local E = true

		char.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
			if char.Humanoid.WalkSpeed >= limit then
			else
			return
			end
			--	
			if char.Humanoid.WalkSpeed >= hardlimit then
			else
			return
			end
			--
			KaijuParadise = {6456351776, 8318588114}
			for _, GameID in pairs(KaijuParadise) do
				if GameID == game.PlaceId then
					return
				end
			end
			if char.Name == LocalPlayer.Name then
				return
			else
			end
			if E == true then
					E = false
					if TimeTouched == 0 then
						DomainLibrary:WatchTower({
							Title = "CloudzOS {WatchTower}",
							Content = "CloudzOS has Detected <b><i><u>"..char.Name.."</u></i></b> has changed their walkspeed from their normal one. This could be speed hacks or it could be a false detection.",
							Duration = 10,
							Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..char.Name,
							Actions = { -- Notification Buttons
							   Ignore = {
								  Name = "Ignore",
								  Callback = function()
								  return
							   end
							},
							View = {
								Name = "View",
								Callback = function()
								coroutine.wrap(function()
									game.Workspace.Camera.CameraSubject = char.Humanoid
									wait(2)
									DomainLibrary:WatchTower({
										Title = "CloudzOS {Watch Tower}",
										Content = "Since you are viewing whoever set the detection off we can send you back to normal view whenever you're ready.",
										Duration = 6.5,
										Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..char.Name,
										Actions = { -- Notification Buttons
										   Ignore = {
											  Name = "Return back to normal view",
											  Callback = function()
												game.Workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
										   end
										},
									 },
									})
								end)()
							 end
						  },
						 },
						 })
						TimeTouched += 1
					elseif TimeTouched == 1 then
						TimeTouched += 1
					else
						TimeTouched += 1
					end
					 if TimeTouched == 5 then
						 TimeTouched = 0
					 end
					wait(5)
					E = true
			end
		end)
	end)
else
end
end)()
--
coroutine.wrap(function()
	for _, players in ipairs(game:GetService("Players"):GetChildren()) do
		local char = players.Character or players.CharacterAppearanceLoaded:Wait()
		local limit = char.Humanoid.WalkSpeed
		local TimeTouched = 0
		local E = true

		char.Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
			if char.Humanoid.WalkSpeed >= limit then
			else
			return
			end
			--	
			if char.Humanoid.WalkSpeed >= hardlimit then
			else
			return
			end
			--
			for _, GameID in pairs(KaijuParadise) do
				if GameID == game.PlaceId then
					return
				end
			end
			if char.Name == LocalPlayer.Name then
				return
			else
			end
			if E == true then
					E = false
					if TimeTouched == 0 then
						DomainLibrary:WatchTower({
							Title = "CloudzOS {WatchTower}",
							Content = "CloudzOS has Detected <b><i><u>"..char.Name.."</u></i></b> has changed their walkspeed from their normal one. This could be speed hacks or it could be a false detection.",
							Duration = 10,
							Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..char.Name,
							Actions = { -- Notification Buttons
							   Ignore = {
								  Name = "Ignore",
								  Callback = function()
								  return
							   end
							},
							View = {
								Name = "View",
								Callback = function()
								coroutine.wrap(function()
									game.Workspace.Camera.CameraSubject = char.Humanoid
									wait(2)
									DomainLibrary:WatchTower({
										Title = "CloudzOS {Watch Tower}",
										Content = "Since you are viewing whoever set the detection off we can send you back to normal view whenever you're ready.",
										Duration = 6.5,
										Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..char.Name,
										Actions = { -- Notification Buttons
										   Ignore = {
											  Name = "Return back to normal view",
											  Callback = function()
												game.Workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid
										   end
										},
									 },
									})
								end)()
							 end
						  },
						 },
						 })
						TimeTouched += 1
					elseif TimeTouched == 1 then
						TimeTouched += 1
					else
						TimeTouched += 1
					end
					 if TimeTouched == 5 then
						 TimeTouched = 0
					 end
					wait(5)
					E = true
			end
		end)
	end
			end)()
--CHAT SPAM

coroutine.wrap(function()
	for _, Player in ipairs(game:GetService("Players"):GetChildren()) do
	local msgs = {}
	Player.Chatted:Connect(function(msg)
		if Player.Name == LocalPlayer.Name then
			return
		else
		end
		msgs[3] = msgs[2]; msgs[2] = msgs[1]; msgs[1] = msg --sorting order
		
		local duplicateMsgs = 0
		for _, i in pairs(msgs) do
			if i == msg then duplicateMsgs += 1 end --if duplicate then adds 1
		end
		if duplicateMsgs == 3 then --if all 3 are duplicates then
			print(msgs[3])
			DomainLibrary:WatchTower({
				Title = "CloudzOS {Watch Tower}",
				Content = "CloudzOS possibly detected <b><i><u>"..Player.Name.."</u></i></b> to be spamming <b><i><u>('"..msgs[3].."')</u></i></b> in chat and have prompted choices based on this Information.",
				Duration = 6.5,
				Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
				Actions = { -- Notification Buttons
				   Ignore = {
					  Name = "Ignore",
					  Callback = function()
					  return
				   end
				},
				Block = {
					Name = "Block",
					Callback = function()
						game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/mute "..Player.Name,"All")
						DomainLibrary:WatchTower({
							Title = "CloudzOS {Watch Tower}",
							Content = "Based on Information that CloudzOS has detected, CloudzOS has muted <b><i><u>"..Player.Name.."</u></i></b> for 2 minutes.",
							Duration = 10,
							Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
						})
						coroutine.wrap(function()
							wait(120)
							game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/unmute "..Player.Name,"All")
						end)()
				 end
			  },
			 },
			})
			msgs = {} --resets
		end
		coroutine.wrap(function() --so wait() doesn't interfere by yielding
			wait(3) --amount of time until message resets
			for pos, i in pairs(msgs) do
				if i == msg then msgs[pos] = nil; break end
			end
		end)()
	end)
	end
end)()
--
game.Players.PlayerAdded:Connect(function(Player)
	if Domain:FindFirstChild("Home") == false then
		return
	end
	--
	coroutine.wrap(function()
	local msgs = {}
	Player.Chatted:Connect(function(msg)
		if Player.Name == LocalPlayer.Name then
			return
		else
		end
		msgs[3] = msgs[2]; msgs[2] = msgs[1]; msgs[1] = msg --sorting order
		
		local duplicateMsgs = 0
		for _, i in pairs(msgs) do
			if i == msg then duplicateMsgs += 1 end --if duplicate then adds 1
		end
		if duplicateMsgs == 3 then --if all 3 are duplicates then
			print(msgs[3])
			DomainLibrary:WatchTower({
				Title = "CloudzOS {Watch Tower}",
				Content = "CloudzOS possibly detected <b><i><u>"..Player.Name.."</u></i></b> to be spamming <b><i><u>('"..msgs[3].."')</u></i></b> in chat and have prompted choices based on this Information.",
				Duration = 6.5,
				Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
				Actions = { -- Notification Buttons
				   Ignore = {
					  Name = "Ignore",
					  Callback = function()
					  return
				   end
				},
				Block = {
					Name = "Block",
					Callback = function()
						game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/mute "..Player.Name,"All")
						DomainLibrary:WatchTower({
							Title = "CloudzOS {Watch Tower}",
							Content = "Based on Information that CloudzOS has detected, CloudzOS has muted <b><i><u>"..Player.Name.."</u></i></b> for 2 minutes.",
							Duration = 10,
							Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..Player.Name,
						})
						coroutine.wrap(function()
							wait(120)
							game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/unmute "..Player.Name,"All")
						end)()
				 end
			  },
			 },
			})
			msgs = {} --resets
		end
		coroutine.wrap(function() --so wait() doesn't interfere by yielding
			wait(3) --amount of time until message resets
			for pos, i in pairs(msgs) do
				if i == msg then msgs[pos] = nil; break end
			end
		end)()
	end)
	end)()
	--
	Domain.Home.Data.data.Players.Text = "Players: <b>"..tostring(#game.Players:GetChildren()).."/"..tostring(game.Players.MaxPlayers).."</b>"
	if Player.Name == "shlexius" then
		Toast("The developer of DomainX, shlex, has joined your server")
	end
	if LocalPlayer:IsFriendsWith(Player.UserId) then
		DomainLibrary:Notify({
			Title = "CloudzOS {FRN}",
			Content = "Your Friend, "..Player.Name..", has joined your server",
			Duration = 6.5,
			Image = 4335480896,
		 }) 
	end
	AddPlayer(Player)
end)

function RemovePlayer(Player)
	if Domain and Domain:FindFirstChild("Playerlist") and Domain.Playerlist:FindFirstChild("List") then
		if Domain.Playerlist.List:FindFirstChild(Player.Name) then
			Domain.Playerlist.List:FindFirstChild(Player.Name):Destroy()
		end
	end
end

game.Players.PlayerRemoving:Connect(function(Player)
    if LocalPlayer:IsFriendsWith(Player.UserId) then
		DomainLibrary:Notify({
			Title = "CloudzOS {FRN}",
			Content = "Your Friend, "..Player.Name..", has left your server",
			Duration = 6.5,
			Image = 4335480896,
		 }) 
	end
	RemovePlayer(Player)
end)

local mouse = game:GetService('Players').LocalPlayer:GetMouse()
-- Walkspeed
local Walkslider = Domain.Player.Speed.Action
local Walklabel = Domain.Player.Speed.Title
local Walkbar = Domain.Player.Speed.Action.Amount

local uis = game:GetService('UserInputService')
local Walkpadding = {}
local Walkactive
local Walklimit = {16, 225}

function WalkupdatePadding()
	Walkpadding = {
		['Start'] = Walkslider.AbsolutePosition.X,
		['End'] = Walkslider.AbsolutePosition.X + Walkslider.AbsoluteSize.X
	}
end
WalkupdatePadding()

function WalkupdateSlider()
	local posX = math.clamp(mouse.X, Walkpadding.Start, Walkpadding.End)
	local inverse_interpolation = (posX - Walkpadding.Start) / (Walkpadding.End - Walkpadding.Start)
	TweenService:Create(Walkbar, TweenInfo.new(.7,Enum.EasingStyle.Quint),  {Size = UDim2.new(inverse_interpolation, 0, 1, 0)}):Play()
	local value = math.floor(Walklimit[1] + (Walklimit[2] - Walklimit[1]) * inverse_interpolation + .5)
	Walklabel.Text = value.." walkspeed"
	LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = value
end

Walkslider.MouseButton1Down:Connect(function()
	Walkactive = true
	WalkupdateSlider()
end)

-- FOV
local FOVslider = Domain.Player.FOV.Action
local FOVlabel = Domain.Player.FOV.Title
local FOVbar = Domain.Player.FOV.Action.Amount

local uis = game:GetService('UserInputService')
local FOVpadding = {}
local FOVactive
local FOVlimit = {30, 350}

function FOVupdatePadding()
	FOVpadding = {
		['Start'] = FOVslider.AbsolutePosition.X,
		['End'] = FOVslider.AbsolutePosition.X + FOVslider.AbsoluteSize.X
	}
end
FOVupdatePadding()

function FOVupdateSlider()
	local posX = math.clamp(mouse.X, FOVpadding.Start, FOVpadding.End)
	local inverse_interpolation = (posX - FOVpadding.Start) / (FOVpadding.End - FOVpadding.Start)
	TweenService:Create(FOVbar, TweenInfo.new(.7,Enum.EasingStyle.Quint),  {Size = UDim2.new(inverse_interpolation, 0, 1, 0)}):Play()
	local value = math.floor(FOVlimit[1] + (FOVlimit[2] - FOVlimit[1]) * inverse_interpolation + .5)
	FOVlabel.Text = value.." Field of View"
	local transitionInfo = TweenInfo.new(1, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(workspace.CurrentCamera, transitionInfo, {FieldOfView = value})
	tween:Play()
end

FOVslider.MouseButton1Down:Connect(function()
	FOVactive = true
	FOVupdateSlider()
end)

-- Jumppower
local Jumpslider = Domain.Player.Jumppower.Action
local Jumplabel = Domain.Player.Jumppower.Title
local Jumpbar = Domain.Player.Jumppower.Action.Amount

local uis = game:GetService('UserInputService')
local Jumppadding = {}
local Jumpactive
local Jumplimit = {50, 350}

function JumpupdatePadding()
	Jumppadding = {
		['Start'] = Jumpslider.AbsolutePosition.X,
		['End'] = Jumpslider.AbsolutePosition.X + Jumpslider.AbsoluteSize.X
	}
end
JumpupdatePadding()

function JumpupdateSlider()
	local posX = math.clamp(mouse.X, Jumppadding.Start, Jumppadding.End)
	local inverse_interpolation = (posX - Jumppadding.Start) / (Jumppadding.End - Jumppadding.Start)
	TweenService:Create(Jumpbar, TweenInfo.new(.7,Enum.EasingStyle.Quint),  {Size = UDim2.new(inverse_interpolation, 0, 1, 0)}):Play()
	local value = math.floor(Jumplimit[1] + (Jumplimit[2] - Jumplimit[1]) * inverse_interpolation + .5)
	Jumplabel.Text = value.." jumppower"
	LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = value

end

Jumpslider.MouseButton1Down:Connect(function()
	Jumpactive = true
	JumpupdateSlider()
end)

-- FlySpeed
local flyslider = Domain.Player.FlySpeed.Action
local flylabel = Domain.Player.FlySpeed.Title
local flybar = Domain.Player.FlySpeed.Action.Amount

local uis = game:GetService('UserInputService')
local flypadding = {}
local flyactive
local flylimit = {1, 20}

function flyupdatePadding()
	flypadding = {
		['Start'] = flyslider.AbsolutePosition.X,
		['End'] = flyslider.AbsolutePosition.X + flyslider.AbsoluteSize.X
	}
end
flyupdatePadding()

function flyupdateSlider()
	local posX = math.clamp(mouse.X, flypadding.Start, flypadding.End)
	local inverse_interpolation = (posX - flypadding.Start) / (flypadding.End - flypadding.Start)
	TweenService:Create(flybar, TweenInfo.new(.7,Enum.EasingStyle.Quint),  {Size = UDim2.new(inverse_interpolation, 0, 1, 0)}):Play()
	local value = math.floor(flylimit[1] + (flylimit[2] - flylimit[1]) * inverse_interpolation + .5)
	flylabel.Text = value.." flyspeed"
	PlayerFlySpeed = value
end

flyslider.MouseButton1Down:Connect(function()
	flyactive = true
	flyupdateSlider()
end)

uis.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		Jumpactive = false
		Walkactive = false
		flyactive = false
	end
end)

Domain.JoinCodes.CreateJC.MouseButton1Click:Connect(function()
	if UserIsPro then
		Toast("Creating Join Code..")
		local result = game:HttpGet("https://shlex.dev/api/joincodes/createcode.php?gid=".. game.PlaceId ..":".. game.JobId)
		Domain.CreateCode.Visible = true
		if result ~= "fail" then
			Domain.CreateCode.GeneratedCode.TextEditable = false
			Domain.CreateCode.GeneratedCode.ClearTextOnFocus = false
			Domain.CreateCode.GeneratedCode.Text = result
			Toast("Copied '"..result.."', your join code, to clipboard")
			if setclipboard then
				setclipboard(result)
			elseif copyclipboard then
				copycliboard(result)
			end
		end
	else
		Toast("You have to be Pro to use this feature")
		PromptPremium()
	end
end)

Domain.JoinCodes.CodeBox.JCText.FocusLost:Connect(function()

	local code = Domain.JoinCodes.CodeBox.JCText.Text

	local result = game:HttpGet("https://shlex.dev/api/joincodes/usecode.php?code=".. code);

	if result ~= "invalid" and result ~= "fail" then
		local decoded = game:GetService('HttpService'):JSONDecode(result)

		local placeId = decoded["Game"]
		local serverId = decoded["ServerId"]
		for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
			if v.id == serverId then
				Domain.JoinCodes.PlrOnlineText.Text = v.playing.. " players in server"
			end
		end	
	else
		Toast("Unable to locate Join Code data")
	end	
end)

Domain.JoinCodes.CodeBox.SendJC.MouseButton1Click:Connect(function()
	local code = Domain.JoinCodes.CodeBox.JCText.Text

	local result = game:HttpGet("https://shlex.dev/api/joincodes/usecode.php?code=".. code);

	if result ~= "invalid" and result ~= "fail" then
		local decoded = game:GetService('HttpService'):JSONDecode(result)

		local placeId = decoded["Game"]
		local serverId = decoded["ServerId"]
		Toast("Teleporting..")
		game:GetService("TeleportService"):TeleportToPlaceInstance(placeId, serverId)
	end	
end)

workspace.CurrentCamera:GetPropertyChangedSignal('ViewportSize'):Connect(function()
	wait(.5)
	JumpupdatePadding()
	WalkupdatePadding()
	flyupdatePadding()
end)

mouse.Move:Connect(function()
	if Jumpactive then
		JumpupdateSlider()
	end
	if Walkactive then
		WalkupdateSlider()
	end
	if flyactive then
		flyupdateSlider()
	end
end)

Domain.Home.ControlPanel.Buttons.Power.Interact.MouseButton1Click:Connect(function() -- BOOKMARKEND
	CloseHome()
	Toast("Killing CloudzOS...","GothamBold",Color3.fromRGB(110, 13, 0),3)
	wait(0.2)
	Toast("Goodbye!","GothamBold",Color3.fromRGB(110, 13, 0),3)
	wait(3)
	wait(0.5)
	for _, ins in ipairs(Domain:GetChildren()) do
		if ins.Name ~= "byebye" and ins.Name ~= "byebye2" then
			ins.Visible = false
		end
	end
	Domain.byebye.Visible = true
	Domain.byebye2.Visible = true
	wait(2)
	Domain.byebye.Visible = false
	Domain.byebye2.Visible = false
end)

Domain.Settings.Close.MouseButton1Click:Connect(function()
	CloseJC1()
end)
Domain.CreateCode.Close.MouseButton1Click:Connect(function()
	Domain.CreateCode.Visible = false
end)

function LightMode()
	for _, obj in ipairs(Domain:GetDescendants()) do
		if obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.TextColor3 == Color3.fromRGB(238,238,238) then
				obj.TextColor3 = Color3.fromRGB(39, 39, 39)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27, 27, 27)), ColorSequenceKeypoint.new(0.52, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(36, 36, 36))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Color3.fromRGB(238,238,238)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(58, 58, 58)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(238, 238, 238))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 49, 49))} then
				obj.UIGradient.Enabled = false
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(238, 238, 238) then
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(62,62,62) then
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(47,47,47) then
				obj.BackgroundColor3 = Color3.fromRGB(189, 189, 189)
			end
		end
	end
end

function DarkMode()
	for _, obj in ipairs(Domain:GetDescendants()) do
		if obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.TextColor3 == Color3.fromRGB(39,39,39) then
				obj.TextColor3 = Color3.fromRGB(238,238,238)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27, 27, 27)), ColorSequenceKeypoint.new(0.52, Color3.fromRGB(34, 34, 34)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(36, 36, 36))} then
				obj.UIGradient.Enabled = true
				obj.BackgroundColor3 = Color3.fromRGB(255,255,255)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(58, 58, 58)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(238, 238, 238))} then
				obj.UIGradient.Enabled = true
				obj.BackgroundColor3 = Color3.fromRGB(255,255,255)
			end
		end
		if obj:FindFirstChild("UIGradient") and obj.ClassName == "Frame" then
			if obj.UIGradient.Color == ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(49, 49, 49))} then
				obj.UIGradient.Enabled = true
				obj.BackgroundColor3 = Color3.fromRGB(255,255,255)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(2189, 189, 189) then
				obj.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(189, 189, 189) then
				obj.BackgroundColor3 = Color3.fromRGB(62,62,62)
			end
		end
		if obj.ClassName == "Frame" or obj.ClassName == "TextButton" or obj.ClassName == "TextLabel" or obj.ClassName == "Textbox" then
			if obj.BackgroundColor3 == Color3.fromRGB(189, 189, 189) then
				obj.BackgroundColor3 = Color3.fromRGB(47,47,47)
			end
		end
	end
end

local LightingMode = "Dark"
Domain.Home.ControlPanel.Buttons.Lighting.Interact.MouseButton1Click:Connect(function()
	if LightingMode == "Dark" then
		LightMode()
		LightingMode = "Light"
	else
		DarkMode()
		LightingMode = "Dark"
	end
end)

Domain.Home.ControlPanel.Buttons.Notification.Interact.MouseButton1Click:Connect(function()
	if NotificationsEnabled then
		NotificationsEnabled = false
		Domain.Notification.Interact.ImageRectOffset = Vector2.new(244, 564)
	else
		Domain.Notification.Interact.ImageRectOffset = Vector2.new(324, 924)
		NotificationsEnabled = true
	end
end)

Domain.Player.Refresh.Interact.MouseButton1Click:Connect(function()
	local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Player.Refresh, transitionInfo, {BackgroundColor3 = Color3.fromRGB(0, 132, 70)})
	tween:Play()
	Refresh()
end)
Domain.Player.Serverhop.Interact.MouseButton1Click:Connect(function()
	Serverhop()
end)
LocalPlayer.CharacterAdded:Connect(function(Character)
	if ThemeEnabled then
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Refresh, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Respawn, transitionInfo, {BackgroundColor3 = Theme.SecondaryColor})
		tween:Play()
	else
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Refresh, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62, 62, 62)})
		tween:Play()
		local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
		local tween = TweenService:Create(Domain.Player.Respawn, transitionInfo, {BackgroundColor3 = Color3.fromRGB(62, 62, 62)})
		tween:Play()
	end
	local transitionInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Walkbar, transitionInfo, {Size = UDim2.new(0,0,1,0)})
	tween:Play()
	local transitionInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Jumpbar, transitionInfo, {Size = UDim2.new(0,0,1,0)})
	tween:Play()
	Jumplabel.Text = "50 jumppower"
	Walklabel.Text = "16 walkspeed"
end)

function BoostFrames()
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 0
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 0
	workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0
	workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
end

function UnBoostFrames()
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSize = 1
	workspace:FindFirstChildOfClass('Terrain').WaterWaveSpeed = 1
	workspace:FindFirstChildOfClass('Terrain').WaterReflectance = 0.33
	workspace:FindFirstChildOfClass('Terrain').WaterTransparency = 0.1
	game:GetService("Lighting").GlobalShadows = true
	settings().Rendering.QualityLevel = 7
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(.3)
		elseif v.Name == "face" and v.Parent.Name == "Head" and v:IsA("Decal") then
			v.Transparency = 0
		end
	end
end

local UpdatedFPS = false
local RunService = game:GetService("RunService")
RunService.RenderStepped:Connect(function(step)
	local fps = 1/step
	UpdatedFPS = math.floor(fps)
end)

BootDomainX()

--KP CONFIG
function BlackoutEnabled()
	warn("Facility Blackout","rbxassetid://11668712830",Color3.fromRGB(166, 41, 41),750)
end

function MainPowerEnabled()
	warn("Facility Power Reboot","rbxassetid://11803193349",Color3.fromRGB(0, 255, 132),10)
end

function PoweroutageEnabled()
	warn("Facility Power Outage","rbxassetid://11668719379",Color3.fromRGB(181, 126, 31),750)
end
--KP CONFIG

function CheckTime()

	if tonumber(GetDate():format("#h")) > 12 then
		Domain.Home.Welcome.Text = "Good Evening, "..LocalPlayer.DisplayName
	else
		Domain.Home.Welcome.Text = "Morning, "..LocalPlayer.DisplayName
	end
	if tonumber(GetDate():format("#h")) == 0 then
		Domain.Home.WelcomeSub.Text = "Remember to smile!"
	elseif tonumber(GetDate():format("#h")) >= 1 then
		Domain.Home.WelcomeSub.Text = "Up bright and early!"
	end
	if tonumber(GetDate():format("#h")) > 19 then
		Domain.Home.WelcomeSub.Text = "It's getting late."
	end
end

coroutine.wrap(function()
	Domain.Main.Time.Text = tostring(GetDate():format("#H:#m"))
	Domain.Main.Time.AMPM.Text = tostring(GetDate():format("#a"))
	wait(1)
	if Domain then
		CheckTime()
		local function updstuff()
			timesince = timesince + 4
			Domain.Home.Data.data.Version.Text = "Version: <b>v"..Release.."</b>"
			Domain.Home.Data.data.Time.Text = tostring(GetDate():format("#H:#m #a"))
			if not CheckWritefile() then
				Domain.Home.Data.data.File.Text = "Data File: <b>Disabled</b>"
			else
				Domain.Home.Data.data.File.Text = "Data File: <b>Loaded</b>"
			end	


		end

		pcall(updstuff)

	end
	local function CheckFriends()
		local friendsId = LocalPlayer.UserId
		local PlayersFriends = {}
		local success, page = pcall(function() return playerservice:GetFriendsAsync(friendsId) end)
		if success then
			repeat
				local info = page:GetCurrentPage()
				for i, friendInfo in pairs(info) do
					table.insert(PlayersFriends, friendInfo)
				end
				if not page.IsFinished then 
					page:AdvanceToNextPageAsync()
				end
			until page.IsFinished
		end
		local FriendsInTotal = 0
		local OnlineFriends = 0 
		local FriendsInGame = 0 
		for i,v in pairs(PlayersFriends) do
			FriendsInTotal  = FriendsInTotal + 1
			if v.IsOnline then
				OnlineFriends = OnlineFriends + 1
			end
			if game.Players:FindFirstChild(v.Username) then
				FriendsInGame = FriendsInGame + 1
			end
		end
		Domain.Home.Friends.All.FriendsAll.Text = tostring(FriendsInTotal).." users"
		Domain.Home.Friends.Offline.FriendsOffline.Text = tostring(FriendsInTotal - OnlineFriends).." users"
		Domain.Home.Friends.Online.FriendsOnline.Text = tostring(OnlineFriends).." users"
		Domain.Home.Friends.InServer.FriendsInGame.Text = tostring(FriendsInGame).." users"
	end
	pcall(CheckFriends)
end)()

        local LoadedCustomScripts = 0
        for _, file in ipairs(listfiles(CustomFolderName)) do -- check files
            local NewCustomScript = game:GetService("HttpService"):JSONDecode(readfile(file))
            local NewTable = {
                Name = NewCustomScript.Name,
                Description =  NewCustomScript.Description,
                Games = NewCustomScript.Games,
                Loadstring = NewCustomScript.Loadstring,
            }
            table.insert(CustomScripts,NewTable)
            LoadedCustomScripts = LoadedCustomScripts + 1
        end
        if LoadedCustomScripts == 1 then
            --Toast("Successfully loaded "..LoadedCustomScripts.." custom script")
        elseif LoadedCustomScripts > 1 then
            --Toast("Successfully loaded "..LoadedCustomScripts.." custom scripts")
        end

-- NO --
coroutine.wrap(function()
while task.wait() do
    pcall(function()
		local LocalPlayer = game:GetService("Players").LocalPlayer;
        local connection = syn.websocket.connect("ws://localhost:55555/")

        connection:Send("Account Connected: "..LocalPlayer.DisplayName.." ("..LocalPlayer.Name..")")
        DomainLibrary:Notify({
            Title = "CloudzOS {DV PLG}",
            Content = "Visual Studio Code Has Successfully Connected to Synapse X : "..LocalPlayer.DisplayName.." ("..LocalPlayer.Name..")",
            Duration = 3,
            Image = 11602461955,
         })
        connection.OnMessage:Connect(function(call) 
            local callback, output = loadstring(call);
            if not callback then
                connection:Send("Runtime◘ "..output); --Error Runtime
            else
                local status, console = pcall(callback) --Error Compile
                if console then connection:Send("Compile◘ "..console) end
            end
        end)

        connection.OnClose:Wait() 
    end)
end
end)()

wait(1)
-- Configurations -- 
coroutine.wrap(function()

ThoseWhoRemain = {488667523, 8287862132}

-- QS Energy Research Facility
if(game.PlaceId == 3039795291) then
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	DomainLibrary:RiskAnalysis({
		AntiCheat = false,
		ModTeam = true,
		Development = false,
		ReportSystem = true,
		Conclusion = "<b>"..GameName.."'s</b> anti-cheat systems are solid but actually they rely on their player's and moderation teams to ban exploiters. They have a Discord server to be able to report Exploiters on so it is best to be cautious of mods and players as well.",
 	})
	--
	DMRInterface.Top.Temps.Text = "Waiting For Server"
	DMRInterface.Top.Integ.Text = "Waiting For Server"
	DMRInterface.Top.AvgFuel.Text = "Waiting For Server"
	DMRInterface.Top2.Grid.Text = "Waiting For Server"
	Toast("CloudzOS is attempting to locate a DMR Monitoring Server","GothamBlack",Color3.fromRGB(112, 28, 140),7)
	--
	local DMRCoreMonitors = game:GetService("Workspace").ReactorControlInterfaces.Monitors.PowerBoard:WaitForChild("Diagram2")
	local DMRCoreMonitor = game:GetService("Workspace").ReactorControlInterfaces.Monitors.PowerBoard.Diagram2.Monitoring:WaitForChild("CoreTemp")
	--
	local MaintenanceText = game:GetService("Workspace").ReactorControlInterfaces.Monitors.Maintenance.Maintenance.TextLabel.Text
	local Maintenance = game:GetService("Workspace").ReactorControlInterfaces.Monitors.Maintenance.Maintenance
	--
	wait(3)
	Toast("CloudzOS has succesfully located a DMR Monitoring Server and has connected to it!","GothamBlack",Color3.fromRGB(112, 28, 140),7)
	wait(1.5)
	openDMRInterface()
	--
	local DMRTemps = game:GetService("Workspace").ReactorControlInterfaces.Monitors.PowerBoard.Diagram2.Monitoring.CoreTemp.Text
	local DMRInteg = game:GetService("Workspace").ReactorControlInterfaces.Monitors.PowerBoard.Diagram2.Monitoring.CoreInteg.Text
	local AvgrFuel = game:GetService("Workspace").ReactorControlInterfaces.Monitors.CoreTemp.Screen.Main.AvgFuel.Text
	coroutine.wrap(function()
	while true do
		wait(0.1)
		DMRInterface.Top.Temps.Text = "DMR Temperatures :"..game:GetService("Workspace").ReactorControlInterfaces.Monitors.PowerBoard.Diagram2.Monitoring.CoreTemp.Text
		DMRInterface.Top.Integ.Text = "DMR Integrity :"..game:GetService("Workspace").ReactorControlInterfaces.Monitors.PowerBoard.Diagram2.Monitoring.CoreInteg.Text
		--
		DMRInterface.Top.AvgFuel.Text = "DMR Average Fuel :"..game:GetService("Workspace").ReactorControlInterfaces.Monitors.CoreTemp.Screen.Main.AvgFuel.Text
		--
		DMRInterface.Top2.Grid.Text = "-- "..game:GetService("Workspace").Electrical.Screens.GridMangOutput3.Screen.Sys.Grid.Text.." --"
		------
		DMRInteg = game:GetService("Workspace").ReactorControlInterfaces.Monitors.PowerBoard.Diagram2.Monitoring.CoreInteg.Text
		AvgrFuel = game:GetService("Workspace").ReactorControlInterfaces.Monitors.CoreTemp.Screen.Main.AvgFuel.Text
	end
	end)()
	--
	local GUIColor = 255,255,255
	--
	coroutine.wrap(function()
		while true do
			wait(0.1)
		if Maintenance.Enabled == true then
		DMRInterface.Title.Text = "DMR {Maintenance Mode}"
		elseif Maintenance.Enabled == false then
		DMRInterface.Title.Text = "Dark Matter Reactor"
		end
		--
		end
	end)()
	
	coroutine.wrap(function()
		while true do
			wait(0.1)
		DMRTemps = game:GetService("Workspace").ReactorControlInterfaces.Monitors.PowerBoard.Diagram2.Monitoring.CoreTemp.Text
		if Maintenance.Enabled == true then
		GUIColor = Color3.fromRGB(201, 101, 24)
		changecolor()
		elseif DMRTemps >= "3000" then
		GUIColor = Color3.fromRGB(217, 67, 67)
		changecolor()
		elseif DMRTemps >= "2000" then
		GUIColor = Color3.fromRGB(201,120,6)
		changecolor()
		else
		GUIColor = Color3.fromRGB(255,255,255)
		changecolor()
		end
		--
		end
	end)()
	--
	local CoreRGB = rgb255RichText(Color3.fromRGB(255,255,255))
	function changecolor()
		if DMRInterface.DMRView.ImageColor3 == GUIColor then
			return
		else
		TweenService:Create(DMRInterface.DMRView, TweenInfo.new(1, Enum.EasingStyle.Quint), {ImageColor3 = GUIColor}):Play()
		TweenService:Create(DMRInterface.Title, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextColor3 = GUIColor}):Play()
		--
		wait(0.2)
		TweenService:Create(DMRInterface.Top.Integ, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextColor3 = GUIColor}):Play()
		TweenService:Create(DMRInterface.Top.AvgFuel, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextColor3 = GUIColor}):Play()
		TweenService:Create(DMRInterface.Top.Temps, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextColor3 = GUIColor}):Play()
		TweenService:Create(DMRInterface.Top.Title, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextColor3 = GUIColor}):Play()
		--
		wait(0.2)
		TweenService:Create(DMRInterface.Top2.Grid, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextColor3 = GUIColor}):Play()
		TweenService:Create(DMRInterface.Top2.Title, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextColor3 = GUIColor}):Play()
		wait(2)
		DMRTemps = game:GetService("Workspace").ReactorControlInterfaces.Monitors.PowerBoard.Diagram2.Monitoring.CoreTemp.Text
		if Maintenance.Enabled == true then
		CoreRGB = rgb255RichText(Color3.fromRGB(255, 0, 0))
		FastToast("DMR Has Entered <u><b>Maintenance Mode</b></u>! Refuelling is now in progress!","GothamBold",Color3.fromRGB(201, 101, 24),5)
		elseif DMRTemps >= "3000" then
		CoreRGB = rgb255RichText(Color3.fromRGB(255, 0, 0))
		FastToast("DMR Temperatures have reached <u><b>"..[[<font color="]]..CoreRGB..[[">]]..DMRTemps..[[</font>]].."</b></u> please cooldown the core!","GothamBold",Color3.fromRGB(217, 67, 67),5)
		elseif DMRTemps >= "2000" then
		CoreRGB = rgb255RichText(Color3.fromRGB(255, 179, 0))
		FastToast("DMR Temperatures have reached <u><b>"..[[<font color="]]..CoreRGB..[[">]]..DMRTemps..[[</font>]].."</b></u> please proceed with caution!","GothamBold",Color3.fromRGB(201,120,6),5)
		else
		end
		end	
	end
end

-- Innovation Arctic Base
if(game.PlaceId == 1033860623) then
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	DomainLibrary:RiskAnalysis({
		AntiCheat = false,
		ModTeam = true,
		Development = false,
		ReportSystem = false,
		Conclusion = "<b>"..GameName.."'s</b> anti-cheat systems are non-existant. there have been none identified quite yet and no report systems. but there is a security team that Mel is apart of and tends to be strict on what they do. Not sure if they can ban exploiters but seems like they're unable to but can change in the future.",
 	})
end

-- Da Hood
if(game.PlaceId == 2788229376) then
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	DomainLibrary:RiskAnalysis({
		AntiCheat = true,
		ModTeam = true,
		Development = false,
		ReportSystem = true,
		Conclusion = "<b>"..GameName.."'s</b> anti-cheat systems are actually pretty solid. They can detect any normal fly so using CloudzOS's Fly system or Inf. Yeild's fly or ANY fly that hasn't been made for da hood specifically will get you perm banned instantly and there might be some more to it. you can also report players and mod teams do play and will launch investigations if you are suspected of cheating.",
 	})
end

-- Arsenal
if(game.PlaceId == 286090429) then
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	DomainLibrary:RiskAnalysis({
		AntiCheat = true,
		ModTeam = true,
		Development = false,
		ReportSystem = true,
		Conclusion = "<b>"..GameName.."'s</b> anti-cheat systems are.. odd for an FPS game. they don't seem to be developing it and they don't detect anything that flies although you are able to report exploiters and there is a mod team although unknown if they actually play. Watch out for players they can report you though",
 	})
end

-- Funky Friday
if(game.PlaceId == 6447798030) then
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	DomainLibrary:RiskAnalysis({
		AntiCheat = false,
		ModTeam = true,
		Development = false,
		ReportSystem = false,
		Conclusion = "<b>"..GameName.."'s</b> anti-cheat systems are non-existant they don't even have anything to stop exploiters from.. well, exploiting. although they seem to have a staff team and we're not even sure they play the game. other than that... ruin people's lives!",
 	})
end

-- Those Who Remain
for _, GameID in pairs(ThoseWhoRemain) do
	if GameID == game.PlaceId then
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	DomainLibrary:RiskAnalysis({
		AntiCheat = false,
		ModTeam = true,
		Development = false,
		ReportSystem = true,
		Conclusion = "<b>"..GameName.."'s</b> anti-cheat systems are not too great (there isnt any actual in-game anti-cheat that has been found) and it relys on Players to actually report them and they seem to actually be pretty observant (6 exploiters banned daily as of 12/17/22) and they can be a big threat being able to tell what is inf ammo and aim-lock. Be Careful amongst the players.",
 	})
	end
end

-- Avatar Customizer
if(game.PlaceId == 2500382478) then
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	DomainLibrary:RiskAnalysis({
		AntiCheat = true,
		ModTeam = false,
		Development = false,
		ReportSystem = false,
		Conclusion = "<b>"..GameName.."'s</b> anti-cheat system is actually really good for an avatar game. It managed to catch Mel flying im pretty sure and banned him for about a month. it is still not too good but better than expected though since there is no discord server it does lack a lot of things and its unknown whether its getting developed or not.",
 	})
end

-- BLOXBURG
if(game.PlaceId == 185655149) then
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	DomainLibrary:RiskAnalysis({
		AntiCheat = false,
		ModTeam = true,
		Development = false,
		ReportSystem = true,
		Conclusion = "<b>"..GameName.."'s</b> anti-cheat systems are pretty unknown at the moment although it might somehow be able to detect whenever you work for long periods of times, possibly whenever GUI's are added to the player's CoreGui, or something else. Whatever it is. it managed to ban Mel and their appeal system is VERY strict. be VERY cautious in this game",
 	})
	wait(3)
	 DomainLibrary:WatchTower({
		Title = "CloudzOS {Watch Tower}",
		Content = "Based on Information from the Analysis of <b>"..GameName.."'s</b> anti-cheat systems, we have asked if CloudzOS should stay open.",
		Duration = 10,
		Image = "rbxassetid://11849580844",
		Actions = { -- Notification Buttons
     		 Action1 = {
        		Name = "Keep CloudzOS Open",
         		Callback = function()
      			end
   			},
			   Action2 = {
        		Name = "Close and Kill CloudzOS",
         		Callback = function()
				Toast("CloudzOS will be closed in 5 seconds.","GothamBold",Color3.fromRGB(166, 41, 41),3)
				wait(5)
         		olduidestroy()
      			end
   			},
		},
	})
	--
end

-- KAIJU PARADISE
for _, GameID in pairs(KaijuParadise) do
	if GameID == game.PlaceId then
	local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
	DomainLibrary:RiskAnalysis({
		AntiCheat = true,
		ModTeam = true,
		Development = true,
		ReportSystem = true,
		Conclusion = "<b>"..GameName.."'s</b> anti-cheat systems seems to have been rushed at the beginning although is being heavily worked on and its not much of a threat right now. The easiest way right now to be banned is by a player reporting you and or possible moderators being in the game. watch out.",
 	})
	--
	local poweroutage = game:GetService("Workspace").Events.PowerOutage
	local blackout = game:GetService("Workspace").Events.Blackout
	local blackouttoggle = false
	local power
	coroutine.wrap(function()
		repeat
			wait(0.2)
		until blackout.Value == true or poweroutage.Value == true
		if blackout.Value == true then
			BlackoutEnabled()
			blackouttoggle = true
			coroutine.wrap(function()
				wait(755)
				if blackout.Value == true then
					warn("Facility Blackout","rbxassetid://11668712830",Color3.fromRGB(166, 41, 41),300)
					local sound = Instance.new("Sound")
					sound.Parent = Domain
					sound.SoundId = "rbxassetid://"..1247750855
					sound.Name = "notify4"
					sound.Volume = 2
					sound.PlayOnRemove = true
					sound:Destroy()
				end
			end)()
			wait(100)
			Toast("And there is a timer going on {not sure how accurate it is}","GothamBold",Color3.fromRGB(166, 41, 41),6.5)
		elseif poweroutage.Value == true then
			PoweroutageEnabled()
			loops = false
			coroutine.wrap(function()
				wait(755)
				if poweroutage.Value == true then
					warn("Facility Power Outage","rbxassetid://11668719379",Color3.fromRGB(181, 126, 31),300)
					local sound = Instance.new("Sound")
					sound.Parent = Domain
					sound.SoundId = "rbxassetid://"..1247750855
					sound.Name = "notify5"
					sound.Volume = 2
					sound.PlayOnRemove = true
					sound:Destroy()
				end
			end)()
			wait(100)
			Toast("And Yes the timer is going down! {not sure how accurate it is}","GothamBold",Color3.fromRGB(181, 126, 31),6.5)
		end
	end)()


	coroutine.wrap(function()
	function gogglecheck()
	local check = true
	function looking()
	while true do
		wait(1)
		local goggle = game.Workspace.Terrain:FindFirstChild("Nightvision")
	
		if goggle then
		
	check = false
			break
		end
	end
	
	end
	
	looking()
	
	local goggle = game.Workspace.Terrain:FindFirstChild("Nightvision")
	local transfur = game.Players.LocalPlayer.Character:FindFirstChild("Transformed")
	local blackout = game.Workspace.Events:FindFirstChild("Blackout")
	local blackon = blackout.Value == true
	local blackoff = blackout.Value == false
	if blackon then
	   print("blackout is on!")
	   if goggle then
	   local goggles = goggle:FindFirstChild("Hitbox")
	   if goggles then
		local sound = Instance.new("Sound")
					sound.Parent = Domain
					sound.SoundId = "rbxassetid://"..5621616510
					sound.Name = "spawned"
					sound.Volume = 2
					sound.PlayOnRemove = true
					sound:Destroy()
		   print("Found Goggles!")
		   print("Goggles cords:", goggles.Position)
		   local x = game.Players.LocalPlayer.Character
		   print("Your cords are: ", x.Torso.Position)
		   if goggles and x then
			   if transfur then
				print("Reset!") 
			else
				Toast("CloudzOS has found the NightCrawler Goggles and has Prompted Choices for it","GothamBold",Color3.fromRGB(112, 28, 140),7)
				DomainLibrary:Notify({
					Title = "CloudzOS {AI}",
					Content = "Goggles : What would you like to do with them?",
					Duration = 6.5,
					Image = 4483362458,
					Location = "Bottom",
					Actions = { -- Notification Buttons
						Ignore2 = {
							Name = "Teleport",
							Callback = function()
								x.HumanoidRootPart.CFrame = CFrame.new(goggles.Position)
							end
						},
						Ignore3 = {
							Name = "Highlight",
							Callback = function()
								for __,v in pairs(game.workspace.Terrain:GetDescendants()) do -- the path
									if v.Name == "Nightvision" then -- the item
										local ae = Instance.new("Highlight",v) -- pretty much explains everything
												ae.Name = "highlightui"
												ae.FillColor = Color3.new(1, 1, 1)
												ae.FillTransparency = 0.30000001192092896
										local a = Instance.new("BillboardGui",v) -- pretty much explains everything
												a.Name = "ElectricPPPGUI"
												a.Size = UDim2.new(0, 200, 0, 200)
												a.AlwaysOnTop = true
										local c = Instance.new('TextLabel',a)
												c.Font = Enum.Font.GothamBold
												c.Text = "Goggles"
												c.TextColor3 = Color3.new(0.941176, 0.941176, 0.941176)
												c.TextSize = 23
												c.TextWrapped = true
												c.BackgroundColor3 = Color3.new(1, 1, 1)
												c.BackgroundTransparency = 1
												c.BorderSizePixel = 0
												c.Size = UDim2.new(0, 200, 0, 50)
												c.ZIndex = 105
												c.Name = "c"
									end
								end
								
							end
						},
						Ignore = {
							Name = "Ignore",
							Callback = function()
								
							end
						},
					},
				})
					end
		   		end
	   		end
	   	end
	end
	end
	gogglecheck()
	end)()
	Toast("Configuration Found and Loaded : KP ","GothamSemibold",Color3.fromRGB(181, 136, 31),2)
	end
end

--
end)()
-- END OF CONFIGURATIONS

local KeybindRGB = rgb255RichText(Color3.fromRGB(9, 227, 172))

--
wait(0.5)

Toast("CloudzOS has Loaded in completely in "..CheckExecutionTime().." Seconds","GothamMedium",Color3.fromRGB(130, 31, 184),3)
if not ExecutorAutomatic and not firsttime then
	Toast("Welcome Back to CloudzOS v"..Release.. ", "..LocalPlayer.DisplayName,"GothamBlack",Color3.fromRGB(202, 172, 242))
	wait(1)
	FastToast("Tap <u><b>"..[[<font color="]]..KeybindRGB..[[">]]..Keybind..[[</font>]].."</b></u> to hide the SmartBar","GothamBold",Color3.fromRGB(202, 172, 242),5)
end

coroutine.wrap(function()
	while true do
		wait(1.5)
		FpsLabel.Text = tostring(UpdatedFPS)
	end
end)()

--

coroutine.wrap(function()
while true do
    wait(0.1)
    Domain.Home.Data.data.Time.Text = "Current Time : "..tostring(GetDate():format("#H:#m:#s #a"))
	Domain.Main.Time.Text = tostring(GetDate():format("#H:#m"))
	Domain.Main.Time.AMPM.Text = tostring(GetDate():format("#a"))
	Domain.Main.Time.Text = tostring(GetDate():format("#H:#m"))
	Domain.Main.Time.AMPM.Text = tostring(GetDate():format("#a"))
end
end)()

coroutine.wrap(function()
	local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
	local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {Transparency = 0})
	tween:Play()
	while true do
		wait(0.5)	
		if math.floor(tick() % 60) == 59 then
		local transitionInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {Size = UDim2.new(0, 35, 0, 2)})
		tween:Play()
		wait(0.3)
		local transitionInfo = TweenInfo.new(59.7, Enum.EasingStyle.Linear)
		local tween = TweenService:Create(Domain.Main.Time.Seconds, transitionInfo, {Size = UDim2.new(0, 0, 0, 2)})
		tween:Play()	
		end
	end
end)()
--