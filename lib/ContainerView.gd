extends VBoxContainer

func set_icon(icon: Texture):
	$ItemView.set_icon(icon)
	
func set_name(text: String):
	$ItemView.set_name(text)

func set_quantity(qty: int):
	$ItemView.set_quantity(qty)
	
func add_item(item):
	$ContentsMargin/Contents.add_child(item)
