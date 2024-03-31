local fireDamageTbl = { 7, 15 }
local fireRateTbl = { 0.092, 0.45 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/pdw/boltrack.mp3" },
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
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
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.0925
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/pdw/fire.wav"
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