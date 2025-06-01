extends HSlider

@export var sprite: Sprite2D
@export var value_label : Label

func _on_value_changed(new_value: float) -> void:
	sprite.offset.x = new_value
	value_label.text = str(int(new_value))

func _on_flip_x_toggled(toggled_on: bool) -> void:
	sprite.flip_h = toggled_on
