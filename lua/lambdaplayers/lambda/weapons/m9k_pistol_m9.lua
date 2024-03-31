local fireDamageTbl = { 9, 13 }
local fireRateTbl = { 0.25, 0.75 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/m9/slideback.mp3" },
	{ 0.2, "lambdaplayers/weapons/m9k/small_arms/m9/sliderelease.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_m9 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/beretta_m92.mdl",
		origin = "M9K - Pistols",
		prettyname = "M9 Beretta",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_m9",
		bonemerge = true,

		clip = 15,
		islethal = true,
		attackrange = 1500,
		keepdistance = 550,

		reloadtime = 1.6,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/m9/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/m9/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/m9/slideback.mp3" },
			{ 1.4, "lambdaplayers/weapons/m9k/small_arms/m9/sliderelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/m9/fire.wav"
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