extends ColorPicker

@export var grid : ColorRect 

func _on_color_changed(new_color: Color) -> void:
	grid.material.set_shader_parameter("line_color", new_color)
