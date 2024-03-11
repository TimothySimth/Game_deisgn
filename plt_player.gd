extends CharacterBody2D
var health = 100

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


var menu_scene = preload("res://my_gui.tscn")
var menu_instance = null

func _ready():
	menu_instance = menu_scene.instantiate()
	$Camera2D.add_child.call_deferred(menu_instance)
	menu_instance.hide()

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		menu_instance.show()
		get_tree().paused = true
	var direction = Input.get_axis("a", "d")# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept"):
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
		if is_on_wall():
			velocity.y = JUMP_VELOCITY
			velocity.x = direction * -19999
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
		
	elif direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	update_animation(direction)
	move_and_slide()
	$Label.text = str(health)
@onready var anim = $AnimatedSprite2D
func update_animation(direction):
	if not is_on_floor():
		anim.play("jump")
	elif direction != 0:
		anim.play("walk")
		anim.flip_h = direction < 0
	else:
		anim.play("default")
		
func _on_plt_enemy_damage(value):
	health -= value
