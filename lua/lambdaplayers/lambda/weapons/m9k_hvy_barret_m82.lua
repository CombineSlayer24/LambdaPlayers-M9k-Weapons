local fireDamageTbl = { 30, 60 }
local fireRateTbl = { 1.2, 3.8 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/m82/boltup.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/heavy/m82/boltdown.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_barret_m82 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/barret_m82.mdl",
		origin = "M9K - Sniper Rifle",
		prettyname = "Barret M82",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_m82",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 400,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/m82/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/heavy/m82/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/m82/boltup.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/heavy/m82/boltdown.mp3" },
		},

		speedmultiplier = 0.6,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/m82/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )