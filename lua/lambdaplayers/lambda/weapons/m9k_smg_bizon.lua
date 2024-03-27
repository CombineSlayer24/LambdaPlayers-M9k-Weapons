local fireDamageTbl = { 9, 14 }
local fireRateTbl = { 0.086, 0.43 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/small_arms/bizon/boltpull.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_bizon = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/w_pp19_bizon.mdl",
		origin = "M9K",
		prettyname = "PP Bizon",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_bizon",
		bonemerge = true,

		clip = 64,
		islethal = true,
		attackrange = 2200,
		keepdistance = 700,

		reloadtime = 2.3,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.68,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/bizon/cliprelease.mp3" },
			{ 0.8, "lambdaplayers/weapons/m9k/small_arms/bizon/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/bizon/clipin.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/small_arms/bizon/boltpull.mp3" },
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.09
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/bizon/fire.wav"
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