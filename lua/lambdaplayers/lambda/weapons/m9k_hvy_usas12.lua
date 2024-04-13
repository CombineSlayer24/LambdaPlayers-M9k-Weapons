local IsValid = IsValid
local coroutine_wait = coroutine.wait

local fireDamageTbl = { 6, 8 }
local fireRateTbl = { 0.27, 0.27 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/bar/boltrack.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_usas12 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/usas_12.mdl",
		origin = "M9K - Shotguns",
		prettyname = "USAS-12",
		--holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_usas",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1400,
		keepdistance = 450,

		reloadtime = 1.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.8,
		reloadsounds = { 
			{ 0.5, "lambdaplayers/weapons/m9k/heavy/usas12/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/usas12/clipin.mp3" },
		},

		OnReload = function( self, wepent )
			if self.l_Clip > 10 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Pellets = 10
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/usas12/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			local rndAnims = LambdaRNG( 3 )

			if rndAnims == 1 then
				self.l_HoldType = "crossbow"
			else
				self.l_HoldType = "ar2"
			end

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )