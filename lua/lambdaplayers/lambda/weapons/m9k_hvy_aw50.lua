local fireDamageTbl = { 28, 50 }
local fireRateTbl = { 1.0, 3.0 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/aw50/boltaction.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_aw50 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/aw50.mdl",
		origin = "M9K - Sniper Rifle",
		prettyname = "Accuracy International AW-50",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_aw50",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 400,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/aw50/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/heavy/aw50/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/aw50/boltforward.mp3" }
		},

		speedmultiplier = 0.75,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/aw50/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_hvy_aw50" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/aw50/boltaction.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	}
} )