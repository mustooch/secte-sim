-- button module for the scenes

local button = {}

function button.new_selection(numitems, orientation, data)
	--[[ create a new button
	--
	-- the first arg is the number of items in the selection
	--
	-- the second is the orientation of the buttons
	-- (used when pressing arrow keys)
	--
	-- the third is a table organized as:
	-- {
	--	 {x pos, y pos, wid, height, text},
	--   {x pos, y pos, wid, height, text},
	--   ...
	-- }
	--
	--]]
	
	-- build the table
	local field = {}
	field.len = numitems
	field.orientation = orientation
	field.selected = 1 -- for selection
	
	for i = 1, numitems do
		local curdata = data[i]
		field[i] = {
			x = curdata[1],
			y = curdata[2],
			w = curdata[3],
			h = curdata[4],
			txt = curdata[5]
		}
	end
	
	return field
	
end

function button.draw_selection(field)
	for i = 1, field.len do
		
		-- draw the rectangle
		love.graphics.setColor(0,0,0)
		love.graphics.rectangle(
			"fill", field[i].x,field[i].y, field[i].w,field[i].h)
		
		-- draw the bored of the selected button in a different color
		if i == field.selected then
			for j = 1, 3 do
				love.graphics.setColor(0,1,0)
				love.graphics.rectangle(
					"line", field[i].x-j,field[i].y-j, field[i].w+2*j,field[i].h+2*j)
			end
		end
		
		love.graphics.setColor(1,1,1)
		
		-- draw the text (centered)
		local textwidth  = font:getWidth(field[i].txt)
		local textheight = font:getHeight(field[i].txt)
	end
	
	-- highlight selected button
end

function button.move_selection(field, key)
	-- return the selected button if enter is pressed
	if key == "space" then
		print("banana 2")
		return field.selected
	end
	
	-- move the currently selected button
	if key == "up" and field.orientation == "vertical" then
		field.selected = Qmath.clamp(1, (field.selected-1), field.len)
		
	elseif key == "down" and field.orientation == "vertical" then
		field.selected = Qmath.clamp(1, (field.selected+1), field.len)
		
	elseif key == "left" and field.orientation == "horizontal" then
		field.selected = Qmath.clamp(1, (field.selected-1), field.len)
		
	elseif key == "right" and field.orientation == "horizontal" then
		field.selected = Qmath.clamp(1, (field.selected+1), field.len)
		
	end
end

return button
















