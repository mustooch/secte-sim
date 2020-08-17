function love.load()
	
	-- globals
	STATE = "menu"
	
	-- love setup
	font = love.graphics.newFont("img/font.ttf", 20)
	love.graphics.setDefaultFilter("nearest", "nearest") -- for scaling
	
	-- modules
	Qmath = require("qmath")
	Characters = require("characters")
	Gfx = require("gfx")
	Scenes = require("scenes")
	
end

function love.keypressed(key)
	
	-- manage key presses
	
	if key == "escape" then
		-- exit on escape
		love.event.push("quit")
	end
	
	if STATE == "menu" then
		
		-- create a new game / load game
		local btnUpdate = Scenes.menu.update(key)
		
		-- if enter is pressed then btnUpdate will hold the selected button
		if btnUpdate == 1 then
			-- make a new game
			STATE = "newgame"
			
		elseif btnUpdate == 2 then
			-- load a saved game
			STATE = "loadgame"
		end
		
	elseif STATE == "newgame" then
		
		
	elseif STATE == "ingame" then
		-- after making a new game / selecting game
		
	end
	
end

function love.update(dt)
	
	-- the state manager
	if STATE == "menu" then
		
		-- menu
		
	elseif STATE == "ingame" then
		
		-- in game
		
	end
	
end

function love.draw()
	-- love setup
	if SCALE then love.graphics.scale(2) end
	love.graphics.setFont(font)
	
	-- the state manager
	if STATE == "menu" then
		
		-- draw the menu
		Scenes.menu.draw()
		
	elseif STATE == "ingame" then
		
		-- in game
		
	end
	
end
