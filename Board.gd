extends Node2D

const width = 6
const height = 6

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func flip_adjacent(node: Node2D):
	var count = self.get_children().size()
	var index = node.get_index()
	var col = index % width
	var row = floor(index / width)
	if col < width - 1:
		self.get_child(index + 1).flip()
	if col > 0:
		self.get_child(index - 1).flip()
	if row < height - 1:
		self.get_child(index + width).flip()
	if row > 0:
		self.get_child(index - width).flip()
