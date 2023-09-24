extends AnimationTree

signal toggled_on
signal toggled_off

@onready var animation_tree = self


func _ready():
	active = true

func _on_toggle_button_toggled(button_pressed):
	if button_pressed:
		animation_tree["parameters/playback"].start("ToggleOn")
		await get_tree().create_timer(0.35).timeout
		emit_signal("toggled_on")
	else:
		animation_tree["parameters/playback"].travel("ToggleOff")
		await get_tree().create_timer(0.35).timeout
		emit_signal("toggled_off")
		
