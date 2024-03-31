local fireDamageTbl = { 10, 17 }
local fireRateTbl = { 0.26, 0.78 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0, "lambdaplayers/weapons/m9k/small_arms/sig_p229/cliphit.mp3" },
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_sigp229 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/sig_p229.mdl",
		origin = "M9K - Pistols",
		prettyname = "Sig Sauer P229",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_p229",
		bonemerge = true,

		clip = 12,
		islethal = true,
		attackrange = 1500,
		keepdistance = 600,

		reloadtime = 1.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/sig_p229/clipout.mp3" },
			{ 0.8, "lambdaplayers/weapons/m9k/small_arms/sig_p229/clipin.mp3" },
			{ 1.1, "lambdaplayers/weapons/m9k/small_arms/sig_p229/cliphit.mp3" },
			{ 1.333, "lambdaplayers/weapons/m9k/small_arms/sig_p229/sliderelease.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/sig_p229/fire.wav"
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