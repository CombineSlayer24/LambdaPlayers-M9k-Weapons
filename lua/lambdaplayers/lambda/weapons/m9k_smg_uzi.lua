local fireDamageTbl = { 8, 20 }
local fireRateTbl = { 0.096, 0.384 }
local fireRateTbl_Semi = { 0.25, 0.6 }
local deploySnds = { { 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" } }

local function SwitchFireMode( self, wepent )
	local isFull = wepent.FireMode == "Full"
	local fireMode = isFull and "Semi" or "Full"
	local useAnim = self:LookupSequence( "flinch_shoulder_l" )

	wepent.M9KData.RateOfFire = isFull and fireRateTbl_Semi or fireRateTbl
	wepent.FireMode = fireMode

	wepent:EmitSound( "Weapon_AR2.Empty", 70 )

	-- Simulate switching fire modes
	if useAnim > 0 then self:AddGestureSequence( useAnim, true ) end
end

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_uzi = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/uzi.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "Uzi",
		holdtype = "ar2",
		killicon = "lambdaplayers/killicons/m9k_uzi",
		bonemerge = true,

		clip = 32,
		islethal = true,
		attackrange = 1800,
		keepdistance = 650,

		reloadtime = 2,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.75,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/uzi/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/uzi/clipin.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/uzi/boltpull.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.055
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/uzi/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds

			local isSemi = LambdaRNG( 1, 3 ) == 1
			wepent.M9KData.RateOfFire = isSemi and fireRateTbl_Semi or fireRateTbl
			wepent.FireMode = isSemi and "Semi" or "Full"

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		OnThink = function( self, wepent, isdead )
			if LambdaRNG( 800 ) == 1 then SwitchFireMode( self, wepent ) end
		end,

		OnAttack = function( self, wepent, target )
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )