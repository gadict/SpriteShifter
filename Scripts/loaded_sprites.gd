extends ItemList

@export var sprite_viewport : SubViewport
@export var selected_sprite : Sprite2D

func _on_item_selected(index: int) -> void:
	Globals.selected_path = get_item_text(index)
	var texture : ImageTexture = ImageTexture.create_from_image(Globals.loaded_files.get(get_item_text(index)))
	selected_sprite.texture = texture
	var image_size = Vector2(texture.get_width(), texture.get_height())
	sprite_viewport.size = image_size
	selected_sprite.position = image_size/2
