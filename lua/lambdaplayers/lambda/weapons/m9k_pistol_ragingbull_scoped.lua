local fireDamageTbl = { 18, 28 }
local fireRateTbl = { 0.58, 1.22 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.3, "lambdaplayers/weapons/m9k/small_arms/r_bull/draw_gun.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_ragingb_scoped = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/ragingbull_scope.mdl",
		origin = "M9K - Pistols",
		prettyname = "Raging Bull Scoped",
		holdtype = "revolver",
		killicon = "lambdaplayers/killicons/m9k_rbs",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 2200,
		keepdistance = 640,

		reloadtime = 3.2,
		reloadanimspeed = 1.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/small_arms/r_bull/bullreload.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/r_bull/fire.wav"
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