local fireDamageTbl = { 12, 20 }
local fireRateTbl = { 0.082, 0.35 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/pkm/bolt.mp3" }
}

local fireSndTbl = { 
	"lambdaplayers/weapons/m9k/heavy/pkm/fire1.wav", 
	"lambdaplayers/weapons/m9k/heavy/pkm/fire2.wav",
	"lambdaplayers/weapons/m9k/heavy/pkm/fire3.wav",
	"lambdaplayers/weapons/m9k/heavy/pkm/fire4.wav",
	"lambdaplayers/weapons/m9k/heavy/pkm/fire5.wav"
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_pkm = {
		model = "models/lambdaplayers/weapons/m9k/heavy/pkm.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "PKM",
		--holdtype = "crossbow",
		killicon = "lambdaplayers/killicons/m9k_pkm",
		bonemerge = true,

		clip = 100,
		islethal = true,
		attackrange = 1800,
		keepdistance = 500,

		reloadtime = 4.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.4,
		reloadsounds = { 
			{ 0.14, "lambdaplayers/weapons/m9k/heavy/pkm/coverup.mp3" },
			{ 0.82, "lambdaplayers/weapons/m9k/heavy/pkm/bullets.mp3" },
			{ 1.3, "lambdaplayers/weapons/m9k/heavy/pkm/clipout.mp3" },
			{ 2.2, "lambdaplayers/weapons/m9k/heavy/pkm/clipin.mp3" },
			{ 2.8, "lambdaplayers/weapons/m9k/heavy/pkm/chain.mp3" },
			{ 3.45, "lambdaplayers/weapons/m9k/heavy/pkm/coverdown.mp3" },
			{ 3.95, "lambdaplayers/weapons/m9k/heavy/pkm/coversmack.mp3" },
			{ 4.25, "lambdaplayers/weapons/m9k/heavy/pkm/bolt.mp3" }
		},

		speedmultiplier = 0.75,

		OnReload = function( self, wepent )
			if self.l_Clip > 99 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.0725
			wepent.M9KData.Sound = fireSndTbl
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