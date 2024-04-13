local fireDamageTbl = { 9, 18 }
local fireRateTbl = { 0.0925, 0.2775 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/m60/boltpull.mp3" },
	{ 0.68, "lambdaplayers/weapons/m9k/heavy/m60/boltrel.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_m60 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/m60.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "M-60",
		--holdtype = "crossbow",
		killicon = "lambdaplayers/killicons/m9k_m60",
		bonemerge = true,

		clip = 200,
		islethal = true,
		attackrange = 2000,
		keepdistance = 800,

		reloadtime = 3.75,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.5,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/m60/boxout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/m60/coverup.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/m60/boxin.mp3" },
			{ 2.75, "lambdaplayers/weapons/m9k/heavy/m60/chain.mp3" },
			{ 3.25, "lambdaplayers/weapons/m9k/heavy/m60/coverdown.mp3" }
		},

		speedmultiplier = 0.75,

		OnReload = function( self, wepent )
			if self.l_Clip > 100 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.09
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/m60/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			local rndAnims = LambdaRNG( 3 )

			if rndAnims == 1 then
				self.l_HoldType = "ar2"
			else
				self.l_HoldType = "crossbow"
			end

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )