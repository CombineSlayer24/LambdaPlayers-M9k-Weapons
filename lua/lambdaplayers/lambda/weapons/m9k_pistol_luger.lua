local fireDamageTbl = { 12, 18 }
local fireRateTbl = { 0.24, 0.8 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw.mp3" },
	{ 0.2, "lambdaplayers/weapons/m9k/small_arms/luger/sliderelease.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_luger = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/luger_p08.mdl",
		origin = "M9K - Pistols",
		prettyname = "Luger P08",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_luger",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1500,
		keepdistance = 600,

		reloadtime = 1.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/luger/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/luger/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/luger/sliderelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.0625
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/luger/fire.wav"
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