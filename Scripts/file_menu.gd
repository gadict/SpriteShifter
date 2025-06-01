extends MenuButton

@onready var popup : PopupMenu = self.get_popup()
@export var sprite_viewport : SubViewport
@export var selected_sprite : Sprite2D 
@export var sprite_selector : ItemList
@export var dialog : FileDialog

func _ready() -> void:
	popup.add_item("Load Sprite(s)", 1)
	popup.add_item("Clear sprites", 2)
	dialog.connect("file_selected", load_sprite)
	dialog.connect("files_selected", load_multi)
	popup.connect("id_pressed", 
	func menu_logic(id : int):
		match id:
			1:
				dialog.popup_centered_ratio()
			2:
				sprite_selector.clear()
				Globals.loaded_files = {}
				Globals.selected_path = ""
	)

func load_sprite(path : String, select_loaded : bool = true):
	if path in Globals.loaded_files.keys():
		return
	var image : Image = Image.load_from_file(path)
	var texture : ImageTexture = ImageTexture.create_from_image(image)
	sprite_selector.add_item(path, texture, true)
	Globals.loaded_files[path] = image
	if not select_loaded:
		return
	sprite_selector.select(sprite_selector.item_count-1, true)
	sprite_selector.item_selected.emit(sprite_selector.item_count-1)
	
	
func load_multi(paths : PackedStringArray):
	if len(paths) == 1:
		load_sprite(paths[0], true)
		return
	for path in paths:
		load_sprite(path, false)
	sprite_selector.select(0, true)
	sprite_selector.item_selected.emit(0)
