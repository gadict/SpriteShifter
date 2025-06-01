extends Button

@export var sprite : Sprite2D 
@export var sprite_viewport : SubViewport

func _on_pressed() -> void:
	sprite_viewport.get_texture().get_image().save_png(Globals.selected_path)
