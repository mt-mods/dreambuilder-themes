if dreambuilder_theme.name ~= "dbtheme_high_contrast" then return end

print("[Dreambuilder] Activated \"high_contrast\" theme")

dreambuilder_theme.high_contrast = {
	["form_bgcolor"]             = "#404040FF",
	["btn_color"]                = "#101010FF",

	["editor_text_color"]        = "#FFFFFF",
	["editor_bg_color"]          = "#000000FF",

	["listcolor_slot_bg_normal"] = "#FFFFFF80",
	["listcolor_slot_bg_hover"]  = "#FFFFFFFF",
	["listcolor_slot_border"]    = "#000000",

	["tooltip_bgcolor"]          = "#FFFFFF",
	["tooltip_fontcolor"]        = "#000",

	["window_darken"]            = "true",
	["editor_border"]            = "true",
	["image_button_borders"]     = "true"
}

for k,v in pairs(dreambuilder_theme.high_contrast) do
	dreambuilder_theme[k] = v
end

minetest.register_on_joinplayer(function(player)
	default.gui_bg = dreambuilder_theme.get_default_gui_bg(dreambuilder_theme)
	default.gui_survival_form = dreambuilder_theme.get_default_gui_survival_form(dreambuilder_theme)
	dreambuilder_theme.set_formspec_prepend(player, dreambuilder_theme)
end)
