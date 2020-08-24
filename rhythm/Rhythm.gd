extends Sprite

var bpm = 0.0

var current_beat = 0.0
var right_blocks = []
var left_blocks = []
var to_remove = []

func _ready():
	pass

func set_bpm(v):
	bpm = v

func push_block(id, diff):
	var shift_duration = 0.125*bpm/60.0
	
	if current_beat >= 4.0:
		for block in to_remove:
			block.queue_free()
		for block in left_blocks:
			$Tween.interpolate_property(
				block, "position:x",
				block.position.x, block.position.x - 16.0,
				shift_duration, Tween.TRANS_CUBIC, Tween.EASE_OUT)
		for block in right_blocks:
			$Tween.interpolate_property(
				block, "position:x",
				block.position.x, block.position.x - 16.0,
				shift_duration, Tween.TRANS_CUBIC, Tween.EASE_OUT)
				
			#if block.frames.has_animation(block.animation + '_out'):
				#block.play(block.animation + '_out')
		to_remove = left_blocks
		left_blocks = right_blocks
		right_blocks = []
		current_beat = 0.0
	$Tween.start()
	
	if id != '':
		var node = $Template.duplicate()
		self.add_child(node)
		node.play(id)
		node.position.y -= 32.0 * current_beat
		node.show()
		right_blocks.append(node)
	
	current_beat += diff

func reset():
	current_beat = 0.0
	for block in to_remove:
		block.queue_free()
	for block in left_blocks:
		block.queue_free()
	for block in right_blocks:
		block.queue_free()
	to_remove = []
	left_blocks = []
	right_blocks = []
