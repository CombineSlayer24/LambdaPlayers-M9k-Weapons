local fireDamageTbl = { 12, 16 }
local fireRateTbl = { 0.235, 0.63 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/usp/slideback.mp3" },
	{ 0.2, "lambdaplayers/weapons/m9k/small_arms/usp/slidepull.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_usp = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/usp.mdl",
		origin = "M9K",
		prettyname = "USP",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_usp",
		bonemerge = true,

		clip = 15,
		islethal = true,
		attackrange = 1600,
		keepdistance = 750,

		reloadtime = 1.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/usp/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/usp/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/usp/slidepull.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.0725
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/usp/fire.wav"
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