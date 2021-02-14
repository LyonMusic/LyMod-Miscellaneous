local HUDManagerUpdateWaypoints = HUDManager._update_waypoints
function HUDManager:_update_waypoints(t, dt)
	HUDManagerUpdateWaypoints(self, t, dt)
	
	fpsText = '[' .. math.floor(1/dt) .. ']'
end