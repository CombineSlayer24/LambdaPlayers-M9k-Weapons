local fireDamageTbl = { 16, 34 }
local fireRateTbl = { 0.7, 1.43 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/draw.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_remington1858 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/remington_1858.mdl",
		origin = "M9K",
		prettyname = "Remington Army 1858",
		holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_rem1858",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1500,
		keepdistance = 650,

		reloadtime = 1.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/small_arms/colt_python/blick.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/remington_fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,
	}
} )