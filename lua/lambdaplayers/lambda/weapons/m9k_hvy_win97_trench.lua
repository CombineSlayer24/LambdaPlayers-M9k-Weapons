local IsValid = IsValid
local coroutine_wait = coroutine.wait

local fireDamageTbl = { 2, 8 }
local fireRateTbl = { 0.8, 1.6 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/1897trench/pump.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_win97_trench = {
		model = "models/lambdaplayers/weapons/m9k/heavy/winchester_1897_trench.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Winchester 1897 Trenchgun",
		holdtype = "shotgun",
		killicon = "lambdaplayers/killicons/m9k_win97",
		bonemerge = true,

		clip = 4,
		islethal = true,
		attackrange = 1000,
		keepdistance = 320,

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
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/1897trench/insert.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				if !interruptEne then
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/1897trench/pump.mp3", 70, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_SHOTGUN )
				self:SetIsReloading( false )
			
			end, "M9K_ReloadM3" )

			return true
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.042
			wepent.M9KData.Pellets = 11
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/1897trench/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_hvy_win97_trench" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/1897trench/pump.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	}
} )