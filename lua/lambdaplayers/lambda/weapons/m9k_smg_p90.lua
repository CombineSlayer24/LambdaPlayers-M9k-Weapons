local fireDamageTbl = { 8, 16 }
local fireRateTbl = { 0.0725, 0.32 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.8, "lambdaplayers/weapons/m9k/small_arms/p90/boltrack.mp3" },
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
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
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.0925
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/p90/fire.wav"
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