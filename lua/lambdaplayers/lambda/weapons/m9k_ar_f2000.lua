local fireDamageTbl = { 9, 18 }
local fireRateTbl = { 0.092, 0.364 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.475, "lambdaplayers/weapons/m9k/assault_rifles/f2000/boltback.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_ar_f2000 = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/f2000.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "FN F2000",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_f2000",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1750,
		keepdistance = 500,

		reloadtime = 2.6,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.68,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/f2000/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/f2000/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/f2000/boltback.mp3" },
			{ 2.2, "lambdaplayers/weapons/m9k/assault_rifles/f2000/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/f2000/fire.wav"
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