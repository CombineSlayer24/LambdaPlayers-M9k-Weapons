local IsValid = IsValid
local coroutine_wait = coroutine.wait

local fireDamageTbl = { 4, 8 }
local fireRateTbl = { 0.15, 1.2 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_striker = {
		model = "models/lambdaplayers/weapons/m9k/heavy/striker.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Amsel Striker",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_striker12",
		bonemerge = true,

		clip = 12,
		islethal = true,
		attackrange = 1500,
		keepdistance = 400,

		OnReload = function( self, wepent )
			self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_AR2 )
			local reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )

			self:SetIsReloading( true )
			self:Thread( function()

				coroutine_wait( 0.45 )
				
				local interruptEne = false
				while ( self.l_Clip < self.l_MaxClip ) do
					interruptEne = ( self.l_Clip > 4 and LambdaRNG( 1, 2 ) == 1 and self:InCombat() and self:IsInRange( self:GetEnemy(), 512 ) and self:CanSee( self:GetEnemy() ) )
					if interruptEne then break end 

					if !self:IsValidLayer( reloadLayer ) then
						reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )
					end
					self:SetLayerCycle( reloadLayer, 0.3 )
					self:SetLayerPlaybackRate( reloadLayer, 1.63 ) 

					self.l_Clip = self.l_Clip + 1
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/striker12/insert.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.35 )
				end

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_SHOTGUN )
				self:SetIsReloading( false )
				wepent:EmitSound( "lambdaplayers/weapons/m9k/assault_rifles/amd65/boltrack.mp3", 70, 100, 1, CHAN_ITEM )
			
			end, "M9K_ReloadStriker" )

			return true
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.036
			wepent.M9KData.Pellets = 6
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/striker12/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )