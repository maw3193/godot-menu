extends Tree

const InventoryItem = preload("res://lib/inventory_item.gd")
const ContainerItem = preload("res://lib/container_item.gd")

export (NodePath) var item_path setget set_item
var item: InventoryItem
var tree_root: TreeItem

func destroy_tree():
	assert(tree_root)
	tree_root.call_recursive("free")
	tree_root = null

func create_tree():
	assert(item)
	tree_root = item.create_tree_item(self)
	return tree_root

func set_item(_item_path):
	if item_path != _item_path:
		item_path = _item_path
		item = get_node(item_path) as InventoryItem
		assert(item)
		if tree_root:
			destroy_tree()
		create_tree()

# Called when the node enters the scene tree for the first time.
func _ready():
	if item_path:
		item = get_node(item_path)
		create_tree()
