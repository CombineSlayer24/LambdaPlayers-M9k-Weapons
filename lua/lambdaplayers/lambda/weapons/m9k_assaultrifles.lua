local IsValid = IsValid
local coroutine_wait = coroutine.wait

-----------------------------------------------------------------------------------
-- Local Data For Weapons
-----------------------------------------------------------------------------------
local fireDamageTbl_ACR = { 8, 24 }
local fireRateTbl_ACR = { 0.072, 0.36 }
local deploySnds_ACR = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/acr/boltrack.mp3" }
}

local fireDamageTbl_AK74 = { 10, 31 }
local fireRateTbl_AK74 = { 0.099, 0.396 }
local deploySnds_AK74 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/ak74/boltrack.mp3" }
}

local fireDamageTbl_AK47 = { 12, 30 }
local fireRateTbl_AK47 = { 0.096, 0.384 }
local deploySnds_AK47 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/ak47/boltrack.mp3" }
}

local fireDamageTbl_AMD65 = { 10, 31 }
local fireRateTbl_AMD65 = { 0.086, 0.32 }
local deploySnds_AMD65 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/amd65/boltrack.mp3" }
}

local fireDamageTbl_AN94 = { 12, 28 }
local fireRateTbl_AN94 = { 0.093, 0.36 }
local deploySnds_AN94 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.42, "lambdaplayers/weapons/m9k/assault_rifles/an94/boltrack.mp3" }
}

local fireDamageTbl_ASVAL = { 6, 24 }
local fireRateTbl_ASVAL = { 0.075, 0.3 }
local deploySnds_ASVAL = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/boltrack.mp3" }
}

local fireDamageTbl_AUG = { 8, 20 }
local fireRateTbl_AUG = { 0.092, 0.364 }
local deploySnds_AUG = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.475, "lambdaplayers/weapons/m9k/assault_rifles/aug/boltrack.mp3" }
}

local fireDamageTbl_F2000 = { 9, 18 }
local fireRateTbl_F2000 = { 0.092, 0.364 }
local deploySnds_F2000 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.475, "lambdaplayers/weapons/m9k/assault_rifles/f2000/boltback.mp3" }
}

local fireDamageTbl_FAL = { 10, 31 }
local fireRateTbl_FAL = { 0.28, 0.96 }
local deploySnds_FAL = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/fal/boltrack.mp3" }
}

local fireSndTbl_FAMAS = { "lambdaplayers/weapons/m9k/assault_rifles/famas/fire1.wav", "lambdaplayers/weapons/m9k/assault_rifles/famas/fire2.wav" }
local fireDamageTbl_FAMAS = { 12, 27 }
local fireRateTbl_FAMAS = { 0.07, 0.28 }
local deploySnds_FAMAS = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/assault_rifles/ak74/boltrack.mp3" }
}

local fireDamageTbl_G36C = { 7, 25 }
local fireRateTbl_G36C = { 0.082, 0.328 }
local deploySnds_G36C = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/g36/boltrack.mp3" }
}

local fireDamageTbl_HK416 = { 10, 26 }
local fireRateTbl_HK416 = { 0.08, 0.25 }
local deploySnds_HK416 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/assault_rifles/hk416/boltrack.mp3" }
}

local fireDamageTbl_HKG3 = { 7, 23 }
local fireRateTbl_HKG3 = { 0.105, 0.315 }
local deploySnds_HKG3 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.475, "lambdaplayers/weapons/m9k/assault_rifles/g3/boltforward.mp3" }
}

local fireDamageTbl_L85A2 = { 8, 29 }
local fireRateTbl_L85A2 = { 0.087, 0.28 }
local deploySnds_L85A2 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/l85a2/boltrack.mp3" }
}

local fireDamageTbl_M4A1 = { 9, 24 }
local fireRateTbl_M4A1 = { 0.062, 0.248 } -- 0.31
local deploySnds_M4A1 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/assault_rifles/m4a1/boltback.mp3" }
}

local fireDamageTbl_M14 = { 16, 32 }
local fireRateTbl_M14 = { 0.325, 1 }
local deploySnds_M14 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/assault_rifles/m14/boltrack.mp3" }
}

