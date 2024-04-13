local fireDamageTbl = { 12, 36 }
local fireRateTbl = { 0.36, 0.96 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/svu/boltrack.mp3" },
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_dragunov_svu = {
		model = "models/lambdaplayers/weapons/m9k/heavy/dragunov_svu.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Dragunov SVU",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_svu",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2200,
		keepdistance = 400,

		reloadtime = 2.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/svu/clipout.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/heavy/svu/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/heavy/svu/boltrack.mp3" }
		},
		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.036
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/svu/fire.wav"
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