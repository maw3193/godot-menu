extends Node

class_name InventoryItem, "res://art/icons/item.svg"

const FLOAT_MAX := 1.79769e308
var _item_view = preload("res://lib/ItemView.tscn")

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

func create_item_view():
	var view = _item_view.instance()
	view.set_icon(icon)
	view.set_name(item_name)
	view.set_quantity(quantity)
	return view
