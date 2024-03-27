local fireDamageTbl = { 10, 14 }
local fireRateTbl = { 0.32, 0.96 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/hk45/draw.mp3" },
	{ 0.25, "lambdaplayers/weapons/m9k/small_arms/hk45/slidepull.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/small_arms/hk45/sliderelease.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_hk45 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/hk45c.mdl",
		origin = "M9K",
		prettyname = "HK-45",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_hk45",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1500,
		keepdistance = 600,

		reloadtime = 1.6,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/hk45/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/hk45/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/hk45/slidepull.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/small_arms/hk45/sliderelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/hk45/fire.wav"
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