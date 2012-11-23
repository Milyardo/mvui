local addon = select(1,...)
local U = unpack(select(2,...))

U.Version = GetAddOnMetadata(addon,"Version")

U.Skins = {
	["ACPSkin"] = {
		["buttonText"] = "Addon Control Panel",
		["addon"] = "ACP",
	},
	["AdiBagsSkin"] = {
		["buttonText"] = "AdiBags",
		["addon"] = "AdiBags",
	},
	["AltoholicSkin"] = {
		["addon"] = "Altoholic",
	},
	["AraBrokerGuildFriendsSkin"] = {
		["buttonText"] = "Ara Broker Guild Friends",
		["addon"] = "Ara_Broker_Guild_Friends",
	},
	["ArchySkin"] = {
		["addon"] = "Archy",
	},
	['ArhSkin'] = {
		["buttonText"] = "ArchaeologyHelper",
		["addon"] = "Arh",
	},
	["ArkInventorySkin"] = {
		["addon"] = "ArkInventory",
	},
	["AtlasLootSkin"] = {
		["buttonText"] = "AtlasLoot",
		["addon"] = "AtlasLoot_Loader",
	},
	["ATSWSkin"] = {
		["addon"] = "AdvancedTradeSkillWindow",
	},
	["AuctionatorSkin"] = {
		["addon"] = "Auctionator",
	},
	["AuctioneerSkin"] = {
		["buttonText"] = "Auctioneer",
		["addon"] = "Auc-Advanced"
	},
	["BPTSkin"] = {
		["buttonText"] = "Balance Power Tracker",
		["addon"] = "BalancePowerTracker"
	},
	["BGDefenderSkin"] = {
		["addon"] = "BGDefender",
	},
	["BigWigsSkin"] = {
		["addon"] = "BigWigs",
	},
	["BuyEmAllSkin"] = {
		["addon"] = "BuyEmAll",
	},
	["ChocolateBarSkin"] = {
		["addon"] = "ChocolateBar",
	},
	["CliqueSkin"] = {
		["addon"] = "Clique",
	},
	["DBMSkin"] = {
		["buttonText"] = "DBM",
		["addon"] = "DBM-Core",
	},
	["EasyMailSkin"] = {
		["addon"] = "EasyMail",
	},
	["EnergyWatchSkin"] = {
		["addon"] = "EnergyWatch",
	},
	["ExtVendorSkin"] = {
		["buttonText"] = "Extended Vendor",
		["addon"] = "ExtVendor",
	},
	["FactionizerSkin"] = {
		["addon"] = "Factionizer",
	},
	["FlightMapSkin"] = {
		["addon"] = "FlightMap",
	},
	["IncomingSkin"] = {
		["addon"] = "Incoming",
	},
	["KarniCrapSkin"] = {
		["buttonText"] = "Karni's Crap Filter",
		["addon"] = "KarniCrap",
	},
	["LightheadedSkin"] = {
		["addon"] = "Lightheaded",
	},
	["LootCouncilLiteSkin"] = {
		["buttonText"] = "LootCouncilLite",
		["addon"] = "LootCouncil_Lite",
	},
	["MageNuggetsSkin"] = {
		["addon"] = "MageNuggets",
	},
	["MasterLootManagerRemixSkin"] = {
		["addon"] = "MasterLootManagerRemix",
	},
	["MinimalArchaeologySkin"] = {
		["addon"] = "MinimalArchaeology",
	},
	["MoveAnythingSkin"] = {
		["addon"] = "MoveAnything",
	},
	["MRTSkin"] = {
		["buttonText"] = "Mizus Raid Tracker",
		["addon"] = "MizusRaidTracker",
	},
	["MyRolePlaySkin"] = {
		["addon"] = "MyRolePlay",
	},
	["OdysseySkin"] = {
		["addon"] = "Odyssey",
	},
	["OgriLazySkin"] = {
		["addon"] = "Ogri'Lazy",
	},
	["OmenSkin"] = {
		["addon"] = "Omen",
	},
	["OutfitterSkin"] = {
		["addon"] = "Outfitter",
	},
	--["PoisonerSkin"] = {
	--	["addon"] = "Poisoner",
	--},
	["PoMTrackerSkin"] = {
		["addon"] = "PoMTracker",
	},
	["PostalSkin"] = {
		["addon"] = "Postal",
	},
	["PowerAurasSkin"] = {
		["addon"] = "PowerAuras",
	},
	["QuartzSkin"] = {
		["addon"] = "Quartz",
	},
	["RaidInviteOrganizerSkin"] = {
		["buttonText"] = "Raid Invite Organizer",
		["addon"] = "RaidInviteOrganizer",
	},
	["RaidBuffStatusSkin"] = {
		["buttonText"] = "Raid Buff Status",
		["addon"] = "RaidBuffStatus",
	},
	["RecountSkin"] = {
		["addon"] = "Recount",
	},
	["ReforgenatorSkin"] = {
		["addon"] = "Reforgenator",
	},
	["SearingPlasmaTrackerSkin"] = {
		["buttonText"] = "Searing Plasma Tracker",
		["addon"] = "SearingPlasmaTracker",
	},
	["SexyCooldownSkin"] = {
		["buttonText"] = "SexyCooldown 2",
		["addon"] = "SexyCooldown2",
	},
	["SkadaSkin"] = {
		["addon"] = "Skada",
	},
	["SkilletSkin"] = {
		["addon"] = "Skillet",
	},
	["SpineCounterSkin"] = {
		["buttonText"] = "Spine Blood Counter",
		["addon"] = "SpineCounter",
	},
	["SpySkin"] = {
		["addon"] = "Spy",
	},
	["SwatterSkin"] = {
		["buttonText"] = "Swatter",
		["addon"] = "!Swatter",
	},
	["TellMeWhenSkin"] = {
		["addon"] = "TellMeWhen",
	},
	["TinyDPSSkin"] = {
		["addon"] = "TinyDPS",
	},
	["TitanPanelSkin"] = {
		["buttonText"] = "TitanPanel",
		["addon"] = "Titan",
	},
	["TradeSkillDWSkin"] = {
		["addon"] = "TradeSkillDW",
	},
	["WhollySkin"] = {
		["addon"] = "Wholly",
	},
	["WowLuaSkin"] = {
		["addon"] = "WowLua",
	},
	["ZygorSkin"] = {
		["buttonText"] = "Zygor",
		["addon"] = "ZygorGuidesViewer",
	},
	["PetBattleTeamsSkin"] = {
		["addon"] = "PetBattleTeams",
	},
	["BagnonSkin"] = {
		["addon"] = "Bagnon",
	},
	["VengeanceStatusSkin"] = {
		["addon"] = "VengeanceStatus",
	},
	["TomTomSkin"] = {
		["addon"] = "TomTom",
	},
	["tComboSkin"] = {
		["buttonText"] = "Tukui Combo",
		["addon"] = "tCombo",
	},
	["ShieldMonitorSkin"] = {
		["buttonText"] = "Shield Monitor",
		["addon"] = "shieldmonitor",
	},
	["DresserSkin"] = {
		["addon"] = "Dresser",
	},
	["MogItSkin"] = {
		["addon"] = "MogIt",
	},
	["GupPetSkin"] = {
		["addon"] = "GupPet",
	},
	["ExaminerSkin"] = {
		["addon"] = "Examiner",
	},
	["NumerationSkin"] = {
		["addon"] = "Numeration",
	},
	["OneClickEnchantScrollSkin"] = {
		["addon"] = "OneClickEnchantScroll",
	},
	["xMerchantSkin"] = {
		["addon"] = "xMerchant",
	},
--DO NOT REMOVE THESE
	["DBMSkinHalf"] = {
		["buttonText"] = "DBM Half-Bar Skin",
		["addon"] = "DBM-Core",
		["ui"] = "ElvUI",
	},
	["CLCProtSkin"] = {
		["buttonText"] = "CLCProt Icons",
		["addon"] = "CLCProt",
		["ui"] = "ElvUI",
	},
	["CLCRetSkin"] = {
		["buttonText"] = "CLCRet Icons",
		["addon"] = "CLCRet",
		["ui"] = "ElvUI",
	},
	["PowerAurasIconsSkin"] = {
		["buttonText"] = "PowerAuras Icons",
		["addon"] = "PowerAuras",
		["ui"] = "ElvUI",
	},
	["WeakAurasSkin"] = {
		["buttonText"] = "WeakAuras Icons",
		["addon"] = "WeakAuras",
		["ui"] = "ElvUI",
	},
--
}