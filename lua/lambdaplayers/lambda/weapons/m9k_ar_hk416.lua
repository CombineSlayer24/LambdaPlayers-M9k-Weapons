local fireDamageTbl = { 10, 26 }
local fireRateTbl = { 0.08, 0.25 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/assault_rifles/hk416/boltrack.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
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
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.0625
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/hk416/fire.wav"
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