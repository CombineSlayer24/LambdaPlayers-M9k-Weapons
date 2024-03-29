local fireDamageTbl = { 8, 16 }
local fireRateTbl = { 0.064, 0.5 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/small_arms/mp7/charginghandle_rack.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_mp9 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/mp9.mdl",
		origin = "M9K",
		prettyname = "MP9",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_mp9",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1750,
		keepdistance = 500,

		reloadtime = 2,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.75,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/mp9/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/mp9/clipin.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/mp7/charginghandle_rack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/mp9/fire.mp3"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )