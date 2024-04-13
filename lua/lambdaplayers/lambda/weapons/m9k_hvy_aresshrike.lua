local fireDamageTbl = { 9, 18 }
local fireRateTbl = { 0.096, 0.48 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_areshrike = {
		model = "models/lambdaplayers/weapons/m9k/heavy/ares_shrike.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "Ares Shrike",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_ares_shrike",
		bonemerge = true,

		clip = 200,
		islethal = true,
		attackrange = 1900,
		keepdistance = 500,

		reloadtime = 3.75,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.44,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/shrike/boxout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/shrike/coverup.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/shrike/bullet.mp3" },
			{ 2.6, "lambdaplayers/weapons/m9k/heavy/shrike/boxin.mp3" },
			{ 3.0, "lambdaplayers/weapons/m9k/heavy/shrike/bullet.mp3" },
			{ 3.4, "lambdaplayers/weapons/m9k/heavy/shrike/coverdown.mp3" }
		},

		speedmultiplier = 0.75,

		OnReload = function( self, wepent )
			if self.l_Clip > 100 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.08
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/shrike/fire.wav"
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