local fireDamageTbl = { 8, 12 }
local fireRateTbl = { 0.05, 0.225 }
local fireRateTbl_Semi = { 0.25, 0.6 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/glock/sliderack.mp3" }
}

local function SwitchFireMode( self, wepent )
	local isFull = wepent.FireMode == "Full"
	local fireMode = isFull and "Semi" or "Full"
	local holdType = isFull and "revolver" or "pistol"
	local useAnim = self:LookupSequence( "flinch_shoulder_l" )

	wepent.M9KData.RateOfFire = isFull and fireRateTbl_Semi or fireRateTbl
	wepent.FireMode = fireMode

	wepent:EmitSound( "Weapon_AR2.Empty", 70 )
	
	self.l_HoldType = holdType

	if useAnim > 0 then self:AddGestureSequence( useAnim, true ) end
end

table.Merge( _LAMBDAPLAYERSWEAPONS, {
	m9k_pistol_glock = {
		model = "models/lambdaplayers/weapons/m9k/small_arms/glock17.mdl",
		origin = "M9K - Pistols",
		prettyname = "Auto Glock-17",
		--holdtype = "pistol",
		killicon = "lambdaplayers/killicons/m9k_glock",
		bonemerge = true,

		clip = 32,
		islethal = true,
		attackrange = 1750,
		keepdistance = 750,

		reloadtime = 1.9,
		reloadanim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		reloadanimspeed = 1,
		reloadsounds = { 
			{ 0.336, "lambdaplayers/weapons/m9k/small_arms/glock/clipout.mp3" },
			{ 1.2, "lambdaplayers/weapons/m9k/small_arms/glock/clipin.mp3" },
			{ 1.633, "lambdaplayers/weapons/m9k/small_arms/glock/sliderack.mp3" }
		},

		OnDeploy = function( self, wepent )
			wepent.M9KData = {}
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.065
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/small_arms/glock/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
			wepent.M9KData.DeploySound = deploySnds

			local isSemi = LambdaRNG( 1, 3 ) == 1
			wepent.M9KData.RateOfFire = isSemi and fireRateTbl_Semi or fireRateTbl
			wepent.FireMode = isSemi and "Semi" or "Full"

			if isSemi then self.l_HoldType = "revolver" else self.l_HoldType = "pistol" end

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