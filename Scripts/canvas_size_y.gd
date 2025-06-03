extends LineEdit

@export var sprite_selector : ItemList

func _on_text_changed(new_text: String) -> void:
	if not new_text.is_valid_int():
		return
	Globals.canvas_size.y = min(int(new_text), 1080)
	if Globals.override_canvas_size:
		sprite_selector.item_selected.emit(sprite_selector.get_selected_items()[0])
