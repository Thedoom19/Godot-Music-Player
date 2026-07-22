@tool
extends EditorPlugin

var dock : Control


func _enter_tree() -> void:
	dock = preload("res://addons/music_player/music_player.tscn").instantiate()
	
	add_control_to_dock(DOCK_SLOT_LEFT_BR, dock)



func _exit_tree() -> void:
	remove_control_from_docks(dock)
	
	dock.queue_free()
