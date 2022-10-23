extends HFlowContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func set_icon(icon: Texture):
	$Icon.texture = icon
	
func set_name(text: String):
	$Name.text = text

func set_quantity(qty: int):
	$Quantity.text = "x{0}".format([qty])
