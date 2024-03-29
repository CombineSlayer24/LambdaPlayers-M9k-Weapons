local fireDamageTbl = { 6, 14 }
local fireRateTbl = { 0.088, 0.3 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/mp5sd/boltback.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_mp5sd = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/mp5sd.mdl",
		origin = "M9K",
		prettyname = "HK MP5 SD",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_mp5sd",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1800,
		keepdistance = 500,

		reloadtime = 2.2,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.9,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/mp5sd/boltback.mp3" },
			{ 0.7, "lambdaplayers/weapons/m9k/small_arms/mp5sd/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/small_arms/mp5sd/clipin1.mp3" },
			{ 1.75, "lambdaplayers/weapons/m9k/small_arms/mp5sd/clipin2.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/small_arms/mp5sd/boltslap.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/mp5sd/fire.wav"
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