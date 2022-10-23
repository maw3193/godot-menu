extends InventoryItem

class_name ContainerItem, "res://art/icons/game-icons-open-chest.svg"

var _container_view = preload("res://lib/ContainerView.tscn")
var _container_item_icon = preload("res://art/icons/game-icons-open-chest.svg")

func set_default_icon():
	icon = _container_item_icon

func create_item_view():
	var view = _container_view.instance()
	view.set_icon(icon)
	view.set_name(item_name)
	view.set_quantity(quantity)
	for child in get_children():
		if child is InventoryItem:
			var child_view = child.create_item_view()
			view.add_item(child_view)
	return view
