extends Control

@onready var animation_tree = $Panel/ToggleButton/AnimationTree
@onready var label = $Label

func _ready():
	label.text = "No Magic here now. Sad."
	animation_tree.toggled_on.connect(_on_toggled_on)
	animation_tree.toggled_off.connect(_on_toggled_off)
	
	
func _on_toggled_on():
	label.text = "Magic here now"
	
func _on_toggled_off():
	label.text = "No Magic here now. Sad."
