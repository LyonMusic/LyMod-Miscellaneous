local HUDHeistTimerSetTime = HUDHeistTimer.set_time
function HUDHeistTimer:set_time(time)
	HUDHeistTimerSetTime(self, time)
	
	if showFps then
		local showFpsTime = math.floor(time)
		local hours = math.floor(showFpsTime / 3600)
		local showFpsTime = showFpsTime - hours * 3600
		local minutes = math.floor(showFpsTime / 60)
		local showFpsTime = showFpsTime - minutes * 60
		local seconds = math.floor(showFpsTime)
		
		local defText = ''
		if hours > 0 then
			if hours < 10 then
				defText = "0" .. hours .. ":"
			else
				defText = hours .. ":"
			end
		end
		if minutes < 10 then
			defText = defText .. "0" .. minutes .. ":"
		else
			defText = defText .. minutes .. ":"
		end
		if seconds < 10 then
			defText = defText .. "0" .. seconds
		else
			defText = defText .. seconds
		end
		
		self._timer_text:set_text(defText..' '..fpsText)
	end
end