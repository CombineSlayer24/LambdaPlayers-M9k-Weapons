local IsValid = IsValid
local coroutine_wait = coroutine.wait

local fireDamageTbl = { 2, 8 }
local fireRateTbl = { 0.48, 1.04 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/spas12/pump.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_spas12 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/spas12.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Frenchi Spas-12",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_spas12",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1350,
		keepdistance = 400,

		OnReload = function( self, wepent )
			self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_AR2 )
			local reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )

			self:SetIsReloading( true )
			self:Thread( function()

				coroutine_wait( 0.65 )
				
				local interruptEne = false
				while ( self.l_Clip < self.l_MaxClip ) do
					interruptEne = ( self.l_Clip > 0 and LambdaRNG( 1, 2 ) == 1 and self:InCombat() and self:IsInRange( self:GetEnemy(), 512 ) and self:CanSee( self:GetEnemy() ) )
					if interruptEne then break end 

					if !self:IsValidLayer( reloadLayer ) then
						reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )
					end
					self:SetLayerCycle( reloadLayer, 0.3 )
					self:SetLayerPlaybackRate( reloadLayer, 1.33 ) 

					self.l_Clip = self.l_Clip + 1
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/spas12/insert.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				if !interruptEne then
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/spas12/pump.mp3", 70, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_AR2 )
				self:SetIsReloading( false )
			
			end, "M9K_ReloadSpas12" )

			return true
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Pellets = 8
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/spas12/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )