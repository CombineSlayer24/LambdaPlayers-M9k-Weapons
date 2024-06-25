
-- Some weapons are excluded due to their custom fire rate crap.
-----------------------------------------------------------------------------------
-- Local Data For Weapons
-----------------------------------------------------------------------------------
local fireDamageTbl_50AE = { 15, 26 }
local fireRateTbl_50AE = { 0.48, 0.96 }
local deploySnds_50AE = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/draw.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/slideback.mp3" },
}

local fireDamageTbl_HK45 = { 8, 13 }
local fireRateTbl_HK45 = { 0.32, 0.96 }
local deploySnds_HK45 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/hk45/draw.mp3" },
	{ 0.25, "lambdaplayers/weapons/m9k/small_arms/hk45/slidepull.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/small_arms/hk45/sliderelease.mp3" }
}

local fireDamageTbl_LUGER = { 12, 18 }
local fireRateTbl_LUGER = { 0.24, 0.8 }
local deploySnds_LUGER = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw.mp3" },
	{ 0.2, "lambdaplayers/weapons/m9k/small_arms/luger/sliderelease.mp3" }
}

local fireDamageTbl_M9 = { 9, 13 }
local fireRateTbl_M9 = { 0.25, 0.75 }
local deploySnds_M9 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/m9/slideback.mp3" },
	{ 0.2, "lambdaplayers/weapons/m9k/small_arms/m9/sliderelease.mp3" }
}

local fireDamageTbl_1911 = { 7, 14 }
local fireRateTbl_1911 = { 0.275, 0.8 }
local deploySnds_1911 = { { 0, "lambdaplayers/weapons/m9k/small_arms/m1911/draw.mp3" } }

local fireDamageTbl_M3 = { 16, 24 }
local fireRateTbl_M3 = { 0.56, 1.2 }
local deploySnds_M3 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/model3/hammer.mp3" }
}

local fireDamageTbl_PYTHON = { 12, 18 }
local fireRateTbl_PYTHON = { 0.5, 1.05 }
local deploySnds_PYTHON = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/draw.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" }
}

local fireDamageTbl_BULL = { 18, 28 }
local fireRateTbl_BULL = { 0.58, 1.22 }
local deploySnds_BULL = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/r_bull/draw_gun.mp3" }
}

local fireDamageTbl_REM1858 = { 16, 34 }
local fireRateTbl_REM1858 = { 0.7, 1.43 }
local deploySnds_REM1858 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/draw.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" }
}

local fireDamageTbl_SATAN = { 16, 24 }
local fireRateTbl_SATAN = { 0.55, 1.12 }
local deploySnds_SATAN = { { 0, "lambdaplayers/weapons/m9k/small_arms/satan/unfold.mp3" } }

local fireDamageTbl_SIG = { 10, 17 }
local fireRateTbl_SIG = { 0.26, 0.78 }
local deploySnds_SIG = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0, "lambdaplayers/weapons/m9k/small_arms/sig_p229/cliphit.mp3" },
}

local fireDamageTbl_SW500 = { 24, 40 }
local fireRateTbl_SW500 = { 0.75, 1.5 }
local deploySnds_SW500 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/draw.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" }
}

local fireDamageTbl_SW627 = { 12, 20 }
local fireRateTbl_SW627 = { 0.5, 1.25 }
local deploySnds_SW627 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/draw.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" }
}

local fireDamageTbl_USP = { 12, 16 }
local fireRateTbl_USP = { 0.235, 0.63 }
local deploySnds_USP = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/usp/slideback.mp3" },
	{ 0.2, "lambdaplayers/weapons/m9k/small_arms/usp/slidepull.mp3" }
}
-----------------------------------------------------------------------------------
-- SMGS
-----------------------------------------------------------------------------------
local fireDamageTbl_PP = { 9, 14 }
local fireRateTbl_PP = { 0.086, 0.43 }
local deploySnds_PP = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/small_arms/bizon/boltpull.mp3" }
}

local fireDamageTbl_HB = { 15, 30 }
local fireRateTbl_HB = { 0.095, 0.375 }
local deploySnds_HB = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/small_arms/hb/boltback.mp3" },
	{ 0.9, "lambdaplayers/weapons/m9k/small_arms/hb/boltforward.mp3" }
}

