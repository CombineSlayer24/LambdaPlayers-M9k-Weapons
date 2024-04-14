local fireDamageTbl = { 32, 62 }
local fireRateTbl = { 1.5, 4.0 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/heavy/g2contender/cock1.mp3" },
	{ 0.75, "lambdaplayers/weapons/m9k/heavy/g2contender/cock2.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_g2contender = {
		model = "models/lambdaplayers/weapons/m9k/heavy/g2contender.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "G2 Contender",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_g2con",
		bonemerge = true,

		clip = 1,
		islethal = true,
		attackrange = 2500,
		keepdistance = 300,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.6,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/g2contender/open.mp3" },
			{ 0.75, "lambdaplayers/weapons/m9k/heavy/g2contender/bullet_out.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/g2contender/tink" .. LambdaRNG( 1, 4 ) .. ".mp3" },
			{ 1.65, "lambdaplayers/weapons/m9k/heavy/g2contender/bullet_in.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/g2contender/close.mp3" },
			{ 2.5, "lambdaplayers/weapons/m9k/heavy/g2contender/cock2.mp3" },
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.032
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/g2contender/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )