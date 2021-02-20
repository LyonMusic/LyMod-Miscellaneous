function MenuBackdropGUI:_create_base_layer()
	local base_layer = self._panel:child("base_layer")
	base_layer:clear()
	self:_set_layers_of_layer(1, 1)
	local bd_base_layer = base_layer:bitmap({
		name = "bd_base_layer",
		texture = "guis/textures/pd2/menu_backdrop/bd_baselayer"
	})
	self:set_fullscreen_bitmap_shape(bd_base_layer, 1)
	self._panel:child("pattern_layer"):hide()
	self._panel:child("light_layer"):hide()
	self._panel:child("particles_layer"):hide()
end