local fireDamageTbl_M16A1 = { 12, 30 }
local fireRateTbl_M16A1 = { 0.25, 0.8 }
local deploySnds_M16A1 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/assault_rifles/m4a1/boltback.mp3" }
}

local fireDamageTbl_SCAR = { 13, 29 }
local fireRateTbl_SCAR = { 0.095, 0.365 }
local deploySnds_SCAR = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/assault_rifles/scar/boltrack.mp3" }
}

local fireSndTbl_SCAR = {
	"lambdaplayers/weapons/m9k/assault_rifles/scar/fire1.wav", 
	"lambdaplayers/weapons/m9k/assault_rifles/scar/fire2.wav",
	"lambdaplayers/weapons/m9k/assault_rifles/scar/fire3.wav",
}

local fireDamageTbl_TAR21 = { 7, 25 }
local fireRateTbl_TAR21 = { 0.073, 0.25 }
local deploySnds_TAR21 = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/assault_rifles/tar21/boltrack.mp3" }
}

local fireDamageTbl_VIKHR = { 7, 27 }
local fireRateTbl_VIKHR = { 0.082, 0.36 }
local deploySnds_VIKHR = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/boltrack.mp3" }
}

local fireDamageTbl_WIN = { 12, 32 }
local fireRateTbl_WIN = { 0.92, 1.86 }
local deploySnds_WIN = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/assault_rifles/winchester/cock.mp3" }
}
-----------------------------------------------------------------------------------
-- End OF Locals
-----------------------------------------------------------------------------------

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_ar_acr = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/acr.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "ACR",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_acr",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1600,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/acr/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/acr/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/acr/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_ACR
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/acr/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_ACR
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_ACR

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_ak47 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/ak47.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "AK-47",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_ak47",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1600,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/ak47/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/ak47/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/ak47/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_AK47
			wepent.M9KData.Spread = 0.076
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/ak47/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_AK47
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_AK47

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_ak74 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/ak74.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "AK-74",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_ak74",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1800,
		keepdistance = 550,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/ak74/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/ak74/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/ak74/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_AK74
			wepent.M9KData.Spread = 0.082
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/ak74/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_AK74
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_AK74

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_amd65 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/amd65.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "AMD 65",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_amd65",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1600,
		keepdistance = 600,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/amd65/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/amd65/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/amd65/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_AMD65
			wepent.M9KData.Spread = 0.0825
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/amd65/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_AMD65
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_AMD65

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_an94 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/an94.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "AN-94",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_an94",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1750,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/an94/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/an94/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/an94/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_AN94
			wepent.M9KData.Spread = 0.0725
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/an94/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_AN94
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_AN94

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_asval = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/val.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "AS Val",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_val",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1500,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_ASVAL
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/vikhr/val_fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_ASVAL
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_ASVAL

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_aug = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/aug.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "Steyr AUG A3",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_aug",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 2000,
		keepdistance = 600,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/aug/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/aug/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/aug/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_AUG
			wepent.M9KData.Spread = 0.09
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/aug/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_AUG
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_AUG

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_f2000 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/f2000.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "FN F2000",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_f2000",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1750,
		keepdistance = 500,

		reloadtime = 2.6,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.68,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/f2000/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/f2000/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/f2000/boltback.mp3" },
			{ 2.2, "lambdaplayers/weapons/m9k/assault_rifles/f2000/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_F2000
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/f2000/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_F2000
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_F2000

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_fal = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/fn_fal.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "FN Fal",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_fal",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1600,
		keepdistance = 600,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/fal/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/fal/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/fal/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_FAL
			wepent.M9KData.Spread = 0.025
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/fal/fire_new.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_FAL
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_FAL

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_famas = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/famas.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "Famas",
		holdtype = "rpg",
		killicon = "lambdaplayers/killicons/m9k_famas",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1650,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/famas/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/famas/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/ak74/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_FAMAS
			wepent.M9KData.Spread = 0.061
			wepent.M9KData.Sound = fireSndTbl_FAMAS
			wepent.M9KData.RateOfFire = fireRateTbl_FAMAS
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_FAMAS

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_g36c = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/hk_g36c.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "G36C",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_g36",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1800,
		keepdistance = 480,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/g36/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/g36/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/g36/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_G36C
			wepent.M9KData.Spread = 0.047
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/g36/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_G36C
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_G36C

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_hk416 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/hk416.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "HK 416",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_hk416",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1750,
		keepdistance = 475,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/hk416/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/hk416/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/hk416/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_HK416
			wepent.M9KData.Spread = 0.0575
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/hk416/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_HK416
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_HK416

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_hkg3 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/hk_g3.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "HK G3A3",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_g3",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1800,
		keepdistance = 550,

		reloadtime = 2.9,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.62,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/g3/boltback.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/g3/clipout.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/g3/clipin.mp3" },
			{ 2.6, "lambdaplayers/weapons/m9k/assault_rifles/g3/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_HKG3
			wepent.M9KData.Spread = 0.056
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/g3/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_HKG3
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_HKG3

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_l85a2 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/l85a2.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "L85A2",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_l85",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 2250,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/l85a2/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/l85a2/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/l85a2/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_L85A2
			wepent.M9KData.Spread = 0.062
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/l85a2/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_L85A2
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_L85A2

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_m4a1 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/m4a1.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "M4A1 Carbine", -- Yes, it's considered a Carbine variant
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_m4a1",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1800,
		keepdistance = 600,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/m4a1/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/m4a1/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/m4a1/boltrelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_M4A1
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/m4a1/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_M4A1
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_M4A1

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_m14 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/m14.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "M14",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_m14",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 2200,
		keepdistance = 500,

		reloadtime = 2.65,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.68,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/m14/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/assault_rifles/m14/clipin.mp3" },
			{ 2.3, "lambdaplayers/weapons/m9k/assault_rifles/m14/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_M14
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/m14/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_M14
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_M14

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_m16a1 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/m16a1.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "M16A1",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_m16a1",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 2300,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/m4a1/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/m4a1/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/m4a1/boltrelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_M16A1
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/m4a1/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_M16A1
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_M16A1

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_scar = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/scar.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "FN Scar H",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_scar",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1950,
		keepdistance = 650,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/scar/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/scar/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/scar/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_SCAR
			wepent.M9KData.Spread = 0.062
			wepent.M9KData.Sound = fireSndTbl_SCAR
			wepent.M9KData.RateOfFire = fireRateTbl_SCAR
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_SCAR

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_tar21 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/tar21.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "IMI TAR-21",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_tar21",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1900,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/tar21/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/tar21/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/tar21/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_TAR21
			wepent.M9KData.Spread = 0.048
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/tar21/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_TAR21
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_TAR21

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_vikhr = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/vikhr.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "SR-3M Vikhr",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_vikhr",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1600,
		keepdistance = 600,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_VIKHR
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/vikhr/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_VIKHR
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_VIKHR

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_ar_winchester_rifle = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/winchester_rifle.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "1873 Winchester Repeater",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_win73",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1800,
		keepdistance = 400,

		OnReload = function( self, wepent )
			self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_AR2 )
			local reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )

			self:SetIsReloading( true )
			self:Thread( function()

				coroutine_wait( 0.45 )
				
				while ( self.l_Clip < self.l_MaxClip ) do
					local ene = self:GetEnemy()
					if self.l_Clip > 0 and LambdaRNG( 1, 2, false ) == 1 and self:InCombat() and self:IsInRange( ene, 600 ) and self:CanSee( ene ) then break end
					self.l_Clip = self.l_Clip + 1

					if !self:IsValidLayer( reloadLayer ) then
						reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )
					end
					self:SetLayerCycle( reloadLayer, 0.3 )
					self:SetLayerPlaybackRate( reloadLayer, 1.33 ) 

					wepent:EmitSound( "lambdaplayers/weapons/m9k/assault_rifles/winchester/insertcartridge.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.475 )
				end

				coroutine_wait( 0.5 )

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_AR2 )
				self:SetIsReloading( false )
				wepent:EmitSound( "lambdaplayers/weapons/m9k/assault_rifles/winchester/cock.mp3", 70, 100, 1, CHAN_ITEM )
			
			end, "M9K_ReloadWinchester" )

			return true
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_WIN
			wepent.M9KData.Spread = 0.062
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/winchester/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_WIN
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_WIN

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_ar_winchester_rifle" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/assault_rifles/winchester/cock.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	}
} )