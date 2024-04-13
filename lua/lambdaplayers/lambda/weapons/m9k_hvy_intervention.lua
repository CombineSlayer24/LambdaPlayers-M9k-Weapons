local fireDamageTbl = { 32, 68 }
local fireRateTbl = { 1.75, 3.25 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3" },
	{ 0.8, "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3" },
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_intervention = {
		model = "models/lambdaplayers/weapons/m9k/heavy/intervention.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Intervention",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_intervention",
		bonemerge = true,

		clip = 5,
		islethal = true,
		attackrange = 2800,
		keepdistance = 460,

		reloadtime = 2.75,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.6,
		reloadsounds = { 
			{ 0.0336, "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/intervention/clipout.mp3" },
			{ 1.9, "lambdaplayers/weapons/m9k/heavy/intervention/clipin.mp3" },
			{ 2.5, "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.039
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/intervention/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				if self:GetWeaponName() != "m9k_hvy_intervention" or !IsValid( wepent ) then return true end
		
				self:SimpleTimer( 0.45, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3", 70, 100, 1, CHAN_ITEM )
				end )
		
				self:SimpleTimer( 0.75, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end
		
			return true
		end
		
	}
} )