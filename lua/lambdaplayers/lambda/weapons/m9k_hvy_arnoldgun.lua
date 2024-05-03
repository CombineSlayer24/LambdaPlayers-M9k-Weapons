local IsValid = IsValid
local coroutine_wait = coroutine.wait

local fireDamageTbl = { 4, 10 }
local fireRateTbl = { 1.2, 1.60 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/1887winchester/cock.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/heavy/1887winchester/decock.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_arnoldgun = { -- Ok, Usually, I name weapons consistently, but I had name it like this :) Arnie!
		model = "models/lambdaplayers/weapons/m9k/heavy/winchester_1887.mdl",
		origin = "M9K - Shotguns",
		prettyname = "1887 Winchester Shotgun",
		--holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_win87",
		bonemerge = true,

		clip = 4,
		islethal = true,
		attackrange = 1250,
		keepdistance = 350,

		OnReload = function( self, wepent )
			self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_AR2 )
			local reloadLayer = self:AddGesture( ACT_HL2MP_GESTURE_RELOAD_AR2, true )

			wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/1887winchester/cock.mp3", 70, 100, 1, CHAN_ITEM )

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
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/1887winchester/insert.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				if !interruptEne then
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/1887winchester/decock.mp3", 70, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_SHOTGUN )
				self:SetIsReloading( false )
			
			end, "M9K_ReloadArnieGun" )

			return true
		end,


		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.048
			wepent.M9KData.Pellets = 10
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			local rndAnims = LambdaRNG( 3 )

			if rndAnims == 1 then
				self.l_HoldType = "ar2"
			else
				self.l_HoldType = "shotgun"
			end

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_hvy_arnoldgun" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/1887winchester/laction.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	}
} )