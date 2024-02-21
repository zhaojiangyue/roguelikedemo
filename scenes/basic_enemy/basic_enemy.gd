extends CharacterBody2D

const MAX_SPEED = 75
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var direction = get_direction_to_player()
	velocity = MAX_SPEED * direction
	move_and_slide()


func get_direction_to_player():
	var player_node = get_tree().get_first_node_in_group("player") as Node2D
	if player_node != null:
		return (player_node.global_position - global_position).normalized() #vector direction, enemy move from itself to player.
	return Vector2.ZERO


func _on_area_2d_area_entered(other_area):
	queue_free()
