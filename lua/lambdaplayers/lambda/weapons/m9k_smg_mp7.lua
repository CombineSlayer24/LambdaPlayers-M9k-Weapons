local fireDamageTbl = { 7, 20 }
local fireRateTbl = { 0.072, 0.48 }
local fireRateTbl_Semi = { 0.3, 0.9 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/small_arms/mp7/charginghandle_rack.mp3" }
}

local function SwitchFireMode( self, wepent )
	local isFull = wepent.FireMode == "Full"
	local fireMode = isFull and "Semi" or "Full"
	--local holdType = isFull and "pistol" or "ar2"
	local useAnim = self:LookupSequence( "flinch_shoulder_l" )

	wepent.M9KData.RateOfFire = isFull and fireRateTbl_Semi or fireRateTbl
	wepent.FireMode = fireMode
	--self.l_HoldType = holdType

	wepent:EmitSound( "Weapon_AR2.Empty", 70 )

	PrintMessage( HUD_PRINTTALK, "Switched to " .. fireMode .. " FireMode" )

	-- Simulate switching fire modes
	if useAnim > 0 then self:AddGestureSequence( useAnim, true ) end
end

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_mp7 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/mp7_silenced.mdl",
		origin = "M9K - Sub-Machine Guns",
		prettyname = "HK-MP7 Suppressed",
		holdtype = "smg",
		killicon = "lambdaplayers/killicons/m9k_mp7",
		bonemerge = true,

		clip = 30,
		islethal = true,
		attackrange = 1750,
		keepdistance = 500,

		reloadtime = 2,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		reloadanimspeed = 0.75,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/mp7/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/mp7/clipin.mp3" },
			{ 1.6, "lambdaplayers/weapons/m9k/small_arms/mp7/charginghandle_rack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.075
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/mp7/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds

			local isSemi = LambdaRNG( 1, 3 ) == 1
			wepent.M9KData.RateOfFire = isSemi and fireRateTbl_Semi or fireRateTbl
			wepent.FireMode = isSemi and "Semi" or "Full"
			--PrintMessage( HUD_PRINTTALK, "Spawned with " .. wepent.FireMode .. " FireMode" )

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