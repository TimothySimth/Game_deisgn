extends RigidBody2D
var health = 100
var speed = 100
var direction = -1
signal damage(value)
func _ready():
	$Timer.start()


func _physics_process(delta):
	linear_velocity.x = speed * direction


func _on_timer_timeout():
	direction *= -1


func _on_body_entered(body):
	if body.name == "plt_player":
		health -= 10
		emit_signal("damage", 10)
	if health == 0:
		body.queue_free()
		OS.alert("You Died!")
		get_tree().reload_current_scene()
