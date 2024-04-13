local fireDamageTbl = { 6, 24 }
local fireRateTbl = { 0.075, 0.3 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.65, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/boltrack.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_ar_asval = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/val.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "AS Val",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_val",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1500,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/vikhr/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/vikhr/val_fire.wav"
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