local fireDamageTbl = { 11, 29 }
local fireRateTbl = { 0.9, 2.7 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/7615p/pump.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_remington_7615p = {
		model = "models/lambdaplayers/weapons/m9k/heavy/remington_7615p.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Remington 7615 Patrol Rifle",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_remington7615",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2200,
		keepdistance = 450,

		reloadtime = 2.7,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.62,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/7615p/clipout.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/7615p/clipin.mp3" },
			{ 2.4, "lambdaplayers/weapons/m9k/heavy/7615p/pump.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.018
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/7615p/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				if self:GetWeaponName() != "m9k_hvy_remington_7615p" or !IsValid( wepent ) then return true end
		
				self:SimpleTimer( 0.45, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/7615p/pump.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end
		
			return true
		end
		
	}
} )