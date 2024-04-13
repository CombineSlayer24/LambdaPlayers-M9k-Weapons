local fireDamageTbl = { 24, 48 }
local fireRateTbl = { 0.36, 0.96 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/svd/boltback.mp3" },
	{ 0.7, "lambdaplayers/weapons/m9k/heavy/svd/boltforward.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_dragunov_svd = {
		model = "models/lambdaplayers/weapons/m9k/heavy/dragunov_svd.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Dragunov SVD",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_dragunov",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 500,

		reloadtime = 2.9,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.62,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/svd/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/heavy/svd/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/svd/cliptap.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/svd/boltback.mp3" },
			{ 2.65, "lambdaplayers/weapons/m9k/heavy/svd/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.048
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/svd/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )