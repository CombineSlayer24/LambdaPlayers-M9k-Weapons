local fireDamageTbl = { 12, 27 }
local fireRateTbl = { 0.07, 0.28 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/assault_rifles/ak74/boltrack.mp3" }
}

local fireSndTbl = { "lambdaplayers/weapons/m9k/assault_rifles/famas/fire1.wav", "lambdaplayers/weapons/m9k/assault_rifles/famas/fire2.wav" }

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_ar_famas = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/famas.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "Famas",
		holdtype = "rpg",
		killicon = "lambdaplayers/killicons/m9k_famas",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1650,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/famas/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/famas/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/ak74/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.096
			wepent.M9KData.Sound = fireSndTbl
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