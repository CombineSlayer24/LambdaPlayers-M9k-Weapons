local fireDamageTbl = { 8, 20 }
local fireRateTbl = { 0.09, 0.48 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/pdr/clipin2.mp3" },
	{ 0.7, "lambdaplayers/weapons/m9k/small_arms/pdr/boltpull.mp3" },
	{ 0.92, "lambdaplayers/weapons/m9k/small_arms/pdr/boltrelease.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_pdr = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/magpul_pdr.mdl",
		origin = "M9K",
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
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.08
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/pdr/fire.wav"
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