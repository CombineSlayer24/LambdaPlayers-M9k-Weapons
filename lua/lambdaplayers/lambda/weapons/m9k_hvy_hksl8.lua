local fireDamageTbl = { 11, 35 }
local fireRateTbl = { 0.2, 0.8 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/hksl8/boltrack.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_hksl8 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/hk_sl8.mdl",
		origin = "M9K - Sniper Rifle",
		prettyname = "HK SL8",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_sl8",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 400,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/hksl8/clipout.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/heavy/hksl8/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/heavy/hksl8/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/hksl8/fire.wav"
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