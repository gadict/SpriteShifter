extends Button

@export var sprite_viewport : SubViewport
@export var sprite_selector : ItemList

func _on_pressed() -> void:
	for index in range(sprite_selector.item_count):
		sprite_selector.select(index)
		sprite_selector.item_selected.emit(index)
		await get_tree().process_frame
		sprite_viewport.get_texture().get_image().save_png(sprite_selector.get_item_text(index))
		
		
