extends HSlider

@export var grid : ColorRect
@export var value_label : Label

func _on_value_changed(new_value: float) -> void:
	grid.material.set_shader_parameter("zoom", float(new_value))
	value_label.text = str(new_value)
