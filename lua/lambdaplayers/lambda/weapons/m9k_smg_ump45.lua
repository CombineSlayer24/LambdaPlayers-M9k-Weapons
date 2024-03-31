local fireDamageTbl = { 7, 16 }
local fireRateTbl = { 0.09, 0.3 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/small_arms/ump45/boltslap.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_ump45 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/ump45.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "HK UMP45",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_ump45",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1500,
		keepdistance = 500,

		reloadtime = 2,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.8,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/ump45/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/ump45/clipin.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/ump45/boltslap.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/ump45/fire.wav"
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