local fireDamageTbl_MP5 = { 9, 20 }
local fireRateTbl_MP5 = { 0.075, 0.3 }
local deploySnds_MP5 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/mp5/boltback.mp3" }
}

local fireDamageTbl_MPSD = { 6, 14 }
local fireRateTbl_MPSD = { 0.088, 0.3 }
local deploySnds_MPSD = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/mp5sd/boltback.mp3" }
}

local fireDamageTbl_MP9 = { 8, 16 }
local fireRateTbl_MP9 = { 0.064, 0.5 }
local deploySnds_MP9 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/small_arms/mp7/charginghandle_rack.mp3" }
}

local fireDamageTbl_MP40 = { 8, 22 }
local fireRateTbl_MP40 = { 0.128, 0.64 }
local deploySnds_MP40 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/small_arms/mp40/clipin.mp3" },
	{ 1.25, "lambdaplayers/weapons/m9k/small_arms/mp40/boltback.mp3" }
}

local fireDamageTbl_P90 = { 8, 16 }
local fireRateTbl_P90 = { 0.0725, 0.32 }
local deploySnds_P90 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.8, "lambdaplayers/weapons/m9k/small_arms/p90/boltrack.mp3" },
}

local fireDamageTbl_PDR = { 8, 20 }
local fireRateTbl_PDR = { 0.09, 0.48 }
local deploySnds_PDR = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/pdr/clipin2.mp3" },
	{ 0.7, "lambdaplayers/weapons/m9k/small_arms/pdr/boltpull.mp3" },
	{ 0.92, "lambdaplayers/weapons/m9k/small_arms/pdr/boltrelease.mp3" }
}

local fireDamageTbl_PDW = { 7, 15 }
local fireRateTbl_PDW = { 0.092, 0.45 }
local deploySnds_PDW = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/pdw/boltrack.mp3" },
}

local fireDamageTbl_STEN = { 11, 20 }
local fireRateTbl_STEN = { 0.105, 0.4 }
local deploySnds_STEN = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.8, "lambdaplayers/weapons/m9k/small_arms/sten/boltrack.mp3" },
	{ 1.2, "lambdaplayers/weapons/m9k/small_arms/sten/boltset.mp3" }
}

local fireDamageTbl_MAFIAGUN = { 8, 18 }
local fireRateTbl_MAFIAGUN = { 0.096, 0.384 }
local deploySnds_MAFIAGUN = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.8, "lambdaplayers/weapons/m9k/small_arms/tommyg/boltcock.mp3" }
}

local fireDamageTbl_UMP45 = { 7, 16 }
local fireRateTbl_UMP45 = { 0.09, 0.3 }
local deploySnds_UMP45 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/ump45/boltslap.mp3" }
}

