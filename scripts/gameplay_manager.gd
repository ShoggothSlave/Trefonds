class_name gameplay_manager
extends Node

#@export var game_state : GameState
#@export var gameplay_actions : GameplayActions

func _input(event: InputEvent):
	if event.is_action_pressed("ui_cancel"):
		_toggle_pause()

func _toggle_pause():
	get_tree().paused = !get_tree().paused
