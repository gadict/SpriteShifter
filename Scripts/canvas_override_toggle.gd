extends CheckButton

@export var sprite_selector : ItemList

func _on_toggled(toggled_on: bool) -> void:
	Globals.override_canvas_size = toggled_on
	sprite_selector.item_selected.emit(sprite_selector.get_selected_items()[0])
