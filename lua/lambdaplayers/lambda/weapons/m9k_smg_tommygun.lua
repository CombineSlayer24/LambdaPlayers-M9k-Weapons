local fireDamageTbl = { 8, 18 }
local fireRateTbl = { 0.096, 0.384 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.8, "lambdaplayers/weapons/m9k/small_arms/tommyg/boltcock.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_tommygun = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/tommygun.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "1928 Tommy Gun",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_tommy",
		bonemerge = true,

		clip = 50,
		islethal = true,
		attackrange = 2000,
		keepdistance = 650,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/tommyg/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/tommyg/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/small_arms/tommyg/boltcock.mp3" },
			{ 2.1, "lambdaplayers/weapons/m9k/small_arms/tommyg/boltlock.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.08
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/tommyg/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )