extends CheckButton

@export var grid : ColorRect

func _on_toggled(toggled_on: bool) -> void:
	grid.material.set_shader_parameter("solid_grid", toggled_on)
