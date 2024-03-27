local fireDamageTbl = { 16, 24 }
local fireRateTbl = { 0.55, 1.12 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/satan/unfold.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_satan = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/m29_satan.mdl",
		origin = "M9K",
		prettyname = "M29 Satan",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_satan",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1600,
		keepdistance = 650,

		reloadtime = 1.8,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/satan/unfold.mp3" },
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/satan/bulletsout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/satan/bulletsin.mp3" },
			{ 1.633, "lambdaplayers/weapons/m9k/small_arms/satan/blick.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.09
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/satan/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end,

		OnReload = function( self, wepent )
			local anim = self:LookupSequence( "reload_revolver_base_layer" )
			if anim != -1 then
				-- Stops animation's event sounds from running
				self:AddGestureSequence( anim )
			else
				self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_REVOLVER )
			end

			-- Cool shell ejects
			self:SimpleWeaponTimer( 0.5, function() 
				for i = 1, 6 do self:HandleShellEject( "ShellEject" ) end
			end )
		end
	}
} )