local IsValid = IsValid
local coroutine_wait = coroutine.wait

local fireDamageTbl = { 3, 7 }
local fireRateTbl = { 0.36, 1.64 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_browningauto = {
		model = "models/lambdaplayers/weapons/m9k/heavy/browning_auto.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Browning Auto 5",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_browningauto",
		bonemerge = true,

		clip = 6,
		islethal = true,
		attackrange = 1800,
		keepdistance = 400,

		OnReload = function( self, wepent )
			self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_AR2 )
			local reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )

			self:SetIsReloading( true )
			self:Thread( function()

				coroutine_wait( 0.5 )
				
				local interruptEne = false
				while ( self.l_Clip < self.l_MaxClip ) do
					interruptEne = ( self.l_Clip > 3 and LambdaRNG( 1, 2 ) == 1 and self:InCombat() and self:IsInRange( self:GetEnemy(), 512 ) and self:CanSee( self:GetEnemy() ) )
					if interruptEne then break end 

					if !self:IsValidLayer( reloadLayer ) then
						reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )
					end
					self:SetLayerCycle( reloadLayer, 0.3 )
					self:SetLayerPlaybackRate( reloadLayer, 1.53 ) 

					self.l_Clip = self.l_Clip + 1
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/browninga5/insert.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.4 )
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
			wepent.M9KData.Spread = 0.035
			wepent.M9KData.Pellets = 10
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/browninga5/fire.wav"
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