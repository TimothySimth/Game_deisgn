extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	var direction = Input.get_axis("a", "d")# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept"):
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
		if is_on_wall():
			velocity.y = JUMP_VELOCITY
			velocity.x = direction * -10**100**100**100**100**100**100**100
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
		
	elif direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	update_animation(direction)
	move_and_slide()
	$Label.text = str(velocity.x)

@onready var anim = $AnimatedSprite2D
func update_animation(direction):
	if not is_on_floor():
		anim.play("jump")
	elif direction != 0:
		anim.play("walk")
		anim.flip_h = direction < 0
	else:
		anim.play("default")
		




















