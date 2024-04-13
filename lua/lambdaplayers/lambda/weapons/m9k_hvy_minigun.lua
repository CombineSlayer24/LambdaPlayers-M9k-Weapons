local fireDamageTbl = { 12, 18 }
local fireRateTbl = { 0.02, 0.2 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/minigun/boltrack.mp3" },
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_minigun = {
		model = "models/lambdaplayers/weapons/m9k/heavy/minigun.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "M134 Rotary Cannon",
		holdtype = "crossbow",
		killicon = "lambdaplayers/killicons/m9k_minigun",
		bonemerge = true,

		clip = 300,
		islethal = true,
		attackrange = 2500,
		keepdistance = 800,

		reloadtime = 4.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.44,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/minigun/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/minigun/clipin.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/minigun/coverup.mp3" },
			{ 2.75, "lambdaplayers/weapons/m9k/heavy/minigun/chain.mp3" },
			{ 3.25, "lambdaplayers/weapons/m9k/heavy/minigun/coverdown.mp3" },
			{ 4, "lambdaplayers/weapons/m9k/heavy/minigun/boltrack.mp3" }
		},

		speedmultiplier = 0.5,

		OnReload = function( self, wepent )
			if self.l_Clip > 150 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.15
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/minigun/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			self:SimpleTimer( 0.45, function()
				if LambdaRNG( 100 ) <= self:GetVoiceChance() and !self:IsSpeaking() then self:PlaySoundFile( self:GetVoiceLine( "taunt" ) ) end
			end )

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )