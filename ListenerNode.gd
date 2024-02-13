extends Node3D
func _ready():
	var ball_instance = preload("res://ball.gd")
	var listener_node_instance = $ListenerNode
	
	if ball_instance and listener_node_instance:
		$ListenerNode.ball_instance.connect("ball_hit_ground", listener_node_instance, "_on_ball_hit_ground")

func _on_ball_hit_ground():
	print("ball_hit_ground！")
	print("Listener node responding to ball_hit_ground signal.")
