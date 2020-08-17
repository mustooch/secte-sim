-- the scene modules, contains info about scenes, drawing functions, item selections
-- requires the button module to display and updaye buttons

local scenes = {}

local button = require("button")

scenes.menu = {}
--[[ the menu scene
--
-- just the background and
-- two buttons to create / load a game
--
--]]

scenes.menu.selection = button.new_selection(2, "horizontal",
	{
		{122,360, 200,80, "New Game"}, -- btn 1
		{444,360, 200,80, "Load Game"} -- btn 2
	}
)

function scenes.menu.draw()
	-- draw the menu's background
	love.graphics.draw(Gfx.bg.menu)
	-- two buttons in the menu: new game and load game
	button.draw_selection(scenes.menu.selection)
end

function scenes.menu.update(key)
	local res = button.move_selection(scenes.menu.selection, key)
	return res
end

-- the new game scene
scenes.newGame = {}


return scenes
