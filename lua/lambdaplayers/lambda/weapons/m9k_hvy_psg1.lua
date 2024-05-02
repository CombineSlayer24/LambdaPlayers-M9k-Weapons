local fireDamageTbl = { 10, 40 }
local fireRateTbl = { 0.4, 1.2 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/psg1/boltslam.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_psg1 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/hk_psg1.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "HK PSG-1",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_psg1",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 400,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/psg1/boltback.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/heavy/psg1/clipout.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/psg1/clipin.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/psg1/boltslam.mp3" },
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/psg1/fire.wav"
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