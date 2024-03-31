local fireDamageTbl = { 15, 26 }
local fireRateTbl = { 0.48, 0.96 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/draw.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/slideback.mp3" },
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_deagle = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/desert_eagle.mdl",
		origin = "M9K - Pistols",
		prettyname = "Desert Eagle",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_deagle",
		bonemerge = true,

		clip = 7,
		islethal = true,
		attackrange = 1400,
		keepdistance = 625,

		reloadtime = 1.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/clipout.mp3" },
			{ 1.0, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/clipin.mp3" },
			{ 1.233, "lambdaplayers/weapons/m9k/small_arms/desert_eagle/slideback.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.08
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/desert_eagle/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )