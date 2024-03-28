local fireDamageTbl = { 11, 20 }
local fireRateTbl = { 0.105, 0.4 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.8, "lambdaplayers/weapons/m9k/small_arms/sten/boltrack.mp3" },
	{ 1.2, "lambdaplayers/weapons/m9k/small_arms/sten/boltset.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_stem = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/sten.mdl",
		origin = "M9K",
		prettyname = "Sten",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_sten",
		bonemerge = true,

		clip = 32,
		islethal = true,
		attackrange = 1600,
		keepdistance = 600,

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
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.075
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/sten/fire.wav"
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