-- the graphics module, contains the images such as backgrounds, characters and such

local gfx = {}

-- the directories
local bgdir = "img/bg/"
local chardir = "img/char/"

gfx.bg = {
	menu = love.graphics.newImage(bgdir.."menu.png")
}

return gfx
