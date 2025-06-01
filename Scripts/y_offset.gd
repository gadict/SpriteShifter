extends HSlider

@export var sprite : Sprite2D 
@export var value_label : Label 


func _on_value_changed(new_value: float) -> void:
	sprite.offset.y = new_value
	value_label.text = str(int(new_value))

func _on_flip_y_toggled(toggled_on: bool) -> void:
	sprite.flip_v = toggled_on
