Hooks:PostHook(HUDStageEndScreen, "create_money_counter", "no_money_for_you", function(self)
	self._background_layer_full:child("money_video"):set_visible(false)
end)
