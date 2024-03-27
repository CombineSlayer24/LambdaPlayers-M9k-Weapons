local fireDamageTbl = { 8, 12 }
local fireRateTbl = { 0.05, 0.225 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/glock/sliderack.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_glock = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/glock17.mdl",
		origin = "M9K",
		prettyname = "Auto Glock-17",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_glock",
		bonemerge = true,

		clip = 32,
		islethal = true,
		attackrange = 1750,
		keepdistance = 750,

		reloadtime = 1.9,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/glock/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/glock/clipin.mp3" },
			{ 1.633, "lambdaplayers/weapons/m9k/small_arms/glock/sliderack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.09
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/glock/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )