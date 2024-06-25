local IsValid = IsValid
local coroutine_wait = coroutine.wait
local random = math.random
local EmitSound = EmitSound
-----------------------------------------------------------------------------------
-- Local Data For Weapons
-----------------------------------------------------------------------------------
local fireDamageTbl_ARESS = { 9, 18 }
local fireRateTbl_ARESS = { 0.096, 0.48 }
local deploySnds_ARESS = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" }
}

local fireDamageTbl_WIN87 = { 4, 10 }
local fireRateTbl_WIN87 = { 1.2, 1.60 }
local deploySnds_WIN87 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/1887winchester/cock.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/heavy/1887winchester/decock.mp3" }
}

local fireDamageTbl_AW50 = { 28, 50 }
local fireRateTbl_AW50 = { 1.0, 3.0 }
local deploySnds_AW50 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/aw50/boltaction.mp3" }
}

local fireDamageTbl_BAR = { 9, 18 }
local fireRateTbl_BAR = { 0.13, 0.39 }
local deploySnds_BAR = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/bar/boltrack.mp3" }
}

local fireDamageTbl_BM82 = { 30, 60 }
local fireRateTbl_BM82 = { 1.2, 3.8 }
local deploySnds_BM82 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/m82/boltup.mp3" },
	{ 0.6, "lambdaplayers/weapons/m9k/heavy/m82/boltdown.mp3" }
}

local fireDamageTbl_BM98B = { 20, 50 }
local fireRateTbl_BM98B = { 1.75, 3.25 }
local deploySnds_BM98B = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/m98/bolt.mp3" }
}

local fireDamageTbl_BROWNAUTO = { 3, 7 }
local fireRateTbl_BROWNAUTO = { 0.36, 1.64 }
local deploySnds_BROWNAUTO = { { 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" } }

local fireDamageTbl_DBARREL = { 4, 10 }
local fireRateTbl_DBARREL = { 0.8, 2.2 }
local deploySnds_DBARREL = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/breakclose.mp3" }
}

local fireDamageTbl_DRAGNOVSVD = { 24, 48 }
local fireRateTbl_DRAGNOVSVD = { 0.36, 0.96 }
local deploySnds_DRAGNOVSVD = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/svd/boltback.mp3" },
	{ 0.7, "lambdaplayers/weapons/m9k/heavy/svd/boltforward.mp3" }
}

local fireDamageTbl_DRAGNOVSVU = { 12, 36 }
local fireRateTbl_DRAGNOVSVU = { 0.36, 0.96 }
local deploySnds_DRAGNOVSVU = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/svu/boltrack.mp3" },
}

local fireDamageTbl_FG42 = { 8, 24 }
local fireRateTbl_FG42 = { 0.065, 0.25 }
local deploySnds_FG42 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/fg42/boltrack.mp3" }
}

local fireDamageTbl_G2 = { 32, 62 }
local fireRateTbl_G2 = { 1.5, 4.0 }
local deploySnds_G2 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/heavy/g2contender/cock1.mp3" },
	{ 0.75, "lambdaplayers/weapons/m9k/heavy/g2contender/cock2.mp3" }
}

local fireDamageTbl_KHSL8 = { 11, 35 }
local fireRateTbl_KHSL8 = { 0.2, 0.8 }
local deploySnds_KHSL8 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/hksl8/boltrack.mp3" }
}

local fireDamageTbl_INTVEN = { 32, 68 }
local fireRateTbl_INTVEN = { 1.75, 3.25 }
local deploySnds_INTVEN = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3" },
	{ 0.8, "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3" },
}

local fireDamageTbl_ITHACA = { 4, 10 }
local fireRateTbl_ITHACA = { 0.8, 1.6 }
local deploySnds_ITHACA = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/ithaca_m37/pump.mp3" }
}

local fireDamageTbl_JACKHMR = { 4, 10 }
local fireRateTbl_JACKHMR = { 0.24, 0.96 }
local deploySnds_JACKHMR = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/jackhammer/pump.mp3" }
}

local fireDamageTbl_M3 = { 2, 8 }
local fireRateTbl_M3 = { 0.8, 1.6 }
local deploySnds_M3 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/benelli_m3/pump.mp3" }
}

local fireDamageTbl_M24 = { 25, 50 }
local fireRateTbl_M24 = { 1.5, 3.0 }
local deploySnds_M24 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/m24/boltback.mp3" },
	{ 0.7, "lambdaplayers/weapons/m9k/heavy/m24/boltforward.mp3" }
}

local fireDamageTbl_M60 = { 9, 18 }
local fireRateTbl_M60 = { 0.0925, 0.2775 }
local deploySnds_M60 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/m60/boltpull.mp3" },
	{ 0.68, "lambdaplayers/weapons/m9k/heavy/m60/boltrel.mp3" }
}

local fireDamageTbl_M249 = { 8, 12 }
local fireRateTbl_M249 = { 0.07, 0.28 }
local deploySnds_M249 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/m249_saw/boltpull.mp3" },
	{ 0.68, "lambdaplayers/weapons/m9k/heavy/m249_saw/boltrel.mp3" }
}

local fireDamageTbl_M590 = { 4, 8 }
local fireRateTbl_M590 = { 0.8, 2.0 }
local deploySnds_M590 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/mossberg590/pump.mp3" }
}

local fireDamageTbl_PKM = { 12, 20 }
local fireRateTbl_PKM = { 0.082, 0.35 }
local deploySnds_PKM = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/pkm/bolt.mp3" }
}

local fireSndTbl_PKM = { 
	"lambdaplayers/weapons/m9k/heavy/pkm/fire1.wav", 
	"lambdaplayers/weapons/m9k/heavy/pkm/fire2.wav",
	"lambdaplayers/weapons/m9k/heavy/pkm/fire3.wav",
	"lambdaplayers/weapons/m9k/heavy/pkm/fire4.wav",
	"lambdaplayers/weapons/m9k/heavy/pkm/fire5.wav"
}

local fireDamageTbl_PSG1 = { 10, 40 }
local fireRateTbl_PSG1 = { 0.4, 1.2 }
local deploySnds_PSG1 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/psg1/boltslam.mp3" }
}

local fireDamageTbl_R7615 = { 11, 29 }
local fireRateTbl_R7615 = { 0.9, 2.7 }
local deploySnds_R7615 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/7615p/pump.mp3" }
}

local fireDamageTbl_R870 = { 5, 9 }
local fireRateTbl_R870 = { 0.8, 2.0 }
local deploySnds_R870 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/rem870/pump.mp3" }
}

local fireDamageTbl_SPAS = { 2, 8 }
local fireRateTbl_SPAS = { 0.48, 1.04 }
local deploySnds_SPAS = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/spas12/pump.mp3" }
}

local fireDamageTbl_STRIKER = { 4, 8 }
local fireRateTbl_STRIKER = { 0.15, 1.2 }
local deploySnds_STRIKER = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" }
}

local fireDamageTbl_SVT = { 18, 27 }
local fireRateTbl_SVT = { 0.48, 0.96 }
local deploySnds_SVT = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.52, "lambdaplayers/weapons/m9k/heavy/svt40/boltback.mp3" },
	{ 0.64, "lambdaplayers/weapons/m9k/heavy/svt40/boltforward.mp3" }
}

local fireDamageTbl_USAS12 = { 6, 8 }
local fireRateTbl_USAS12 = { 0.27, 0.27 }
local deploySnds_USAS12 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/bar/boltrack.mp3" }
}

local fireDamageTbl_WIN97 = { 2, 8 }
local fireRateTbl_WIN97 = { 0.8, 1.6 }
local deploySnds_WIN97 = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/1897trench/pump.mp3" }
}
-----------------------------------------------------------------------------------
-- End OF Locals
-----------------------------------------------------------------------------------

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_hvy_areshrike = {
		model = "models/lambdaplayers/weapons/m9k/heavy/ares_shrike.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "Ares Shrike",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_ares_shrike",
		bonemerge = true,

		clip = 200,
		islethal = true,
		attackrange = 1900,
		keepdistance = 500,

		reloadtime = 3.75,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.44,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/shrike/boxout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/shrike/coverup.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/shrike/bullet.mp3" },
			{ 2.6, "lambdaplayers/weapons/m9k/heavy/shrike/boxin.mp3" },
			{ 3.0, "lambdaplayers/weapons/m9k/heavy/shrike/bullet.mp3" },
			{ 3.4, "lambdaplayers/weapons/m9k/heavy/shrike/coverdown.mp3" }
		},

		speedmultiplier = 0.75,

		OnReload = function( self, wepent )
			if self.l_Clip > 100 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_ARESS
			wepent.M9KData.Spread = 0.08
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/shrike/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_ARESS
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_ARESS

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_arnoldgun = { -- Ok, Usually, I name weapons consistently, but I had name it like this :) Arnie!
		model = "models/lambdaplayers/weapons/m9k/heavy/winchester_1887.mdl",
		origin = "M9K - Shotguns",
		prettyname = "1887 Winchester Shotgun",
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
			wepent.M9KData.Damage = fireDamageTbl_WIN87
			wepent.M9KData.Spread = 0.048
			wepent.M9KData.Pellets = 10
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_WIN87
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_WIN87

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
	},

	m9k_hvy_aw50 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/aw50.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Accuracy International AW-50",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_aw50",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 400,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/aw50/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/heavy/aw50/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/aw50/boltforward.mp3" }
		},

		speedmultiplier = 0.75,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_AW50
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/aw50/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_AW50
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_AW50

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_hvy_aw50" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/aw50/boltaction.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	},

	m9k_hvy_bar = {
		model = "models/lambdaplayers/weapons/m9k/heavy/bar.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "M1918 BAR",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_bar",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1700,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/bar/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/heavy/bar/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/bar/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_BAR
			wepent.M9KData.Spread = 0.062
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/bar/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_BAR
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_BAR

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_barret_m82 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/barret_m82.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Barret M82",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_m82",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 400,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/m82/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/heavy/m82/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/m82/boltup.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/heavy/m82/boltdown.mp3" },
		},

		speedmultiplier = 0.6,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_BM82
			wepent.M9KData.Spread = 0.06
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/m82/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_BM82
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_BM82

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_barret_m98b = {
		model = "models/lambdaplayers/weapons/m9k/heavy/barrett_m98b.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Barret 98B",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_m98b",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 460,

		reloadtime = 2.65,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.75,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/m98/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/heavy/m98/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/heavy/m98/boltback.mp3" },
			{ 2.45, "lambdaplayers/weapons/m9k/heavy/m98/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_BM98B
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/m98/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_BM98B
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_BM98B

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				if self:GetWeaponName() != "m9k_hvy_barret_m98b" or !IsValid( wepent ) then return true end
		
				self:SimpleTimer( 0.45, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/m98/bolt.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end
		
			return true
		end
		
	},

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
			wepent.M9KData.Damage = fireDamageTbl_BROWNAUTO
			wepent.M9KData.Spread = 0.035
			wepent.M9KData.Pellets = 10
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/browninga5/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_BROWNAUTO
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds_BROWNAUTO

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_dbarrel = {
		model = "models/lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Double-Barrel Shotgun",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_dbarrel",
		bonemerge = true,

		clip = 2,
		islethal = true,
		attackrange = 1400,
		keepdistance = 350,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.8,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/breakopen.mp3" },
			{ 0.75, "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/insert.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/insert.mp3" },
			{ 1.7, "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/breakclose.mp3" },
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_DBARREL
			wepent.M9KData.Spread = 0.0675
			wepent.M9KData.Pellets = 18
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_DBARREL
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_DBARREL

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		--TODO: Do alt fire move
		OnAttack = function( self, wepent, target )
			if self.l_Clip <= 0 then self:ReloadWeapon() return end
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_dragunov_svd = {
		model = "models/lambdaplayers/weapons/m9k/heavy/dragunov_svd.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Dragunov SVD",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_dragunov",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 500,

		reloadtime = 2.9,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.62,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/svd/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/heavy/svd/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/svd/cliptap.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/svd/boltback.mp3" },
			{ 2.65, "lambdaplayers/weapons/m9k/heavy/svd/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_DRAGNOVSVD
			wepent.M9KData.Spread = 0.048
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/svd/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_DRAGNOVSVD
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_DRAGNOVSVD

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_dragunov_svu = {
		model = "models/lambdaplayers/weapons/m9k/heavy/dragunov_svu.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Dragunov SVU",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_svu",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2200,
		keepdistance = 400,

		reloadtime = 2.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/svu/clipout.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/heavy/svu/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/heavy/svu/boltrack.mp3" }
		},
		
		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.036
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/svu/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_DRAGNOVSVU
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_DRAGNOVSVU

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_fg42 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/fg42.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "FG42",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_fg42",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1700,
		keepdistance = 500,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/fg42/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/heavy/fg42/clipin.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/fg42/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_FG42
			wepent.M9KData.Spread = 0.062
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/fg42/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_FG42
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_FG42

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_g2contender = {
		model = "models/lambdaplayers/weapons/m9k/heavy/g2contender.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "G2 Contender",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_g2con",
		bonemerge = true,

		clip = 1,
		islethal = true,
		attackrange = 2500,
		keepdistance = 300,

		reloadtime = 2.0,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.6,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/g2contender/open.mp3" },
			{ 0.75, "lambdaplayers/weapons/m9k/heavy/g2contender/bullet_out.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/g2contender/tink" .. random( 1, 4 ) .. ".mp3" },
			{ 1.65, "lambdaplayers/weapons/m9k/heavy/g2contender/bullet_in.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/g2contender/close.mp3" },
			{ 2.5, "lambdaplayers/weapons/m9k/heavy/g2contender/cock2.mp3" },
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_G2
			wepent.M9KData.Spread = 0.032
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/g2contender/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_G2
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER
			wepent.M9KData.DeploySound = deploySnds_G2

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_hksl8 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/hk_sl8.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "HK SL8",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_sl8",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 400,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.65,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/hksl8/clipout.mp3" },
			{ 1.5, "lambdaplayers/weapons/m9k/heavy/hksl8/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/heavy/hksl8/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_KHSL8
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/hksl8/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_KHSL8
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_KHSL8

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_intervention = {
		model = "models/lambdaplayers/weapons/m9k/heavy/intervention.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Intervention",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_intervention",
		bonemerge = true,

		clip = 5,
		islethal = true,
		attackrange = 2800,
		keepdistance = 460,

		reloadtime = 2.75,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.6,
		reloadsounds = { 
			{ 0.0336, "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/intervention/clipout.mp3" },
			{ 1.9, "lambdaplayers/weapons/m9k/heavy/intervention/clipin.mp3" },
			{ 2.5, "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_INTVEN
			wepent.M9KData.Spread = 0.039
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/intervention/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_INTVEN
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_INTVEN

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				if self:GetWeaponName() != "m9k_hvy_intervention" or !IsValid( wepent ) then return true end
		
				self:SimpleTimer( 0.45, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3", 70, 100, 1, CHAN_ITEM )
				end )
		
				self:SimpleTimer( 0.75, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/intervention/bolt.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end
		
			return true
		end	
	},

    m9k_hvy_ithacam37 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/ithaca_m37.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Ithaca M37",
		holdtype = "shotgun",
		killicon = "lambdaplayers/killicons/m9k_ithaca",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1250,
		keepdistance = 350,

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
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/ithaca_m37/insert.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				if !interruptEne then
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/ithaca_m37/pump.mp3", 70, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_SHOTGUN )
				self:SetIsReloading( false )
			
			end, "M9K_ReloadM3" )

			return true
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_ITHACA
			wepent.M9KData.Spread = 0.046
			wepent.M9KData.Pellets = 8
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/ithaca_m37/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_ITHACA
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds_ITHACA

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_hvy_ithacam37" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/ithaca_m37/pump.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	},

	m9k_hvy_jackhammer = {
		model = "models/lambdaplayers/weapons/m9k/heavy/jackhammer.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Pancor Jackhammer",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_jackhammer",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 1350,
		keepdistance = 400,

		reloadtime = 1.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.8,
		reloadsounds = { 
			{ 0.5, "lambdaplayers/weapons/m9k/heavy/jackhammer/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/jackhammer/clipin.mp3" },
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_JACKHMR
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Pellets = 6
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/jackhammer/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_JACKHMR
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds_JACKHMR

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_m3 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/benelli_m3.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Benelli M3",
		holdtype = "shotgun",
		killicon = "lambdaplayers/killicons/m9k_m3",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1100,
		keepdistance = 300,

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
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/benelli_m3/insert.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				if !interruptEne then
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/benelli_m3/pump.mp3", 70, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_SHOTGUN )
				self:SetIsReloading( false )
			
			end, "M9K_ReloadM3" )

			return true
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_M3
			wepent.M9KData.Spread = 0.052
			wepent.M9KData.Pellets = 9
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/benelli_m3/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_M3
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds_M3

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_hvy_m3" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/benelli_m3/pump.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	},

	m9k_hvy_m24 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/m24.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Remington M-24",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_m24",
		bonemerge = true,

		clip = 5,
		islethal = true,
		attackrange = 2500,
		keepdistance = 500,

		reloadtime = 2.65,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.75,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/m24/clipout.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/heavy/m24/clipin.mp3" },
			{ 2.0, "lambdaplayers/weapons/m9k/heavy/m24/boltback.mp3" },
			{ 2.45, "lambdaplayers/weapons/m9k/heavy/m24/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_M24
			wepent.M9KData.Spread = 0.025
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/m24/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_M24
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_M24

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				if self:GetWeaponName() != "m9k_hvy_m24" or !IsValid( wepent ) then return true end
		
				self:SimpleTimer( 0.45, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/m24/boltback.mp3", 70, 100, 1, CHAN_ITEM )
				end )
		
				self:SimpleTimer( 0.75, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/m24/boltforward.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end
		
			return true
		end	
	},

	m9k_hvy_m60 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/m60.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "M-60",
		--holdtype = "crossbow",
		killicon = "lambdaplayers/killicons/m9k_m60",
		bonemerge = true,

		clip = 200,
		islethal = true,
		attackrange = 2000,
		keepdistance = 800,

		reloadtime = 3.75,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.5,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/m60/boxout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/m60/coverup.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/m60/boxin.mp3" },
			{ 2.75, "lambdaplayers/weapons/m9k/heavy/m60/chain.mp3" },
			{ 3.25, "lambdaplayers/weapons/m9k/heavy/m60/coverdown.mp3" }
		},

		speedmultiplier = 0.75,

		OnReload = function( self, wepent )
			if self.l_Clip > 100 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.09
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/m60/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			local rndAnims = LambdaRNG( 3 )

			if rndAnims == 1 then
				self.l_HoldType = "ar2"
			else
				self.l_HoldType = "crossbow"
			end

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_m249 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/m249_saw.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "M249 Squad Assault Weapon",
		--holdtype = "crossbow",
		killicon = "lambdaplayers/killicons/m9k_m249",
		bonemerge = true,

		clip = 150,
		islethal = true,
		attackrange = 2000,
		keepdistance = 700,

		reloadtime = 4.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.44,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/m249_saw/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/m249_saw/clipin.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/m249_saw/coverup.mp3" },
			{ 2.75, "lambdaplayers/weapons/m9k/heavy/m249_saw/chain_fiddle.mp3" },
			{ 3.25, "lambdaplayers/weapons/m9k/heavy/m249_saw/coverdown.mp3" },
			{ 3.8, "lambdaplayers/weapons/m9k/heavy/m249_saw/boltpull.mp3" },
			{ 3.92, "lambdaplayers/weapons/m9k/heavy/m249_saw/boltrel.mp3" }
		},

		speedmultiplier = 0.75,

		OnReload = function( self, wepent )
			if self.l_Clip > 75 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_M249
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/m249_saw/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_M249
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_M249

			local rndAnims = LambdaRNG( 3 )

			if rndAnims == 1 then
				self.l_HoldType = "ar2"
			else
				self.l_HoldType = "crossbow"
			end

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_minigun = {
		model = "models/lambdaplayers/weapons/m9k/heavy/minigun.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "M134 Rotary Cannon",
		holdtype = "crossbow",
		killicon = "lambdaplayers/killicons/m9k_minigun",
		bonemerge = true,

		clip = 300,
		islethal = true,
		attackrange = 2500,
		keepdistance = 800,

		reloadtime = 4.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.44,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/minigun/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/minigun/clipin.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/minigun/coverup.mp3" },
			{ 2.75, "lambdaplayers/weapons/m9k/heavy/minigun/chain.mp3" },
			{ 3.25, "lambdaplayers/weapons/m9k/heavy/minigun/coverdown.mp3" },
			{ 4, "lambdaplayers/weapons/m9k/heavy/minigun/boltrack.mp3" }
		},

		speedmultiplier = 0.5,

		OnReload = function( self, wepent )
			if self.l_Clip > 150 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_VULKAN
			wepent.M9KData.Spread = 0.15
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/minigun/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_VULKAN
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_VULKAN

			self:SimpleTimer( 0.45, function()
				if LambdaRNG( 100 ) <= self:GetVoiceChance() and !self:IsSpeaking() then self:PlaySoundFile( self:GetVoiceLine( "taunt" ) ) end
			end )

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_mossberg590 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/mossberg590.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Mossberg 590",
		holdtype = "shotgun",
		killicon = "lambdaplayers/killicons/m9k_mossberg590",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1000,
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
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/mossberg590/insert.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				if !interruptEne then
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/mossberg590/pump.mp3", 70, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_SHOTGUN )
				self:SetIsReloading( false )
			
			end, "M9K_ReloadM3" )

			return true
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_M590
			wepent.M9KData.Spread = 0.025
			wepent.M9KData.Pellets = 10
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/mossberg590/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_M590
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds_M590

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_hvy_mossberg590" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/mossberg590/pump.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	},

	m9k_hvy_pkm = {
		model = "models/lambdaplayers/weapons/m9k/heavy/pkm.mdl",
		origin = "M9K - Light Machine Guns",
		prettyname = "PKM",
		killicon = "lambdaplayers/killicons/m9k_pkm",
		bonemerge = true,

		clip = 100,
		islethal = true,
		attackrange = 1800,
		keepdistance = 500,

		reloadtime = 4.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.4,
		reloadsounds = { 
			{ 0.14, "lambdaplayers/weapons/m9k/heavy/pkm/coverup.mp3" },
			{ 0.82, "lambdaplayers/weapons/m9k/heavy/pkm/bullets.mp3" },
			{ 1.3, "lambdaplayers/weapons/m9k/heavy/pkm/clipout.mp3" },
			{ 2.2, "lambdaplayers/weapons/m9k/heavy/pkm/clipin.mp3" },
			{ 2.8, "lambdaplayers/weapons/m9k/heavy/pkm/chain.mp3" },
			{ 3.45, "lambdaplayers/weapons/m9k/heavy/pkm/coverdown.mp3" },
			{ 3.95, "lambdaplayers/weapons/m9k/heavy/pkm/coversmack.mp3" },
			{ 4.25, "lambdaplayers/weapons/m9k/heavy/pkm/bolt.mp3" }
		},

		speedmultiplier = 0.75,

		OnReload = function( self, wepent )
			if self.l_Clip > 50 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_PKM
			wepent.M9KData.Spread = 0.0725
			wepent.M9KData.Sound = fireSndTbl_PKM
			wepent.M9KData.RateOfFire = fireRateTbl_PKM
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_PKM

			local rndAnims = LambdaRNG( 3 )

			if rndAnims == 1 then
				self.l_HoldType = "ar2"
			else
				self.l_HoldType = "crossbow"
			end

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_psg1 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/hk_psg1.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "HK PSG-1",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_psg1",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 400,

		reloadtime = 2.4,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.76,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/psg1/boltback.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/heavy/psg1/clipout.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/psg1/clipin.mp3" },
			{ 2.25, "lambdaplayers/weapons/m9k/heavy/psg1/boltslam.mp3" },
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_PSG1
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/psg1/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_PSG1
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_PSG1

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_remington_7615p = {
		model = "models/lambdaplayers/weapons/m9k/heavy/remington_7615p.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "Remington 7615 Patrol Rifle",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_remington7615",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2200,
		keepdistance = 450,

		reloadtime = 2.7,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.62,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/heavy/7615p/clipout.mp3" },
			{ 1.8, "lambdaplayers/weapons/m9k/heavy/7615p/clipin.mp3" },
			{ 2.4, "lambdaplayers/weapons/m9k/heavy/7615p/pump.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_R7615
			wepent.M9KData.Spread = 0.018
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/7615p/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_R7615
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds_R7615

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				if self:GetWeaponName() != "m9k_hvy_remington_7615p" or !IsValid( wepent ) then return true end
		
				self:SimpleTimer( 0.45, function()
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/7615p/pump.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end
		
			return true
		end
	},

	m9k_hvy_remington870 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/remington_870_tact.mdl",
		origin = "M9K - Shotguns",
		prettyname = "Remington 870 Tactical",
		holdtype = "shotgun",
		killicon = "lambdaplayers/killicons/m9k_remington870",
		bonemerge = true,

		clip = 8,
		islethal = true,
		attackrange = 1500,
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
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/rem870/insert.mp3", 65, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				if !interruptEne then
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/rem870/pump.mp3", 70, 100, 1, CHAN_ITEM )
					coroutine_wait( 0.5 )
				end

				self:RemoveGesture( ACT_HL2MP_GESTURE_RELOAD_SHOTGUN )
				self:SetIsReloading( false )
				wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/rem870/pump.mp3", 70, 100, 1, CHAN_ITEM )
			
			end, "M9K_ReloadM3" )

			return true
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_R870
			wepent.M9KData.Spread = 0.04
			wepent.M9KData.Pellets = 9
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/rem870/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_R870
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds_R870

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			if LAMBDA_M9K:FireWeapon( self, wepent, target ) != true then
				self:SimpleTimer( 0.45, function()
					if self:GetWeaponName() != "m9k_hvy_remington870" or !IsValid( wepent ) then return end
					wepent:EmitSound( "lambdaplayers/weapons/m9k/heavy/rem870/pump.mp3", 70, 100, 1, CHAN_ITEM )
				end )
			end

			return true
		end
	},

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
			wepent.M9KData.Damage = fireDamageTbl_SPAS
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Pellets = 8
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/spas12/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_SPAS
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_SPAS

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

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
			wepent.M9KData.Damage = fireDamageTbl_STRIKER
			wepent.M9KData.Spread = 0.036
			wepent.M9KData.Pellets = 6
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/striker12/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_STRIKER
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds_STRIKER

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_svt40 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/svt40.mdl",
		origin = "M9K - Sniper Rifles",
		prettyname = "SVT 40",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_svt40",
		bonemerge = true,

		clip = 10,
		islethal = true,
		attackrange = 2500,
		keepdistance = 475,

		reloadtime = 3.9,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.5,
		reloadsounds = { 
			{ 0, "lambdaplayers/weapons/m9k/heavy/svt40/cloth1.mp3" },
			{ 0.19, "lambdaplayers/weapons/m9k/heavy/svt40/clipout.mp3" },
			{ 1.34, "lambdaplayers/weapons/m9k/heavy/svt40/clipin.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/heavy/svt40/cloth2.mp3" },
			{ 2.5, "lambdaplayers/weapons/m9k/heavy/svt40/cliptap.mp3" },
			{ 3.3, "lambdaplayers/weapons/m9k/heavy/svt40/boltback.mp3" },
			{ 3.5, "lambdaplayers/weapons/m9k/heavy/svt40/boltforward.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_SVT
			wepent.M9KData.Spread = 0.05
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/svt40/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_SVT
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_SVT

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

	m9k_hvy_usas12 = {
		model = "models/lambdaplayers/weapons/m9k/heavy/usas_12.mdl",
		origin = "M9K - Shotguns",
		prettyname = "USAS-12",
		--holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_usas",
		bonemerge = true,

		clip = 20,
		islethal = true,
		attackrange = 1400,
		keepdistance = 450,

		reloadtime = 1.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.8,
		reloadsounds = { 
			{ 0.5, "lambdaplayers/weapons/m9k/heavy/usas12/clipout.mp3" },
			{ 1.25, "lambdaplayers/weapons/m9k/heavy/usas12/clipin.mp3" },
		},

		OnReload = function( self, wepent )
			if self.l_Clip > 10 then return true end
		end,

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl_USAS12
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Pellets = 10
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/usas12/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_USAS12
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds_USAS12

			local rndAnims = LambdaRNG( 3 )

			if rndAnims == 1 then
				self.l_HoldType = "crossbow"
			else
				self.l_HoldType = "ar2"
			end

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	},

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
			wepent.M9KData.Damage = fireDamageTbl_WIN97
			wepent.M9KData.Spread = 0.042
			wepent.M9KData.Pellets = 11
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/1897trench/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl_WIN97
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
			wepent.M9KData.DeploySound = deploySnds_WIN97

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