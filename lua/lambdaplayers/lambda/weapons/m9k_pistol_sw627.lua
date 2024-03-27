local fireDamageTbl = { 12, 20 }
local fireRateTbl = { 0.5, 1.25 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/draw.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_sw627 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/w_sw_model_627.mdl",
		origin = "M9K",
		prettyname = "S&W Model 627",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_627",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1200,
		keepdistance = 500,

		reloadtime = 1.8,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/colt_python/unfold.mp3" },
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/colt_python/bulletsout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/colt_python/bulletsin.mp3" },
			{ 1.633, "lambdaplayers/weapons/m9k/small_arms/colt_python/blick.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.075
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/colt_python/fire.wav"
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