local fireDamageTbl = { 16, 24 }
local fireRateTbl = { 0.56, 1.2 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/model3/hammer.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_model3 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/model3.mdl",
		origin = "M9K",
		prettyname = "Smith & Wesson Model 3 Russian",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_model3",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1200,
		keepdistance = 600,

		reloadtime = 2,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/model3/break_eject.mp3" },
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/model3/shellcasings_out.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/model3/bulletsin.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/small_arms/model3/break_close.mp3" },
			{ 1.7, "lambdaplayers/weapons/m9k/small_arms/model3/hammer.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.08
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