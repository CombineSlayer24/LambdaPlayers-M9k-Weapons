local fireDamageTbl = { 18, 27 }
local fireRateTbl = { 0.48, 0.96 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/svt40/boltback.mp3" },
	{ 0.64, "lambdaplayers/weapons/m9k/heavy/svt40/boltforward.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_svt40 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/svt40.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "SVT 40",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_svt40",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 475,

		reloadtime = 3.9,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/heavy/svt40/cloth1.mp3" },
			{ 0.19, "lambdaplayers/weapons/m9k/heavy/svt40/clipout.mp3" },
			{ 1.34, "lambdaplayers/weapons/m9k/heavy/svt40/clipin.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/heavy/svt40/cloth2.mp3" },
			{ 2.5, "lambdaplayers/weapons/m9k/heavy/svt40/cliptap.mp3" },
			{ 3.3, "lambdaplayers/weapons/m9k/heavy/svt40/boltback.mp3" },
			{ 3.5, "lambdaplayers/weapons/m9k/heavy/svt40/boltforward.mp3" }
		},

		--speedmultiplier = 0.75,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/svt40/fire.wav"
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