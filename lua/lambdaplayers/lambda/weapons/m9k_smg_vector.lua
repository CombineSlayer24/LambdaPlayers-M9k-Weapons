local fireDamageTbl = { 8, 22 }
local fireRateTbl = { 0.084, 0.35 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/small_arms/kriss/boltrack.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_vector = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/kriss_vector.mdl",
		origin = "M9K",
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
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.062
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/kriss/fire.wav"
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