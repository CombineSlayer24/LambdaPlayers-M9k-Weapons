local fireDamageTbl = { 8, 22 }
local fireRateTbl = { 0.128, 0.64 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/small_arms/mp40/clipin.mp3" },
	{ 1.25, "lambdaplayers/weapons/m9k/small_arms/mp40/boltback.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_mp40 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/mp40.mdl",
		origin = "M9K",
		prettyname = "MP40",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_mp40",
		bonemerge = true,

		clip = 32,
		islethal = true,
		attackrange = 1500,
		keepdistance = 500,

		reloadtime = 2.25,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/mp40/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/mp40/clipin.mp3" },
			{ 2, "lambdaplayers/weapons/m9k/small_arms/mp40/boltback.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.055
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/mp40/fire.wav"
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