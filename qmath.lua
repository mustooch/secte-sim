-- math library

local Qmath = {}

function Qmath.clamp(mini, val, maxi)
	return val < mini and mini or val > maxi and maxi or val
end

return Qmath
