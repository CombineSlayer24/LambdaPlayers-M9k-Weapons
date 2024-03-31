local fireDamageTbl = { 15, 30 }
local fireRateTbl = { 0.095, 0.375 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/small_arms/hb/boltback.mp3" },
	{ 0.9, "lambdaplayers/weapons/m9k/small_arms/hb/boltforward.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
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
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.075
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/hb/fire.wav"
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