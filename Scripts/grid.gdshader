shader_type canvas_item;

uniform vec3 line_color : source_color = vec3(0.2, 0.3, 0.5);
uniform float thickness : hint_range(1.0, 10.0, 0.1) = 2.0;
uniform float zoom: hint_range(1.0, 50.0, 0.1) = 20.0;
uniform bool solid_grid = false;

float draw_grid(vec2 uv) {
	vec2 grid_uv = fract(uv);
	if (!solid_grid)
		return max(grid_uv.x, grid_uv.y);
	return cos(max(grid_uv.x, grid_uv.y));
}
void fragment() {
	vec2 uv = UV-0.5;
	vec2 resolution = 1.0 / SCREEN_PIXEL_SIZE;
	float line_thickness = zoom * thickness / resolution.y;
	vec3 color = smoothstep(line_thickness, 1.0, draw_grid(uv * zoom) * line_color);

	uv.x *= resolution.x / resolution.y;
	COLOR = vec4(color, 1.0);
}