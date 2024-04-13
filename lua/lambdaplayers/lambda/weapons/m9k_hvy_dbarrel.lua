local IsValid = IsValid
local coroutine_wait = coroutine.wait

local fireDamageTbl = { 4, 10 }
local fireRateTbl = { 0.8, 2.2 }
local deploySnds = {
	{ 0, "lambdaplayers/weapons/m9k/small_arms/draw_pullout.mp3" },
	{ 0.4, "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/breakclose.mp3" }
}

table.Merge( _LAMBDAPLAYERSWEAPONS, {
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
			wepent.M9KData.Damage = fireDamageTbl
			wepent.M9KData.Spread = 0.0675
			wepent.M9KData.Pellets = 18
			wepent.M9KData.Sound = "lambdaplayers/weapons/m9k/heavy/dbarrel_shotgun/fire.wav"
			wepent.M9KData.RateOfFire = fireRateTbl
			wepent.M9KData.Animation = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
			wepent.M9KData.DeploySound = deploySnds

			LAMBDA_M9K:InitializeWeapon( self, wepent )
		end,

		--TODO: Do alt fire move
		OnAttack = function( self, wepent, target )
			if self.l_Clip <= 0 then self:ReloadWeapon() return end
			LAMBDA_M9K:FireWeapon( self, wepent, target )
			return true
		end
	}
} )