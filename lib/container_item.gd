extends InventoryItem

class_name ContainerItem, "res://art/icons/game-icons-open-chest.svg"


var _container_item_icon = preload("res://art/icons/game-icons-open-chest.svg")


func set_default_icon():
	icon = _container_item_icon

func create_tree_item(tree, parent=null):
	var tree_item = .create_tree_item(tree, parent)
	for child in get_children():
		if child is InventoryItem:
			child.create_tree_item(tree, tree_item)
	return tree_item
