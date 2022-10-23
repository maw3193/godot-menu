extends Node

class_name InventoryItem, "res://art/icons/item.svg"

const FLOAT_MAX := 1.79769e308

var _item_icon = preload("res://art/icons/item.svg")
export var item_name: String
export var quantity: int
export (Texture) var icon: Texture

func _ready():
	if not icon:
		set_default_icon()
	print(icon.get_class())
	print(icon.get_size())

func set_default_icon():
	icon = _item_icon

func create_tree_item(tree, parent=null):
	var tree_item = tree.create_item(parent)
	tree_item.set_metadata(0, self)
	tree_item.add_button(0, icon)
	tree_item.set_text(0, item_name)
	tree_item.set_text_align(0, TreeItem.ALIGN_LEFT)
	tree_item.set_cell_mode(1, TreeItem.CELL_MODE_RANGE)
	tree_item.set_range_config(1, 0, FLOAT_MAX, 1)
	tree_item.set_range(1, quantity)
	tree_item.set_text_align(1, TreeItem.ALIGN_LEFT)
	return tree_item