local fireDamageTbl_USC = { 9, 20 }
local fireRateTbl_USC = { 0.25, 0.75 }
local deploySnds_USC = { { 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" }, { 0.4, "lambdaplayers/weapons/m9k/small_arms/ump45/boltslap.mp3" } }
local fireSndTbl_USC = { "lambdaplayers/weapons/m9k/small_arms/usc/fire1.wav", "lambdaplayers/weapons/m9k/small_arms/usc/fire2.wav" }

local fireDamageTbl_VECTOR = { 8, 22 }
local fireRateTbl_VECTOR = { 0.084, 0.35 }
local deploySnds_VECTOR = { { 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" }, { 0.5, "lambdaplayers/weapons/m9k/small_arms/kriss/boltrack.mp3" } }
-----------------------------------------------------------------------------------
-- End OF Locals
-----------------------------------------------------------------------------------
table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_deagle = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/desert_eagle.mdl",
		origin = "M9K - Pistols",
		prettyname = "Desert Eagle",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_deagle",
		bonemerge = true,

		clip = 7,
		islethal = true,
		attackrange = 1400,
		keepdistance = 625,

		reloadtime = 1.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/slideback.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_50AE
			wepent.M9KData.Spread = 0.08
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/desert_eagle/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_50AE
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_50AE

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_pistol_hk45 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/hk45c.mdl",
		origin = "M9K - Pistols",
		prettyname = "HK-45",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_hk45",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1500,
		keepdistance = 600,

		reloadtime = 1.6,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/hk45/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/hk45/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/hk45/slidepull.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/small_arms/hk45/sliderelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_HK45
			wepent.M9KData.Spread = 0.036
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/hk45/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_HK45
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
			wepent.M9KData.DeploySound = deploySnds_HK45

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_pistol_luger = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/luger_p08.mdl",
		origin = "M9K - Pistols",
		prettyname = "Luger P08",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_luger",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1500,
		keepdistance = 600,

		reloadtime = 1.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/luger/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/luger/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/luger/sliderelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_LUGER
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/luger/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_LUGER
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
			wepent.M9KData.DeploySound = deploySnds_LUGER

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_pistol_m9 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/beretta_m92.mdl",
		origin = "M9K - Pistols",
		prettyname = "M9 Beretta",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_m9",
		bonemerge = true,

		clip = 15,
		islethal = true,
		attackrange = 1500,
		keepdistance = 550,

		reloadtime = 1.6,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/m9/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/m9/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/m9/slideback.mp3" },
			{ 1.4, "lambdaplayers/weapons/m9k/small_arms/m9/sliderelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_M9
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/m9/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_M9
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
			wepent.M9KData.DeploySound = deploySnds_M9

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_pistol_m1911 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/m1911.mdl",
		origin = "M9K - Pistols",
		prettyname = "M1911",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_m1911",
		bonemerge = true,

		clip = 7,
		islethal = true,
		attackrange = 1500,
		keepdistance = 400,

		reloadtime = 1.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/m1911/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/m1911/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/m1911/slideback.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_1911
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/m1911/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_1911
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
			wepent.M9KData.DeploySound = deploySnds_1911

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_pistol_model3 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/model3.mdl",
		origin = "M9K - Pistols",
		prettyname = "S&W Model 3 Russian",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_model3",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1200,
		keepdistance = 600,

		reloadtime = 2,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/model3/break_eject.mp3" },
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/model3/shellcasings_out.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/model3/bulletsin.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/small_arms/model3/break_close.mp3" },
			{ 1.7, "lambdaplayers/weapons/m9k/small_arms/model3/hammer.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_M3
			wepent.M9KData.Spread = 0.08
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/colt_python/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_M3
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_M3

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,

		OnReload = function( self, wepent )
			local anim = self:LookupSequence( "reload_revolver_base_layer" )
			if anim != -1 then
				-- Stops animation's event sounds from running
				self:AddGestureSequence( anim )
			else
				self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_REVOLVER )
			end

			-- Cool shell ejects
			self:SimpleWeaponTimer( 0.5, function() 
				for i = 1, 6 do self:HandleShellEject( "ShellEject" ) end
			end )
		end
	},

	m9k_pistol_python = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/colt_python.mdl",
		origin = "M9K - Pistols",
		prettyname = "Colt Python",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_python",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1400,
		keepdistance = 700,

		reloadtime = 1.8,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" },
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/colt_python/bulletsout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/colt_python/bulletsin.mp3" },
			{ 1.633, "lambdaplayers/weapons/m9k/small_arms/colt_python/blick.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_PYTHON
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/colt_python/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_PYTHON
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_PYTHON

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,

		OnReload = function( self, wepent )
			local anim = self:LookupSequence( "reload_revolver_base_layer" )
			if anim != -1 then
				-- Stops animation's event sounds from running
				self:AddGestureSequence( anim )
			else
				self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_REVOLVER )
			end

			-- Cool shell ejects
			self:SimpleWeaponTimer( 0.5, function() 
				for i = 1, 6 do self:HandleShellEject( "ShellEject" ) end
			end )
		end
	},

	m9k_pistol_ragingb_scoped = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/ragingbull_scope.mdl",
		origin = "M9K - Pistols",
		prettyname = "Raging Bull Scoped",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_rbs",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 2200,
		keepdistance = 640,

		reloadtime = 3.2,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/r_bull/bullreload.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_BULL
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/r_bull/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_BULL
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_BULL

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,

		OnReload = function( self, wepent )
			local anim = self:LookupSequence( "reload_revolver_base_layer" )
			if anim != -1 then
				-- Stops animation's event sounds from running
				self:AddGestureSequence( anim )
			else
				self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_REVOLVER )
			end

			-- Cool shell ejects
			self:SimpleWeaponTimer( 0.5, function() 
				for i = 1, 6 do self:HandleShellEject( "ShellEject" ) end
			end )
		end
	},

	m9k_pistol_ragingb = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/ragingbull.mdl",
		origin = "M9K - Pistols",
		prettyname = "Raging Bull",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_rb",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1500,
		keepdistance = 560,

		reloadtime = 3.2,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/r_bull/bullreload.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_BULL
			wepent.M9KData.Spread = 0.088
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/r_bull/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_BULL
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_BULL

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,

		OnReload = function( self, wepent )
			local anim = self:LookupSequence( "reload_revolver_base_layer" )
			if anim != -1 then
				-- Stops animation's event sounds from running
				self:AddGestureSequence( anim )
			else
				self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_REVOLVER )
			end

			-- Cool shell ejects
			self:SimpleWeaponTimer( 0.5, function() 
				for i = 1, 6 do self:HandleShellEject( "ShellEject" ) end
			end )
		end
	},

	m9k_pistol_remington1858 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/remington_1858.mdl",
		origin = "M9K - Pistols",
		prettyname = "Remington Army 1858",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_rem1858",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1500,
		keepdistance = 650,

		reloadtime = 1.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/small_arms/colt_python/blick.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_REM1858
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/remington_fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_REM1858
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_REM1858

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,
	},

	m9k_pistol_satan = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/m29_satan.mdl",
		origin = "M9K - Pistols",
		prettyname = "M29 Satan",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_satan",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1600,
		keepdistance = 650,

		reloadtime = 1.8,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/satan/unfold.mp3" },
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/satan/bulletsout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/satan/bulletsin.mp3" },
			{ 1.633, "lambdaplayers/weapons/m9k/small_arms/satan/blick.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_SATAN
			wepent.M9KData.Spread = 0.064
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/satan/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_SATAN
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_SATAN

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,

		OnReload = function( self, wepent )
			local anim = self:LookupSequence( "reload_revolver_base_layer" )
			if anim != -1 then
				-- Stops animation's event sounds from running
				self:AddGestureSequence( anim )
			else
				self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_REVOLVER )
			end

			-- Cool shell ejects
			self:SimpleWeaponTimer( 0.5, function() 
				for i = 1, 6 do self:HandleShellEject( "ShellEject" ) end
			end )
		end
	},

	m9k_pistol_sigp229 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/sig_p229.mdl",
		origin = "M9K - Pistols",
		prettyname = "Sig Sauer P229",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_p229",
		bonemerge = true,

		clip = 12,
		islethal = true,
		attackrange = 1500,
		keepdistance = 600,

		reloadtime = 1.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/sig_p229/clipout.mp3" },
			{ 0.8, "lambdaplayers/weapons/m9k/small_arms/sig_p229/clipin.mp3" },
			{ 1.1, "lambdaplayers/weapons/m9k/small_arms/sig_p229/cliphit.mp3" },
			{ 1.333, "lambdaplayers/weapons/m9k/small_arms/sig_p229/sliderelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_SIG
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/sig_p229/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_SIG
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
			wepent.M9KData.DeploySound = deploySnds_SIG

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_pistol_sw500 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/sw_model_500.mdl",
		origin = "M9K - Pistols",
		prettyname = "S&W Model 500",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_500",
		bonemerge = true,

		clip = 5,
		islethal = true,
		attackrange = 1800,
		keepdistance = 600,

		reloadtime = 1.8,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" },
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/colt_python/bulletsout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/colt_python/bulletsin.mp3" },
			{ 1.633, "lambdaplayers/weapons/m9k/small_arms/colt_python/blick.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_SW500
			wepent.M9KData.Spread = 0.0675
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/sw500_fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_SW500
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_SW500

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,

		OnReload = function( self, wepent )
			local anim = self:LookupSequence( "reload_revolver_base_layer" )
			if anim != -1 then
				-- Stops animation's event sounds from running
				self:AddGestureSequence( anim )
			else
				self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_REVOLVER )
			end

			-- Cool shell ejects
			self:SimpleWeaponTimer( 0.5, function() 
				for i = 1, 5 do self:HandleShellEject( "ShellEject" ) end
			end )
		end
	},

	m9k_pistol_sw627 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/sw_model_627.mdl",
		origin = "M9K - Pistols",
		prettyname = "S&W Model 627",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_627",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1200,
		keepdistance = 500,

		reloadtime = 1.8,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" },
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/colt_python/bulletsout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/colt_python/bulletsin.mp3" },
			{ 1.633, "lambdaplayers/weapons/m9k/small_arms/colt_python/blick.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_SW627
			wepent.M9KData.Spread = 0.075
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/colt_python/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_SW627
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_SW627

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,

		OnReload = function( self, wepent )
			local anim = self:LookupSequence( "reload_revolver_base_layer" )
			if anim != -1 then
				-- Stops animation's event sounds from running
				self:AddGestureSequence( anim )
			else
				self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_REVOLVER )
			end

			-- Cool shell ejects
			self:SimpleWeaponTimer( 0.5, function() 
				for i = 1, 6 do self:HandleShellEject( "ShellEject" ) end
			end )
		end
	},

	m9k_pistol_usp = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/usp.mdl",
		origin = "M9K - Pistols",
		prettyname = "USP",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_usp",
		bonemerge = true,

		clip = 15,
		islethal = true,
		attackrange = 1600,
		keepdistance = 750,

		reloadtime = 1.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/usp/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/usp/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/usp/slidepull.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_USP
			wepent.M9KData.Spread = 0.0725
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/usp/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_USP
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
			wepent.M9KData.DeploySound = deploySnds_USP

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_bizon = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/pp19_bizon.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "PP Bizon",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_bizon",
		bonemerge = true,

		clip = 64,
		islethal = true,
		attackrange = 2200,
		keepdistance = 700,

		reloadtime = 2.3,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.68,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/bizon/cliprelease.mp3" },
			{ 0.8, "lambdaplayers/weapons/m9k/small_arms/bizon/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/bizon/clipin.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/small_arms/bizon/boltpull.mp3" },
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_PP
			wepent.M9KData.Spread = 0.09
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/bizon/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_PP
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_PP

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_honeybadger = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/honeybadger.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "Honeybadger",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_aac",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 2000,
		keepdistance = 750,

		reloadtime = 2.3,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.8,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/hb/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/hb/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/small_arms/hb/boltback.mp3" },
			{ 2.05, "lambdaplayers/weapons/m9k/small_arms/hb/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_HB
			wepent.M9KData.Spread = 0.075
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/hb/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_HB
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_HB

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_mp5 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/mp5.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "HK MP5",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_mp5",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1500,
		keepdistance = 625,

		reloadtime = 3,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.6,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/mp5/boltback.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/small_arms/mp5/clipout.mp3" },
			{ 1.75, "lambdaplayers/weapons/m9k/small_arms/mp5/clipin1.mp3" },
			{ 2.1, "lambdaplayers/weapons/m9k/small_arms/mp5/clipin2.mp3" },
			{ 2.7, "lambdaplayers/weapons/m9k/small_arms/mp5/boltslap.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_MP5
			wepent.M9KData.Spread = 0.072
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/mp5/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_MP5
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_MP5

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_mp5sd = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/mp5sd.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "HK MP5 SD",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_mp5sd",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1800,
		keepdistance = 500,

		reloadtime = 2.2,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.9,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/mp5sd/boltback.mp3" },
			{ 0.7, "lambdaplayers/weapons/m9k/small_arms/mp5sd/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/small_arms/mp5sd/clipin1.mp3" },
			{ 1.75, "lambdaplayers/weapons/m9k/small_arms/mp5sd/clipin2.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/small_arms/mp5sd/boltslap.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_MPSD
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/mp5sd/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_MPSD
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_MPSD

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_mp9 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/mp9.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "MP9",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_mp9",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1750,
		keepdistance = 500,

		reloadtime = 2,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.75,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/mp9/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/mp9/clipin.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/mp7/charginghandle_rack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_MP9
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/mp9/fire.mp3"
			wepent.M9KData.RateOfFire = fireRateTbl_MP9
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_MP9

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_mp40 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/mp40.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "MP40",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_mp40",
		bonemerge = true,

		clip = 32,
		islethal = true,
		attackrange = 1500,
		keepdistance = 500,

		reloadtime = 2.25,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/mp40/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/mp40/clipin.mp3" },
			{ 2, "lambdaplayers/weapons/m9k/small_arms/mp40/boltback.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_MP40
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/mp40/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_MP40
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_MP40

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_p90 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/p90.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "FN P90",
		holdtype = "rpg",
		killicon = "lambdaplayers/killicons/m9k_p90",
		bonemerge = true,

		clip = 50,
		islethal = true,
		attackrange = 2000,
		keepdistance = 800,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/p90/clipout.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/small_arms/p90/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/small_arms/p90/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_P90
			wepent.M9KData.Spread = 0.08
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/p90/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_P90
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_P90

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_pdr = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/magpul_pdr.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "Magpul PDR ",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_pdr",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1750,
		keepdistance = 500,

		reloadtime = 2.85,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.6,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/pdr/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/pdr/clipin.mp3" },
			{ 1.9, "lambdaplayers/weapons/m9k/small_arms/pdr/clipin2.mp3" },
			{ 2.3, "lambdaplayers/weapons/m9k/small_arms/pdr/boltpull.mp3" },
			{ 2.72, "lambdaplayers/weapons/m9k/small_arms/pdr/boltrelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_PDR
			wepent.M9KData.Spread = 0.075
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/pdr/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_PDR
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_PDR

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_pdw = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/kac_pdw.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "KAC PDW",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_kacpdw",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1600,
		keepdistance = 525,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/pdw/clipout.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/small_arms/pdw/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/small_arms/pdw/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_PDW
			wepent.M9KData.Spread = 0.0925
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/pdw/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_PDW
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_PDW

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_sten = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/sten.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "Sten",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_sten",
		bonemerge = true,

		clip = 32,
		islethal = true,
		attackrange = 1600,
		keepdistance = 500,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/sten/boltpull.mp3" },
			{ 0.9, "lambdaplayers/weapons/m9k/small_arms/sten/clipout.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/small_arms/sten/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/small_arms/sten/boltset.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_STEN
			wepent.M9KData.Spread = 0.075
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/sten/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_STEN
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_STEN

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_tommygun = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/tommygun.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "1928 Tommy Gun",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_tommy",
		bonemerge = true,

		clip = 50,
		islethal = true,
		attackrange = 2000,
		keepdistance = 650,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/tommyg/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/tommyg/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/small_arms/tommyg/boltcock.mp3" },
			{ 2.1, "lambdaplayers/weapons/m9k/small_arms/tommyg/boltlock.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_MAFIAGUN
			wepent.M9KData.Spread = 0.08
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/tommyg/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_MAFIAGUN
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_MAFIAGUN

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_ump45 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/ump45.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "HK UMP45",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_ump45",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1500,
		keepdistance = 500,

		reloadtime = 2,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.8,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/ump45/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/ump45/clipin.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/ump45/boltslap.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_UMP45
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/ump45/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_UMP45
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_UMP45

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_usc = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/usc.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "HK USC",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_usc",
		bonemerge = true,

		clip = 25,
		islethal = true,
		attackrange = 2000,
		keepdistance = 600,

		reloadtime = 1.8,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.8,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/ump45/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/ump45/clipin.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/ump45/boltslap.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_USC
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = fireSndTbl_USC
			wepent.M9KData.RateOfFire = fireRateTbl_USC
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_USC

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_smg_vector = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/kriss_vector.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "Kriss Vector",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_vector",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1500,
		keepdistance = 400,

		reloadtime = 2.25,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/kriss/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/kriss/clipin.mp3" },
			{ 2, "lambdaplayers/weapons/m9k/small_arms/kriss/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_VECTOR
			wepent.M9KData.Spread = 0.062
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/kriss/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_VECTOR
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds_VECTOR

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )