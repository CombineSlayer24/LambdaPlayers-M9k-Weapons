local fireDamageTbl = { 9, 20 }
local fireRateTbl = { 0.25, 0.75 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/ump45/boltslap.mp3" }
}

local fireSndTbl = { "lambdaplayers/weapons/m9k/small_arms/usc/fire1.wav", "lambdaplayers/weapons/m9k/small_arms/usc/fire2.wav" }

table.Merge( _LAMBDAPLAYERSWEAPONS, {
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
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = fireSndTbl
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )