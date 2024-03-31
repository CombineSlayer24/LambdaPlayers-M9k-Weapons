local fireDamageTbl = { 13, 29 }
local fireRateTbl = { 0.095, 0.365 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/assault_rifles/scar/boltrack.mp3" }
}

local fireSndTbl = { 
	"lambdaplayers/weapons/m9k/assault_rifles/scar/fire1.wav", 
	"lambdaplayers/weapons/m9k/assault_rifles/scar/fire2.wav",
	"lambdaplayers/weapons/m9k/assault_rifles/scar/fire3.wav",
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_ar_scar = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/scar.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "FN Scar H",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_scar",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1950,
		keepdistance = 650,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/assault_rifles/scar/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/assault_rifles/scar/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/assault_rifles/scar/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.062
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