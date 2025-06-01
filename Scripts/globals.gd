extends Node

var loaded_files : Dictionary = {}
var selected_path : String 

func set_current_selected(texture : Texture, sprite_viewport : SubViewport, selected_sprite : Sprite2D):
	var image_size : Vector2 = Vector2(texture.get_width(), texture.get_height())
	sprite_viewport.size = image_size
	selected_sprite.texture = texture
	selected_sprite.position = image_size/2
