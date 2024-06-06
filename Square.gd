extends Node2D

var active = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_control_gui_input(event):
	if event is InputEventMouseButton and \
	 event.button_index == MOUSE_BUTTON_LEFT and \
	 event.pressed == false:
		flip()
		get_parent().flip_adjacent(self)

func flip():
	if active:
		self.modulate = "#191919"
	else:
		self.modulate = "#FFFFFF"
	active = !active
