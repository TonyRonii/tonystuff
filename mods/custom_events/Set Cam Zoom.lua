local easing = 'sineInOut'
local easingStart = 0
local easingEnd = 0
local duration = 0

local textStringStart = 0
local textStringLast = 0

function onEvent(name,value1,value2)
    if name == "Set Cam Zoom" then
		textStringStart,textStringLast = string.find(value2,value2)
		if string.find(value2,',',0,true) ~= nil then
			easingStart,easingEnd = string.find(value2,',',0,true)
			easing = string.sub(value2,easingEnd + 1)
			if string.sub(value2,0,easingStart - 1) ~= string.sub(value2,textStringLast - 1,textStringLast) then
				duration = string.sub(value2,0,easingStart - 1)
			else
				duration = 0.8
			end
		else
			for numbers = 0,9 do
				if string.find(value2,numbers,0,true) == nil and value2 ~= '' then
					easing = value2
				else
					easing = 'sineInOut'
				end
			end
			if tonumber(value2) == nil then
				duration = 0.8
			else
				duration = tonumber(value2)
			end
		end
		doTweenZoom('camz','camGame',value1,duration,easing)
    end
end

function onTweenCompleted(name)
	if name == 'camz' then
    	setProperty("defaultCamZoom",getProperty('camGame.zoom'))
	end
end