-- the character module, contains info about characters, their abilities, etc..

local characters = {}

characters.abilities = require("abilities")

characters.unlocked = {}
characters.active = {}

local function new_char(name, health, force, damage, weight, speed, ability, file)
	-- creates a new charachter
	-- every attribute has a defualt max of 20
	-- level has a max of 15, attributes go higher with level
	
	return {
		name = name,
		health = health,
		force = force,
		damage = damage,
		weight = weight,
		speed = speed,
		ability = ability,
		file = file,
		level = 1
	}
end

---------- id ------------ name ------ spd - dmg - hlt - filename
characters[01] = new_char("Georges",   05,   14,   17,   "georges.png")
characters[02] = new_char("Choufani",  11,   15,   10,   "choufani.png")
characters[03] = new_char("Alex",      13,   10,   13,   "alex.png")
characters[04] = new_char("Thierry",   17,   11,   08,   "thierry.png")
characters[05] = new_char("Klink",     12,   12,   12,   "klink.png")
characters[06] = new_char("Joe",       09,   14,   13,   "joe.png")
characters[07] = new_char("Raymond",   14,   13,   09,   "raymond.png")
characters[08] = new_char("Aouad",     14,   11,   11,   "aouad.png")
characters[09] = new_char("Karim",     15,   12,   09,   "karim.png")
characters[10] = new_char("Matteo",    16,   12,   09,   "matteo.png")

return characters
