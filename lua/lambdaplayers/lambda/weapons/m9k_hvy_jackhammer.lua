local IsValid = IsValid
local coroutine_wait = coroutine.wait

local fireDamageTbl = { 4, 10 }
local fireRateTbl = { 0.24, 0.96 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/jackhammer/pump.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_jackhammer = {
		model = "models/lambdaplayers/weapons/m9k/heavy/jackhammer.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Pancor Jackhammer",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_jackhammer",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 1350,
		keepdistance = 400,

		reloadtime = 1.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.8,
		reloadsounds = { 
			{ 0.5, "lambdaplayers/weapons/m9k/heavy/jackhammer/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/jackhammer/clipin.mp3" },
		},


		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Pellets = 6
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/jackhammer/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )