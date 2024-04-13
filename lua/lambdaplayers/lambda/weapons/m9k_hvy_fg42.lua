local fireDamageTbl = { 8, 24 }
local fireRateTbl = { 0.065, 0.25 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/fg42/boltrack.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_fg42 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/fg42.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "FG42",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_fg42",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1700,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/fg42/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/heavy/fg42/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/fg42/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.062
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/fg42/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )