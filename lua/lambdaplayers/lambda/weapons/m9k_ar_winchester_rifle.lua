local IsValid = IsValid
local coroutine_wait = coroutine.wait

local fireDamageTbl = { 12, 32 }
local fireRateTbl = { 0.92, 1.86 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/assault_rifles/draw_pullout_rifle.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/assault_rifles/winchester/cock.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_ar_winchester_rifle = {
		model = "models/lambdaplayers/weapons/m9k/assault_rifles/winchester_rifle.mdl",
		origin = "M9K - Assault Rifles",
		prettyname = "1873 Winchester Repeater",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_win73",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1800,
		keepdistance = 400,

		OnReload = function( self, wepent )
			self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_AR2 )
			local reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )

			self:SetIsReloading( true )
			self:Thread( function()

				coroutine_wait( 0.45 )
				
				while ( self.l_Clip < self.l_MaxClip ) do
					local ene = self:GetEnemy()
					if self.l_Clip > 0 and LambdaRNG( 1, 2, false ) == 1 and self:InCombat() and self:IsInRange( ene, 600 ) and self:CanSee( ene ) then break end
					self.l_Clip = self.l_Clip + 1

					if !self:IsValidLayer( reloadLayer ) then
						reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )
					end
					self:SetLayerCycle( reloadLayer, 0.3 )
					self:SetLayerPlaybackRate( reloadLayer, 1.33 ) 

					wepent:EmitSound( "lambdaplayers/weapons/m9k/assault_rifles/winchester/insertcartridge.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.475 )
				end

				coroutine_wait( 0.5 )

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_AR2 )
				self:SetIsReloading( false )
				wepent:EmitSound( "lambdaplayers/weapons/m9k/assault_rifles/winchester/cock.mp3", 70, 100, 1, CHAN_ITEM )
			
			end, "M9K_ReloadWinchester" )

			return true
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.062
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/assault_rifles/winchester/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_ar_winchester_rifle" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/assault_rifles/winchester/cock.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	}
} )