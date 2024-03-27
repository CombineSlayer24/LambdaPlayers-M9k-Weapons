MsgC( Color(250, 255, 150), "------------------------------------------------ \n" )
MsgC( Color(250, 255, 150), "  Initializing Murderthon 9000 Lambda Weapons \n" )
MsgC( Color(250, 255, 150), "------------------------------------------------ \n" )

-- Credit to YerMash for this.
local IsValid = IsValid
local ipairs = ipairs
local istable = istable
local isstring = isstring
local isentity = isentity
local CurTime = CurTime
local util_Effect = util.Effect
local EffectData = EffectData

local fireBulletTbl = {}
local fireSpreadVec = Vector()

LAMBDA_M9K = LAMBDA_M9K or {}

function LAMBDA_M9K:InitializeWeapon( lambda, weapon, ignoreSkins )
	local deploySnd = weapon.M9KData.DeploySound
	if isstring( deploySnd ) then
		weapon:EmitSound( deploySnd, 65, 100, 1, CHAN_ITEM )
	elseif istable( deploySnd ) and #deploySnd > 0 then
		local weaponName = lambda:GetWeaponName()
		for _, v in ipairs( deploySnd ) do
			lambda:SimpleTimer( v[ 1 ], function()
				if !IsValid( weapon ) or lambda:GetWeaponName() != weaponName then return end
				weapon:EmitSound( v[ 2 ], 65, 100, 1, CHAN_ITEM )
			end )
		end
	end
end

function LAMBDA_M9K:FireWeapon( lambda, weapon, target )
	local canReload = ( weapon.M9KData.IsReloadable or true )
	if canReload and lambda.l_Clip <= 0 then lambda:ReloadWeapon() return true end

	local firePos = ( isvector( target ) and target or ( ( isentity( target ) and IsValid( target ) ) and target:WorldSpaceCenter() or nil ) )
	if !firePos then firePos = ( weapon:GetPos() + lambda:GetForward() ) end

	lambda.l_Clip = lambda.l_Clip - ( weapon.M9KData.ClipUsage or 1 )

	local fireRate = weapon.M9KData.RateOfFire or 0.1
	-- Do not use Float for LambdaRNG when making random firerates, otherwise it's unnatural
	if istable( fireRate ) then fireRate = LambdaRNG( fireRate[ 1 ], fireRate[ 2 ], false ) end
	lambda.l_WeaponUseCooldown = CurTime() + fireRate

	local fireAnim = weapon.M9KData.Animation
	if fireAnim then lambda:RemoveGesture( fireAnim ); lambda:AddGesture( fireAnim ) end

	local fireMuzzle = weapon.M9KData.MuzzleFlash or 1
	if fireMuzzle then lambda:HandleMuzzleFlash( fireMuzzle ) end

	local fireSnd = weapon.M9KData.Sound
	if fireSnd then 
		if istable( fireSnd ) then fireSnd = fireSnd[ LambdaRNG( #fireSnd ) ] end
		weapon:EmitSound( fireSnd, 83, LambdaRNG( 98, 102 ), 1, CHAN_WEAPON ) 
	end

--[[ 	if IsFirstTimePredicted() then
		local fireShell = ( weapon.M9KData.EjectShell or "ShellEject" )
		if fireShell then
			local shellAttach = weapon:LookupAttachment( "shell" )
			if shellAttach > 0 then
				local shellData = weapon:GetAttachment( shellAttach )
				local effectData = EffectData()
				effectData:SetEntity( weapon )
				effectData:SetOrigin( shellData.Pos )
				effectData:SetAngles( shellData.Ang )
				util_Effect( fireShell, effectData )
			end
		end
	end ]]

	local fireDmg = weapon.M9KData.Damage or 5
	if istable( fireDmg ) then fireDmg = LambdaRNG( fireDmg[ 1 ], fireDmg[ 2 ], false ) end

	local fireSpread = weapon.M9KData.Spread or 0.1
	if lambda:GetCrouch() then fireSpread = fireSpread * ( weapon.M9KData.CrouchedSpreadScale or 0.75 ) end

	fireSpreadVec[ 1 ] = fireSpread
	fireSpreadVec[ 2 ] = fireSpread

	fireBulletTbl.Damage = fireDmg
	fireBulletTbl.Force = ( fireDmg / 3 )
	fireBulletTbl.Attacker = lambda
	fireBulletTbl.Num = ( weapon.M9KData.Pellets or 1 )
	fireBulletTbl.Src = weapon:GetPos()
	fireBulletTbl.Dir = ( firePos - fireBulletTbl.Src ):GetNormalized()
	fireBulletTbl.IgnoreEntity = lambda
	fireBulletTbl.Spread = fireSpreadVec
	fireBulletTbl.TracerName = "Tracer"
	weapon:FireBullets( fireBulletTbl )
end
