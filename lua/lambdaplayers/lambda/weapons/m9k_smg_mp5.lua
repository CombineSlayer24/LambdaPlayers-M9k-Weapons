local fireDamageTbl = { 9, 20 }
local fireRateTbl = { 0.075, 0.3 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/mp5/boltback.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_mp5 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/mp5.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "HK MP5",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_mp5",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1500,
		keepdistance = 625,

		reloadtime = 3,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.6,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/mp5/boltback.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/small_arms/mp5/clipout.mp3" },
			{ 1.75, "lambdaplayers/weapons/m9k/small_arms/mp5/clipin1.mp3" },
			{ 2.1, "lambdaplayers/weapons/m9k/small_arms/mp5/clipin2.mp3" },
			{ 2.7, "lambdaplayers/weapons/m9k/small_arms/mp5/boltslap.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.072
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/mp5/fire.wav"
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