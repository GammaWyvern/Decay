extends KinematicBody2D

export var moveSpeed: = 150;
export var jumpVelocity: = 150;
export var gravityScale: = 200;
var velocity: = Vector2();

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.y = gravityScale;
	get_input();
	#move and slide is already *delta, collide isn't
	#Make sure its appropriate
	var motion = velocity#*delta;
	move_and_slide(motion);

func get_input():
	velocity.x = 0;
	if Input.is_action_pressed("ui_left"):
		velocity.x -= moveSpeed;
	if Input.is_action_pressed("ui_right"):
		velocity.x += moveSpeed;
