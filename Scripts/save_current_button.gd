extends Button

@export var sprite_viewport : SubViewport
@export var grid : ColorRect

func _on_pressed() -> void:
	grid.visible = false;
	await get_tree().process_frame
	await get_tree().process_frame
	sprite_viewport.get_texture().get_image().save_png(Globals.selected_path)
	grid.visible = true;
