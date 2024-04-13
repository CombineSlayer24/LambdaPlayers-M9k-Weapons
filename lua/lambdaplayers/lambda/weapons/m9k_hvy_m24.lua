local fireDamageTbl = { 25, 50 }
local fireRateTbl = { 1.5, 3.0 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/m24/boltback.mp3" },
	{ 0.7, "lambdaplayers/weapons/m9k/heavy/m24/boltforward.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_m24 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/m24.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Remington M-24",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_m24",
		bonemerge = true,

		clip = 5,
		islethal = true,
		attackrange = 2500,
		keepdistance = 500,

		reloadtime = 2.65,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.75,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/m24/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/heavy/m24/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/heavy/m24/boltback.mp3" },
			{ 2.45, "lambdaplayers/weapons/m9k/heavy/m24/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.025
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/m24/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				if self:GetWeaponName() != "m9k_hvy_m24" or !IsValid( wepent ) then return true end
		
				self:SimpleTimer( 0.45, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/m24/boltback.mp3", 70, 100, 1, CHAN_ITEM )
				end )
		
				self:SimpleTimer( 0.75, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/m24/boltforward.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end
		
			return true
		end
		
	}
} )