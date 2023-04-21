--[[

                 /\/\     _________ .__                   .___      ________    _________    __________                  __      __        .__  __                /\      /\                   
                 \ \ \    \_   ___ \|  |   ____  __ __  __| _/______\_____  \  /   _____/    \______   \ ____           /  \    /  \_______|__|/  |_  ____       / /     / /                   
  ______   ______ \ \ \   /    \  \/|  |  /  _ \|  |  \/ __ |\___   //   |   \ \_____  \      |       _// __ \   ______ \   \/\/   /\_  __ \  \   __\/ __ \     / /     / /    ______   ______ 
 /_____/  /_____/  \ \ \  \     \___|  |_(  <_> )  |  / /_/ | /    //    |    \/        \     |    |   \  ___/  /_____/  \        /  |  | \/  ||  | \  ___/    / /     / /    /_____/  /_____/ 
                    \ \ \  \______  /____/\____/|____/\____ |/_____ \_______  /_______  /     |____|_  /\___  >           \__/\  /   |__|  |__||__|  \___  >  / /     / /                      
                     \/\/         \/                       \/      \/       \/        \/             \/     \/                 \/                        \/   \/      \/                       

______
DESCRIPTION:

This is a full re-write of the Smart Script known as CloudzOS also known as Project Cloudz developed by Cloudy Studios.
this is being developed by one developer only and this is an attempt to try and fix as many bugs and useless code that isnt being used in CloudzOS.

--
    Updating Format Examples
    --
    Updated to v.5.15 | CLDZ
    --
    Fixes to v.5.15 | Home Bar
    --
    Disabled Toxicity Detection | v.5.15
    = = = =
    Reason/Version | Type/Version/FixReason
]]

-- Update Variables

local Release = 5.15
local ReleaseType = "CLDZ"
local UpdateDetail = "Ro-Ghoul Configuration Added along with a UI! WARNING UI NEEDS TO BE RELOADED AFTER IT IS CLOSED"
local Public = false
local Beta = false

-- UI Load Variables

local GuiService = game:GetService("GuiService")
local CloudzOS = game:GetObjects("rbxassetid://12571264225")[1]
--//
local protected = false
local parent = game:GetService("CoreGui")
if syn and syn.protect_gui then
	syn.protect_gui(CloudzOS)
	protected = true
end
--

CloudzOS.Parent = parent
CloudzOS.Main.Visible = true
CloudzOS.Main.Position = UDim2.new(0.5, 0, 1.25, 0)
CloudzOS.Prompts.Position = UDim2.new(0.055, 0,-0.005, 0)
CloudzOS.DisplayOrder = 1000
--\\

-- Variables
local DefaultKeybind = "K"
local DiscordLink = "https://discord.gg/HjvQugvWVJ"
local DiscordLink2 = "HjvQugvWVJ"
local NotificationDuration = 6.5
local DomainEnabled = true
local Price = "$7.99"
local CustomFolderName = "DomainX Custom Scripts"
local KeyWaitTime = 60
local CldzReq = http_request or request or (syn and syn.request) 
local AI = CldzReq({ Url = "https://api.ipify.org/", Method = "Get" }).Body;

local KeySystemEnabled = false
local NewPremiumSystem = true
local Connected = true
local homedb = false
local db = false
local Keybind = DefaultKeybind

local UpdateAvailable = false
local PlayersService = game:GetService("Players")
local PlayerFlySpeed = 1
local PremiumToastRequired = false
local ServerhopCancelled = false
local serverhopdb = false
local timesince = 0
local CustomScriptEnabled = false
local firsttime = false
local CLDZReady = false
local CurrentListPosition = 1
local homeopen = false
local inventorywasopen = false
local SnowHubSupported = false
local plrconopen = false
local CustomScripts = {}
local CloudzOSLoaded = false
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

-- Services

local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

-- End of Services

local Camera = workspace.CurrentCamera
local Notifications = CloudzOS.Notifications
local Selected = SkyrenLibrary.Theme.Default
--
CloudzOS.Main.UIGradient.Offset = Vector2.new(1, 0)
CloudzOS.Main.UIStroke.UIGradient.Offset = Vector2.new(1, 0)
--

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

