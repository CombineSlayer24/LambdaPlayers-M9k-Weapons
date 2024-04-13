local fireDamageTbl = { 8, 12 }
local fireRateTbl = { 0.07, 0.28 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/m249_saw/boltpull.mp3" },
	{ 0.68, "lambdaplayers/weapons/m9k/heavy/m249_saw/boltrel.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_m249 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/m249_saw.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "M249 Squad Assault Weapon",
		--holdtype = "crossbow",
		killicon = "lambdaplayers/killicons/m9k_m249",
		bonemerge = true,

		clip = 150,
		islethal = true,
		attackrange = 2000,
		keepdistance = 700,

		reloadtime = 4.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.44,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/m249_saw/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/m249_saw/clipin.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/m249_saw/coverup.mp3" },
			{ 2.75, "lambdaplayers/weapons/m9k/heavy/m249_saw/chain_fiddle.mp3" },
			{ 3.25, "lambdaplayers/weapons/m9k/heavy/m249_saw/coverdown.mp3" },
			{ 3.8, "lambdaplayers/weapons/m9k/heavy/m249_saw/boltpull.mp3" },
			{ 3.92, "lambdaplayers/weapons/m9k/heavy/m249_saw/boltrel.mp3" }
		},

		speedmultiplier = 0.75,

		OnReload = function( self, wepent )
			if self.l_Clip > 75 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/m249_saw/fire.wav"
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