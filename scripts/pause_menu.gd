class_name pause_menu
extends Control

func _notification(what: int) -> void:
	match what:
		Node.NOTIFICATION_PAUSED:
			hide()
			$panel.hide()
			$panel/v_box_container.hide()
			$panel/v_box_container/pause_label.hide()
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		Node.NOTIFICATION_UNPAUSED:
			show()
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
			$panel.show()
			$panel/v_box_container.show()
			$panel/v_box_container/pause_label.show()