local SkyrenLibrary = {
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

-- Blur Module
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
	if getgenv().Blur == nil then
		RootParent = Camera
	else
		if not getgenv().Blur then
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
-- End of Blur Module

-- Tables/Supported Games
local Data = game:HttpGetAsync("https://games.roblox.com/v2/users/"..game.Players.LocalPlayer.UserId.."/favorite/games?accessFilter=2&limit=50&sortOrder=Asc")
	Data = game:GetService("HttpService"):JSONDecode(Data)

	local FavoriteGames = {}

		for i, v in pairs(Data.data) do
			table.insert(FavoriteGames, v.rootPlace.id)
		end
		local nogames = false
		local countgames = 0
	for i, v in pairs(FavoriteGames) do
		countgames += 1
	end
	if countgames == 0 then
		nogames = true
	else
		nogames = false
	end

local UniversalScripts = {
	InfiniteYield = {
		Name = "Infinite Yield",
		Subtitle = "Sophisticated command script",
		Loadstring = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
		Colour = Color3.fromRGB(100, 100, 100),
	},
	SiriusSense = {
		Name = "Sirius Sense",
		Subtitle = "A Pretty solid ESP by the team that made Sirius",
		Loadstring = "https://blackballhost.xyz/s/Sirius-Sense-UI.lua",
		Colour = Color3.fromRGB(180, 30, 230),
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
		Colour = Color3.fromRGB(83, 177, 158),
	},
	UniversalSA = {
		Name = "Universal Silent Aim",
		Subtitle = "A Universal Silent Aim",
		Loadstring = "https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua",
		Colour = Color3.fromRGB(53, 56, 241),
	},
	UniversalRLZZHUB = {
		Name = "Universal RealZzHub",
		Subtitle = "The Universal version of RealZzHub",
		Loadstring = "https://raw.githubusercontent.com/RealZzHub/MainV2/main/Games/Universal.lua",
		Colour = Color3.fromRGB(38, 229, 255),
	},
}
local DetectionScripts = {
	TDSMash = {
		Name = "Tower Defense Simulator",
		Description = "A mash of scripts and writen code made by Cloudy Studios! Hope you enjoy! we spent a minimal amount of time on it yet still pretty good.",
		Colour = Color3.fromRGB(141, 174, 227),
		Games = {3260590327,5591597781},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/Kyokiiis/CloudzOS/main/Games/Tower%20Defense%20Simulator",
	},
	Hax = {
		Name = "Breaking Point Hax",
		Description = "This is one of the best hacks for breaking point (next to eclipse hub)",
		Colour = Color3.fromRGB(235, 107, 52),
		Games = {648362523},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/fFmJFepC",
	},
	AgeOfHeroes = {
		Name = "V.G Hub",
		Description = "One of the best scripts out there for a game such as age of heroes. although they seem to have given up on it and any anti-cheat they thought of. there isnt even a player report system.",
		Colour = Color3.fromRGB(141, 174, 227),
		Games = {4866692557},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/1201for/V.G-Hub/main/gayofheros1",
	},
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
		Name = "VapeV4",
		Description = "This script is the very best script for bedwars that there will ever be. it is awesome basically",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {6872265039},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua",
	},
	CombatWarriors = {
		Name = "Nova.XYZ",
		Description = "This script is one of the best for the game that I have found so, uh.. enjoy!",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {263152704,4282985734,11979315221},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NOVA_HUB_SOURCE",
	},
	Evade = {
		Name = "Batusda",
		Description = "This script is pretty good for the game evade with it having things like BOT ESP and Downed Players ESP and an autofarm!",
		Colour = Color3.fromRGB(70, 52, 235),
		Games = {9872472334},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/9Strew/roblox/main/gamescripts/evade.lua",
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
	RealZzHubKP = {
		Name = "RealZzHub (KP)",
		Description = "Currently the best script right now for Kaiju Paradise + KP Experimental. Some Features should not be used like Auto-Escape if you wish to stay discreet.",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {8318588114,6456351776},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/RealZzHub/MainV2/main/Games/KaijuPD.lua",
	},
	RealZzHubKP = {
		Name = "RealZzHub",
		Description = "Currently the best script right now for games like Kaiju Paradise or Arsenal.",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {286090429,662417684,2413927524,5987922834,8318588114,6456351776},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/RealZzHub/MainV2/main/Main.lua",
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
		Name = "Vynixius (Prison Life)",
		Description = "Probably one of the best scripts for prison life by the script creators that like to make them for any kind of games containing cops v crims.",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {155615604},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Prison%20Life/Script.lua",
	},
	andestsim = {
		Name = "Anime Destroyer Simulator",
		Description = "This script is a community submitted script, we have no info on it",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {7082539621},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/DevPolarhub/ScriptPacks/main/Anime%20Destroyers%20Simulator",
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
		Description = "This script is pretty good for this game || it is also being worked on at the moment by Cloudy Studios.",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {914010731},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/Kyokiiis/CloudzOS/CloudzOS/Games/Ro-Ghoul",
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
		KeySys = true,
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
	Imposter = {
		Name = "Tonky IMPGUIv2",
		Description = "one of the best scripts for a rip off game of among us. fuck yeah",
		Colour = Color3.fromRGB(252, 148, 3),
		Games = {1662219031},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/Ki7Y9Ssc",
	},
	WOFM = {
		Name = "World of Magic UI",
		Description = "A script made Specifically for World of magic by me. so uh yeah! enjoy lol",
		Colour = Color3.fromRGB(153, 101, 199),
		Games = {12501636321},
		Premium = true,
		Loadstring = "https://pastebin.com/raw/ezzHcDCT",
	},
	MurderParty = {
		Name = "Murder Party (ESP RealZzHub)",
		Description = "ESP is really only the useful thing in this. Just Enable Box and Names in the Visual Tab!",
		Colour = Color3.fromRGB(245, 66, 147),
		Games = {5611648039},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/RealZzHub/MainV2/main/Games/Universal.lua",
	},
	Parv = {
		Name = "Parvus",
		Description = "a pretty good script hub with a mildly big list of games including one of the only good TWR scripts left out there that is being updated.",
		Colour = Color3.fromRGB(176, 243, 247),
		Games = {8287862132, 1168263273, 1586272220, 807930589, 580765040, 187796008, 358276974, 3495983524, 1054526971, 3233893879},
		Premium = true,
		Loadstring = "https://raw.githubusercontent.com/AlexR32/Parvus/main/Loader.lua",
	},
}

--==--==--== Functions ==--==--==--
coroutine.wrap(function()
--==--

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
StartAntiIdle()


-- SkyrenLibrary:Notify({
		--Title = "CloudzOS {GMN}",
		--Content = "Hold on! Refreshing Your Character",
		--Duration = 6.5,
		--Image = 4335476290,
	 --}) 

     local NotifSettings = nil

     function SkyrenLibrary:Notify(NotificationSettings)
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
                     Notifications.Position = UDim2.new(1, -25, 0.69, -25)
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
                     Notifications.Position = UDim2.new(1, -25, 0.69, -25)
                     elseif homeopen == false then
                     Notifications.Position = UDim2.new(1, -25, 0.55, -25)
                 end
             end
     
             local blurlight1 = nil
             if not getgenv().Blur then
                 blurlight1 = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
                 blurlight1.Enabled = true
                 blurlight1.FarIntensity = 0
                 blurlight1.FocusDistance = 51.6
                 blurlight1.InFocusRadius = 50
                 blurlight1.NearIntensity = 1
                 game:GetService("Debris"):AddItem(script,0)
             end
             
             Notification.Actions.Template.Visible = false
     
             --
             if NotificationSettings.Actions then
                 for _, Action in pairs(NotificationSettings.Actions) do
                     ActionCompleted = false
                     local NewAction = Notification.Actions.Template:Clone()
                     NewAction.BackgroundColor3 = Selected.NotificationActionsBackground
                     if Selected ~= SkyrenLibrary.Theme.Default then
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
             --
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
             if getgenv().Blur == nil then
                 TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
             else
                 if not getgenv().Blur then
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
             if not getgenv().Blur then
                 neon:UnbindFrame(Notification.BlurModule)
                 blurlight1:Destroy()
             end
             wait(0.9)
             Notification:Destroy()
         end)
     end
     -- V2 Notification Systems
     
     --[[
         \\ -- CONTENT IN THE CONTENT BOX SHOULD NOT BE LONGER THAN THE EXAMPLE 
         SkyrenLibrary:Prompt({
         Content = "We've Detected an Anomoly in the server!",
         Duration = 6.5,
         FriendSystem = false,
         Image = 3944680095,
         Actions = {
            Ignore = {
             Name = "Ignore",
             Icon = 9080449299,
             OutlineClr = Color3.fromRGB(125, 28, 21),
             InsideClr = Color3.fromRGB(125, 28, 21),
                 Callback = function()
                     print("Ignored")
                 end
             },
             Ignore2 = {
             Name = "Block",
             Icon = 9080449299,
             OutlineClr = Color3.fromRGB(125, 28, 21),
             InsideClr = Color3.fromRGB(125, 28, 21),
                 Callback = function()
                     print("Blocked")
                 end
             },
         },
     })
     // -- CONTENT IN THE 'Name' IN ACTIONS SHOULD BE ONE WORD
     ]]
     
     local Prompts = Domain.Prompts
     
     function SkyrenLibrary:Prompt(PromptSettings)
         spawn(function()
             local ActionCompleted = true
             local Prompt = Prompts.Template:Clone()
             Prompt.Parent = Prompts
             Prompt.Name = PromptSettings.Content or "Unknown Content"
             Prompt.Visible = true
             Prompt.Title.Text = PromptSettings.Content
             -- Settings
             if PromptSettings.FriendSystem then
                 FriendEnabled = true
                 Prompt.FrIcon.Visible = true
                 Prompt.Icon.Visible = false
             else
                 FriendEnabled = false
                 Prompt.FrIcon.Visible = false
                 Prompt.Icon.Visible = true
             end
             --
     
             local blurlight1 = nil
             if not getgenv().Blur then
                 blurlight1 = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
                 blurlight1.Enabled = true
                 blurlight1.FarIntensity = 0
                 blurlight1.FocusDistance = 51.6
                 blurlight1.InFocusRadius = 50
                 blurlight1.NearIntensity = 1
                 game:GetService("Debris"):AddItem(script,0)
             end
             
             Prompt.List.Template.Visible = false
     
             --
             if PromptSettings.Actions then
                 for _, Action in pairs(PromptSettings.Actions) do
                 
                     ActionCompleted = false
                     local NewAction = Prompt.List.Template:Clone()
     
                     NewAction.Name = Action.Name
                     NewAction.Visible = true
                     NewAction.Parent = Prompt.List
                     NewAction.Content.Text = Action.Name
                     NewAction.Icon.Image = "rbxassetid://"..tostring(Action.Icon) 
                     NewAction.UIStroke.Color = Action.OutlineClr
                     NewAction.BackgroundColor3 = Action.InsideClr
                     NewAction.BackgroundTransparency = 1
                     NewAction.Content.TextTransparency = 1
                     --
                     NewAction.Interact.MouseEnter:Connect(function()
                         coroutine.wrap(function()
                             TweenService:Create(NewAction.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
                             TweenService:Create(NewAction.Content, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
                             TweenService:Create(NewAction, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 65, 0, 34)}):Play()
                         end)()
                     end)
                     ----
                     NewAction.Interact.MouseLeave:Connect(function()
                         coroutine.wrap(function()
                             TweenService:Create(NewAction.Content, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
                             TweenService:Create(NewAction.Icon, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
                             TweenService:Create(NewAction, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 34, 0, 34)}):Play()
                         end)()
                     end)
                     --
                     NewAction.Interact.MouseButton1Click:Connect(function()
                         local Success, Response = pcall(Action.Callback)
                         if not Success then
                             print("Domain | Action: "..Action.Name.." Callback Error " ..tostring(Response))
                         end
                         ActionCompleted = true
                     end)
     
                 end
             end
             --
             Prompt.BackgroundColor3 = Selected.Background
             --
             if FriendEnabled then
                 Prompt.FrIcon.ImageColor3 = Selected.TextColor
                 if PromptSettings.Image then
                     Prompt.FrIcon.Image = PromptSettings.Image 
                 else
                     Prompt.FrIcon.Image = "rbxassetid://3944680095"
                 end
         
                 Prompt.FrIcon.ImageTransparency = 1
             else
                 Prompt.Icon.ImageColor3 = Selected.TextColor
             if PromptSettings.Image then
                 Prompt.Icon.Image = "rbxassetid://"..tostring(PromptSettings.Image) 
             else
                 Prompt.Icon.Image = "rbxassetid://3944680095"
             end
     
             Prompt.Icon.ImageTransparency = 1
             end
             --
             Prompt.Parent = Prompts
             Prompt.Size = UDim2.new(0, 250, 0, 40)
             Prompt.BackgroundTransparency = 1
             --
             if not PromptSettings.Actions then
                 Prompt.Title.Position = UDim2.new(0, 170, 0, -40)
                 Prompt.Title.Size = UDim2.new(0, 246, 0, 26)
                 else
                 Prompt.Title.Position = UDim2.new(0, 107, 0, -40)
             end
             local sound = Instance.new("Sound")
             sound.Parent = Domain
             sound.SoundId = "rbxassetid://"..255881176
             sound.Name = "notify"
             sound.Volume = 2
             sound.PlayOnRemove = true
             sound:Destroy()
     
             TweenService:Create(Prompt, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 300, 0, 40)}):Play()
             TweenService:Create(Prompt, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.05}):Play()
             coroutine.wrap(function()
             wait(5)
             TweenService:Create(Prompt.UIStroke, TweenInfo.new(1, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
             end)()
             Prompt:TweenPosition(UDim2.new(0.5,0,0.915,0),'Out','Quint',0.8,true)
     
             wait(0.3)
             --
             TweenService:Create(Prompt.Corner, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
             if FriendEnabled then
             TweenService:Create(Prompt.FrIcon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
             TweenService:Create(Prompt.FrIcon.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0.2}):Play()
             else
             TweenService:Create(Prompt.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
             end
             --
             if not PromptSettings.Actions then
                 TweenService:Create(Prompt.Title, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 170, 0, 20)}):Play()
                 else
                 TweenService:Create(Prompt.Title, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 107, 0, 20)}):Play()
             end
             TweenService:Create(Prompt.Title, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
             wait(0.2)
     
             -- Requires Graphics Level 8-10
             if getgenv().Blur == nil then
                 TweenService:Create(Prompt, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
             else
                 if not getgenv().Blur then
                     TweenService:Create(Prompt, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
                 else 
                     TweenService:Create(Prompt, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
                 end
             end
     
             if Domain.Name == "Domain" then
                 neon:BindFrame(Prompt.BlurModule, {
                     Transparency = 0.98;
                     BrickColor = BrickColor.new("Institutional white");
                 })
             end
             
             if not PromptSettings.Actions then
                 wait(PromptSettings.Duration or NotificationDuration - 0.5)
             else
                 for _, Action in ipairs(Prompt.List:GetChildren()) do
                     if Action.ClassName == "Frame" then
                     TweenService:Create(Action.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0}):Play()
                     TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.9}):Play()
                     TweenService:Create(Action.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
                     end
                     wait(0.05)
                 end
             end
             
             repeat wait(0.001) until ActionCompleted
     
             for _, Action in ipairs(Prompt.List:GetChildren()) do
                 if Action.ClassName == "Frame" then
                     TweenService:Create(Action.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
                     TweenService:Create(Action, TweenInfo.new(0.5, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
                     TweenService:Create(Action.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
                 end
                 wait(0.05)
             end
             wait(0.2)
             TweenService:Create(Prompt, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 300, 0, 40)}):Play()
             --
             if FriendEnabled then
                 TweenService:Create(Prompt.FrIcon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
                 TweenService:Create(Prompt.FrIcon.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
             else
             TweenService:Create(Prompt.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
             end
             TweenService:Create(Prompt.Corner, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             --
             TweenService:Create(Prompt, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.6}):Play()
             TweenService:Create(Prompt.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency = 0.6}):Play()
     
             wait(0.3)
             TweenService:Create(Prompt.Title, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
             if not PromptSettings.Actions then
             TweenService:Create(Prompt.Title, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 170, 0, 60)}):Play()
             else
             TweenService:Create(Prompt.Title, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {Position = UDim2.new(0, 107, 0, 60)}):Play()
             end
             wait(0.5)
             TweenService:Create(Prompt.Title, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
             wait(0.2)
             coroutine.wrap(function()
             TweenService:Create(Prompt, TweenInfo.new(1, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 0, 0, 40)}):Play()
             end)()
             TweenService:Create(Prompt.UIStroke, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
             TweenService:Create(Prompt, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             wait(0.2)
             if not getgenv().Blur then
                 neon:UnbindFrame(Prompt.BlurModule)
                 blurlight1:Destroy()
             end
             wait(0.9)
             Prompt:Destroy()
         end)
     end
     --
     --[[
         SkyrenLibrary:NotifyV2({
             Title = "Administrator",
             Content = "An administrator from this game (Frappe) has joined your session, would you like to disconnect?",
             Tag = "{Sky Security}",
             FriendSystem = false,
             Duration = 6.5,
             Image = 3944680095,
             Location = "Top",
                Actions = { -- Notification Buttons
                  Ignore = {
                     Name = "Ignore",
                     Callback = function()
                     print("The user tapped Okay!")
                 end
                  },
             },
         }) 
     ]]
     
     
     local NotifSettings2 = nil
     
     function SkyrenLibrary:NotifyV2(NotificationSettings)
         spawn(function()
             local ActionCompleted = true
             local Notification = Notifications.V2Template:Clone()
             Notification.Parent = Notifications
             Notification.Name = NotificationSettings.Title or "Unknown Title"
             Notification.Visible = true
             -- Settings
             if NotificationSettings.FriendSystem then
                 FriendEnabled = true
                 Notification.FrIcon.Visible = true
                 Notification.Icon.Visible = false
             else
                 FriendEnabled = false
                 Notification.FrIcon.Visible = false
                 Notification.Icon.Visible = true
             end
             --
             NotifSettings = NotificationSettings.Location
     
             if NotificationSettings.Location == nil then
                 Notifications.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
                 if homeopen == true then
                     Notifications.Position = UDim2.new(1, -25, 0.69, -25)
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
                     Notifications.Position = UDim2.new(1, -25, 0.69, -25)
                     elseif homeopen == false then
                     Notifications.Position = UDim2.new(1, -25, 0.55, -25)
                 end
             end
     
             local blurlight1 = nil
             if not getgenv().Blur then
                 blurlight1 = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
                 blurlight1.Enabled = true
                 blurlight1.FarIntensity = 0
                 blurlight1.FocusDistance = 51.6
                 blurlight1.InFocusRadius = 50
                 blurlight1.NearIntensity = 1
                 game:GetService("Debris"):AddItem(script,0)
             end
             
             Notification.Actions.Template.Visible = false
     
             --
             if NotificationSettings.Actions then
                 for _, Action in pairs(NotificationSettings.Actions) do
                     ActionCompleted = false
                     local NewAction = Notification.Actions.Template:Clone()
                     print("woah")
                     NewAction.BackgroundColor3 = Selected.NotificationActionsBackground
                     if Selected ~= SkyrenLibrary.Theme.Default then
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
             --
             Notification.BackgroundColor3 = Selected.Background
             Notification.Side.Title.Text = NotificationSettings.Title or "Unknown"
             Notification.Side.Tag.Text = NotificationSettings.Tag or "Unknown"
             Notification.Side.Title.TextTransparency = 1
             Notification.Side.Title.TextColor3 = Selected.TextColor
             Notification.Side.Description.Text = NotificationSettings.Content or "Unknown"
             Notification.Side.Description.TextTransparency = 1
             Notification.Side.Description.TextColor3 = Selected.TextColor
             Notification.Side.CornerFix2.Visible = false
             Notification.Side.CornerFix1.Size = UDim2.new(0, 34, 0, 80)
             --
             if FriendEnabled then
                 Notification.FrIcon.ImageColor3 = Selected.TextColor
                 if NotificationSettings.Image then
                     Notification.FrIcon.Image = NotificationSettings.Image 
                 else
                     Notification.FrIcon.Image = "rbxassetid://3944680095"
                 end
         
                 Notification.FrIcon.ImageTransparency = 1
             else
             Notification.Icon.ImageColor3 = Selected.TextColor
             if NotificationSettings.Image then
                 Notification.Icon.Image = "rbxassetid://"..tostring(NotificationSettings.Image) 
             else
                 Notification.Icon.Image = "rbxassetid://3944680095"
             end
     
             Notification.Icon.ImageTransparency = 1
             end
             --
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
     
             TweenService:Create(Notification.Side.CornerFix1, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 34, 0, 80)}):Play()
             TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 80)}):Play()
             TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
             TweenService:Create(Notification.Side, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
             TweenService:Create(Notification.Side.CornerFix1, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
             TweenService:Create(Notification.Side.CornerFix2, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
             Notification:TweenPosition(UDim2.new(0.5,0,0.915,0),'Out','Quint',0.8,true)
     
             wait(0.3)
             --
             if FriendEnabled then
             TweenService:Create(Notification.FrIcon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
             TweenService:Create(Notification.FrIcon.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0.2}):Play()
             else
             TweenService:Create(Notification.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
             end
             --
             TweenService:Create(Notification.Side.Tag, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
             TweenService:Create(Notification.Side.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
             TweenService:Create(Notification.Side.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
             wait(0.2)
     
     
     
             -- Requires Graphics Level 8-10
             if getgenv().Blur == nil then
                 TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
             else
                 if not getgenv().Blur then
                     TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
                 else 
                     TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.2}):Play()
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
                 Notification.Side.CornerFix2.Visible = true
                 TweenService:Create(Notification.Side.CornerFix1, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 34, 0, 67)}):Play()
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
             Notification.Side.CornerFix2.Visible = false
             wait(0.2)
             TweenService:Create(Notification, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 280, 0, 80)}):Play()
             TweenService:Create(Notification.Side.CornerFix1, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 34, 0, 80)}):Play()
             --
             if FriendEnabled then
                 TweenService:Create(Notification.FrIcon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
                 TweenService:Create(Notification.FrIcon.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
             else
             TweenService:Create(Notification.Icon, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
             end
             --
             TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.6}):Play()
     
             wait(0.3)
             TweenService:Create(Notification.Side.Tag, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
             TweenService:Create(Notification.Side.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
             TweenService:Create(Notification.Side.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
             wait(0.4)
             TweenService:Create(Notification.Side.CornerFix1, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             TweenService:Create(Notification.Side.CornerFix2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             TweenService:Create(Notification.Side.Tag, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
             TweenService:Create(Notification.Side.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
             TweenService:Create(Notification.Side.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
             wait(0.3)
             TweenService:Create(Notification.Side, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 0, 0, 80)}):Play()
             TweenService:Create(Notification.Side, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             wait(0.2)
             TweenService:Create(Notification, TweenInfo.new(0.9, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 260, 0, 0)}):Play()
             TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             wait(0.2)
             if not getgenv().Blur then
                 neon:UnbindFrame(Notification.BlurModule)
                 blurlight1:Destroy()
             end
             wait(0.9)
             Notification:Destroy()
         end)
     end
     --
     
     
     -- WATCH TOWER
     --[[
     SkyrenLibrary:SkySecurity({
         Title = "CloudzOS",
         Content = "Your Friend, qtxsinz, has Joined the game!",
         Duration = 6.5,
         Image = 3944680095,
         TakeAction = { -- Notification Buttons
                Taken = "CloudzOS Has muted Trill for 2 Minutes",
                Callback = function()
                print("The user tapped Okay!")
            end
         },
     })
     --
     ]]
     
     local SkySecurity = Domain.WatchTower
     
     function SkyrenLibrary:SkySecurity(NotificationSettings)
         spawn(function()
             local ActionCompleted = true
             local Notification = SkySecurity.Template:Clone()
             SkySecurity.Position = UDim2.new(0.175, -25, 1, -25)
             Notification.Parent = SkySecurity
             Notification.Name = NotificationSettings.Title or "Unknown Title"
             Notification.Visible = true
     
             local blurlightW = nil
             if not getgenv().Blur then
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
                     if Selected ~= SkyrenLibrary.Theme.Default then
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
     
             Notification.Parent = SkySecurity
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
             if getgenv().Blur == nil then
                 TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
             else
                 if not getgenv().Blur then
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
             if not getgenv().Blur then
                 neon:UnbindFrame(Notification.BlurModule)
                 blurlightW:Destroy()
             end
             wait(0.9)
             Notification:Destroy()
         end)
     end
     
     function SkyrenLibrary:SkySecurityV2(NotificationSettings)
         spawn(function()
             local ActionCompleted = true
             local Notification = SkySecurity.V2Template:Clone()
             SkySecurity.Position = UDim2.new(0.175, -25, 1, -25)
             Notification.Parent = SkySecurity
             Notification.Name = NotificationSettings.Title or "Unknown Title"
             Notification.Visible = true
     
             local blurlight1 = nil
             if not getgenv().Blur then
                 blurlight1 = Instance.new("DepthOfFieldEffect",game:GetService("Lighting"))
                 blurlight1.Enabled = true
                 blurlight1.FarIntensity = 0
                 blurlight1.FocusDistance = 51.6
                 blurlight1.InFocusRadius = 50
                 blurlight1.NearIntensity = 1
                 game:GetService("Debris"):AddItem(script,0)
             end
     
             --
             if NotificationSettings.TakeAction then
                 Notification.Taken.Text = NotificationSettings.TakeAction.Taken
                 Notification.Taken.Visible = true
                 local Success, Response = pcall(NotificationSettings.TakeAction.Callback)
                     if not Success then
                         print("CloudzOS | Callback Error " ..tostring(Response))
                     end
                 ActionCompleted = true
             end
             --
             Notification.BackgroundColor3 = Selected.Background
             Notification.Side.Title.Text = NotificationSettings.Title or "Unknown"
             Notification.Side.Tag.Text = "{Sky Security}"
             Notification.Side.Title.TextTransparency = 1
             Notification.Side.Title.TextColor3 = Selected.TextColor
             Notification.Side.Description.Text = NotificationSettings.Content or "Unknown"
             Notification.Side.Description.TextTransparency = 1
             Notification.Side.Description.TextColor3 = Selected.TextColor
             Notification.Side.CornerFix2.Visible = false
             --
             Notification.Icon.Image = NotificationSettings.Image
             Notification.Icon.ImageTransparency = 1
             --
             Notification.Parent = SkySecurity
             Notification.Size = UDim2.new(0, 260, 0, 80)
             Notification.BackgroundTransparency = 1
             
             local sound = Instance.new("Sound")
             sound.Parent = Domain
             sound.SoundId = "rbxassetid://"..255881176
             sound.Name = "notify"
             sound.Volume = 2
             sound.PlayOnRemove = true
             sound:Destroy()
     
             TweenService:Create(Notification.Side.CornerFix1, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 34, 0, 67)}):Play()
             TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 295, 0, 100)}):Play()
             TweenService:Create(Notification, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.1}):Play()
             TweenService:Create(Notification.Side, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
             TweenService:Create(Notification.Side.CornerFix1, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
             TweenService:Create(Notification.Side.CornerFix2, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {BackgroundTransparency = 0}):Play()
             Notification:TweenPosition(UDim2.new(0.5,0,0.915,0),'Out','Quint',0.8,true)
     
             wait(0.3)
             --
             TweenService:Create(Notification.Icon.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 0.2}):Play()
             TweenService:Create(Notification.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 0}):Play()
             --
             TweenService:Create(Notification.Side.Tag, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0.3}):Play()
             TweenService:Create(Notification.Side.Title, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {TextTransparency = 0}):Play()
             TweenService:Create(Notification.Side.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.2}):Play()
             wait(0.2)
     
     
     
             -- Requires Graphics Level 8-10
             if getgenv().Blur == nil then
                 TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
             else
                 if not getgenv().Blur then
                     TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.4}):Play()
                 else 
                     TweenService:Create(Notification, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.2}):Play()
                 end
             end
     
             if Domain.Name == "Domain" then
                 neon:BindFrame(Notification.BlurModule, {
                     Transparency = 0.98;
                     BrickColor = BrickColor.new("Institutional white");
                 })
             end
             
             wait(NotificationSettings.Duration or NotificationDuration - 0.5)
             
             repeat wait(0.001) until ActionCompleted
     
             TweenService:Create(Notification.Taken, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
     
             Notification.Side.CornerFix2.Visible = false
             wait(0.2)
             TweenService:Create(Notification.Side.CornerFix1, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 34, 0, 80)}):Play()
             TweenService:Create(Notification, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 280, 0, 80)}):Play()
             
             --
             TweenService:Create(Notification.Icon.UIStroke, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Transparency = 1}):Play()
             TweenService:Create(Notification.Icon, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {ImageTransparency = 1}):Play()
             --
             TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 0.6}):Play()
     
             wait(0.3)
             TweenService:Create(Notification.Side.Tag, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
             TweenService:Create(Notification.Side.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.4}):Play()
             TweenService:Create(Notification.Side.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 0.5}):Play()
             wait(0.4)
             TweenService:Create(Notification.Side.CornerFix1, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             TweenService:Create(Notification.Side.CornerFix2, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             TweenService:Create(Notification.Side.Tag, TweenInfo.new(1, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
             TweenService:Create(Notification.Side.Title, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
             TweenService:Create(Notification.Side.Description, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {TextTransparency = 1}):Play()
             wait(0.3)
             TweenService:Create(Notification.Side, TweenInfo.new(0.6, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 0, 0, 80)}):Play()
             TweenService:Create(Notification.Side, TweenInfo.new(0.3, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             wait(0.2)
             TweenService:Create(Notification, TweenInfo.new(0.9, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 260, 0, 0)}):Play()
             TweenService:Create(Notification, TweenInfo.new(0.8, Enum.EasingStyle.Quint), {BackgroundTransparency = 1}):Play()
             wait(0.2)
             if not getgenv().Blur then
                 neon:UnbindFrame(Notification.BlurModule)
                 blurlightW:Destroy()
             end
             wait(0.9)
             Notification:Destroy()
         end)
     end
--[[
     
SkyrenLibrary:RiskAnalysis({
    AntiCheat = true,
    ModTeam = false,
    Development = true,
    ReportSystem = false,
    Conclusion = "<b>GAME's</b> anti-cheat systems seems to have been rushed at the beginning although is being heavily worked on and thats not even a big threat right now. The easiest way right now to be banned is the player's reporting you and possible moderators being in the game. watch out.",
 })
 
]]
 
 local RiskAnalysis = Domain.Risk
 
 function SkyrenLibrary:RiskAnalysis(RiskSettings)
     spawn(function()
         if readfile("CloudzOS Risk.txt") == "false" then
             return
         else
         end
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
         if not getgenv().Blur then
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
         if not getgenv().Blur then
         blurlightR:Destroy()
         end
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
         if not getgenv().Blur then
         blurlightR:Destroy()
         end
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
 --
--// END OF NOTIFICATION SYSTEMS

-- Muffle system
function MuffleSound()
	for __,v in pairs(game:GetDescendants()) do
		if v.ClassName == "Sound" then
			if v.IsPlaying == true then
				if v:FindFirstChild("Muffle") then
					return
				end
				coroutine.wrap(function()
					if v.Parent == Domain then
						return
					end
					local muffle = Instance.new("EqualizerSoundEffect")
					muffle.Name = "Muffle"
					muffle.Parent = v
					TweenService:Create(muffle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {HighGain = -15}):Play()
					TweenService:Create(muffle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {LowGain = 5}):Play()
					TweenService:Create(muffle, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {MidGain = -15}):Play()
				end)()
				coroutine.wrap(function()
					if v.Parent == Domain then
						return
					end
				local Reverb = Instance.new("ReverbSoundEffect")
				Reverb.DecayTime = 2
				Reverb.DryLevel = -10
				Reverb.Name = "Reverb"
				Reverb.Parent = v
				end)()
			end
		end
	end
end
--
function UnMuffleSound()
	for __,v in pairs(game:GetDescendants()) do -- the path
		if v.Name == "Muffle" then -- the item
			coroutine.wrap(function()
					TweenService:Create(v, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {HighGain = 0}):Play()
					TweenService:Create(v, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {LowGain = 0}):Play()
					TweenService:Create(v, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {MidGain = 0}):Play()
					wait(0.4)
				v:Destroy()
			end)()
		end
	end
	for __,v in pairs(game:GetDescendants()) do -- the path
		if v.Name == "Reverb" then -- the item
			coroutine.wrap(function()
				TweenService:Create(v, TweenInfo.new(0.4, Enum.EasingStyle.Quint), {DryLevel = -0.5}):Play()
				wait(0.4)
				v:Destroy()
			end)()
		end
	end
end
-- Synapse X Update Detection Systems
coroutine.wrap(function()
	local AlreadyUpdated = false
	local responseS = game:HttpGet("https://api.whatexploitsare.online/status/synapse")
	local dataS = game:GetService("HttpService"):JSONDecode(responseS)
	-- Variables
	if isfile("SynapseUpdateVersion.txt") then
	else
		SkyrenLibrary:NotifyV2({
			Title = "CloudzOS",
			Content = "CloudzOS Has Added Version File for Update Detections.",
			Tag = "{CLDZ/SynapseX/Workspace}",
			FriendSystem = false,
			Duration = 8,
			Image = 11849580844,
			Location = "Bottom",
		})
		writefile("SynapseUpdateVersion.txt",tostring("v2.22.8b"))
		wait(5)
	end
	while true do
	SynapseVersion = readfile("SynapseUpdateVersion.txt")
	for _, item in pairs(dataS) do
	  for name, info in pairs(item) do
		if name ~= "ROBLOX" then
		if info.updated then
			if info.exploit_version == SynapseVersion then
			else
				SkyrenLibrary:NotifyV2({
					Title = "CloudzOS",
					Content = "Synapse-X Has been successfully updated to "..info.exploit_version,
					Tag = "{Synapse-X}",
					FriendSystem = false,
					Duration = 15,
					Image = 11849580844,
					Location = "Top",
				})
				wait(0.5)
				writefile("SynapseUpdateVersion.txt",tostring(info.exploit_version))
			end
		else
			if AlreadyUpdated then
				return
			else
			SkyrenLibrary:NotifyV2({
				Title = "CloudzOS",
				Content = "CloudzOS has detected a possible ROBLOX Update and Synapse X along with all other exploits are now patched!",
				Tag = "{Synapse-X}",
				FriendSystem = false,
				Duration = 15,
				Image = 11849580844,
				Location = "Top",
			})
		end
		end
			--
		end
	  end
	end
	wait(60)
	end
end)()
--
local LibraryCount = 0
for i, v in pairs(DetectionScripts) do
	LibraryCount += 1
end
local TotalLCount = LibraryCount
--
--
local webhookcheckD =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

   local urlD =
   "https://discord.com/api/webhooks/1054550405700390912/1ErQVSie0tPQGAaGeEmLB24Ye_ehJ_07TvgRt_qy1tpgZjeqximgIfrtUBWVwMjMZWFv"

local function postMessage(player, index)
    local teamValue
    pcall(function()
        if not player.Team then
            teamValue = "-"
        else
            teamValue = player.Team.Name
        end
    end)
    local data = {
        ["content"] = "";
        ["embeds"] = {{
            ["author"] = {
                ["name"] = player.displayName.."("..player.Name..")";
                ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=150&height=150&format=png"
            };
            ["description"] = "**"..index.."**",
            ["color"] = tonumber(0x00eeff);
            ["fields"] = {
                {
                    ["name"] = "User ID";
                    ["value"] = player.UserId;
                    ["inline"] = true;
                };
                {
                    ["name"] = "Account Age";
                    ["value"] = player.AccountAge.." days";
                    ["inline"] = true;
                };
                {
                    ["name"] = "Team";
                    ["value"] = teamValue;
                    ["inline"] = true;
                };
            };
            ["footer"] = {
                ["icon_url"] = "";
                ["text"] = "CloudzOS / "..Release.."("..ReleaseType..")";
            }
        }}
    }
    
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = urlD, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
end

--postMessage(Player, Message)
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
local webhookcheckD =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

   local urlD =
   "https://discord.com/api/webhooks/1054550405700390912/1ErQVSie0tPQGAaGeEmLB24Ye_ehJ_07TvgRt_qy1tpgZjeqximgIfrtUBWVwMjMZWFv"

local function PostExecution(player, index)
    local data = {
        ["content"] = "";
        ["embeds"] = {{
            ["author"] = {
                ["name"] = "Execution Detected";
                ["icon_url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..player.UserId.."&width=150&height=150&format=png"
            };
            ["description"] = "",
            ["color"] = tonumber(0x1eff00);
            ["fields"] = {
				{
                    ["name"] = "User";
                    ["value"] = player.Name.." ("..player.DisplayName.." )";
                    ["inline"] = true;
                };
				{
                    ["name"] = "Game";
                    ["value"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;
                    ["inline"] = true;
                };
				{
                    ["name"] = "Join Script";
                    ["value"] = "```game:GetService('TeleportService'):TeleportToPlaceInstance('"..game.PlaceId.."','"..game.JobId.."')```";
                    ["inline"] = false;
                };
				{
                    ["name"] = "Join Script V2";
                    ["value"] = "```getgenv().JobId = '"..game.JobId.."' getgenv().GameId = '"..game.PlaceId.."' loadstring(game:HttpGet('https://raw.githubusercontent.com/Kyokiiis/CloudzOS/CloudzOS/JoinScript',true))()```";
                    ["inline"] = false;
                };
                {
                    ["name"] = "User ID";
                    ["value"] = player.UserId;
                    ["inline"] = true;
                };
                {
                    ["name"] = "Account Age";
                    ["value"] = player.AccountAge.." days";
                    ["inline"] = true;
                };
                
            };
            ["footer"] = {
                ["icon_url"] = "";
                ["text"] = "CloudzOS / "..Release.." ("..ReleaseType..")/"..CldzReq({ Url = "https://api.ipify.org/", Method = "Get" }).Body;
            }
        }}
    }
    
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = urlD, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
end
PostExecution(LocalPlayer, "Execute")
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
--


function SkyrenLibrary:Toasts1(ToastSettings)
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

        notifClone:TweenPosition(UDim2.new(0.5,0.87,0),'Out','Quint',2,true)

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
        notifClone:TweenPosition(UDim2.new(0.5,0,notifClone.Position.Y.Scale-0.3,0),'Out','Quint',3,true)
        local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
        local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextTransparency = 1})
        tween:Play()
        local transitionInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quint)
        local tween = game:GetService("TweenService"):Create(notifContent, transitionInfo, {TextStrokeTransparency = 1})
        tween:Play()
        wait(0.305)
        notifClone:Destroy()
        figureToasts(ToastStack,notificationContainer)
end)
end

-- TEMPLATE = GUIwarnwarn("Blackout Detected","rbxassetid://11219169312",Color3.fromRGB(140, 34, 34),10)

function GUIwarn(Content,Image,Color,Time)
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
--// 

--==--
end)()
--==--==--== End of Functions ==--==--==--

repeat 
    warn("Game Loading...")
    wait(0.5)
until game:IsLoaded() == true

if syn then
warn("SYN-X : Game Loaded | Synapse - X Connected")
else
warn(ReleaseType..": Game Loaded | Synapse - X Connection Unsuccessful.")
end