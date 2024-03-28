local fireDamageTbl = { 8, 20 }
local fireRateTbl = { 0.065, 0.5 }
local fireRateTbl_Semi = { 0.225, 0.8 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.5, "lambdaplayers/weapons/m9k/small_arms/tec9/clip_prepare.mp3" },
	{ 1, "lambdaplayers/weapons/m9k/small_arms/tec9/boltrack.mp3" }
}

local function SwitchFireMode( self, wepent )
	local isFull = wepent.FireMode == "Full"
	local fireMode = isFull and "Semi" or "Full"
	local holdType = isFull and "pistol" or "ar2"
	local useAnim = self:LookupSequence( "flinch_shoulder_l" )

	wepent.M9KData.RateOfFire = isFull and fireRateTbl_Semi or fireRateTbl
	wepent.FireMode = fireMode
	self.l_HoldType = holdType

	wepent:EmitSound( "Weapon_AR2.Empty", 70 )

	--PrintMessage( HUD_PRINTTALK, "Switched to " .. fireMode .. " FireMode" )

	-- Simulate switching fire modes
	if useAnim > 0 then self:AddGestureSequence( useAnim, true ) end
end

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_smg_tec9 = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/tec9.mdl",
		origin = "M9K",
		prettyname = "TEC-9",
		--holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_tec9",
		bonemerge = true,

		clip = 32,
		islethal = true,
		attackrange = 2000,
		keepdistance = 500,

		reloadtime = 2.5,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		reloadanimspeed = 0.75,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/tec9/clipout.mp3" },
			{ 0.9, "lambdaplayers/weapons/m9k/small_arms/tec9/clip_prepare.mp3" },
			{ 1.75, "lambdaplayers/weapons/m9k/small_arms/tec9/clipin.mp3" },
			{ 2.3, "lambdaplayers/weapons/m9k/small_arms/tec9/boltrack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.09
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/tec9/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
			wepent.M9KData.DeploySound = deploySnds

			local isSemi = LambdaRNG( 1, 3 ) == 1
			wepent.M9KData.RateOfFire = isSemi and fireRateTbl_Semi or fireRateTbl
			wepent.FireMode = isSemi and "Semi" or "Full"
			--PrintMessage( HUD_PRINTTALK, "Spawned with " .. wepent.FireMode .. " FireMode" )

			if isSemi then self.l_HoldType = "pistol" else self.l_HoldType = "ar2" end

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