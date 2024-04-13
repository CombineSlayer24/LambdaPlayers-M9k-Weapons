local fireDamageTbl = { 16, 32 }
local fireRateTbl = { 0.325, 1 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/assault_rifles/m14/boltrack.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_ar_m14 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/m14.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "M14",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_m14",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 2200,
		keepdistance = 500,

		reloadtime = 2.65,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.68,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/m14/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/assault_rifles/m14/clipin.mp3" },
			{ 2.3, "lambdaplayers/weapons/m9k/assault_rifles/m14/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/m14/fire.wav"
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