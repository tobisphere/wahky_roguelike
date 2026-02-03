extends Control

var pause_toggle = false

func _ready() -> void:
	self.visible = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		pause_and_unpause()

func pause_and_unpause():
	pause_toggle = !pause_toggle
	get_tree().paused = pause_toggle
	self.visible = pause_toggle
	
	if pause_toggle:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:	
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _on_resume_button_pressed() -> void:
	pause_and_unpause()
	
func _on_exit_button_pressed() -> void:
	get_tree().quit()
