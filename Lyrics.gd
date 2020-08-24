extends Node2D

onready var labels = [
	$Label1,
	$Label2,
	$Label3,
	$Label4,
	$Label5,
	$Label6,
	$Label7,
	$Label8,
	$Label9,
]
var current_label = 0

func _ready():
	for label in labels:
		label.text = ''

func reset():
	_ready()
	current_label = 0

func push_line(line):
	if current_label >= len(labels):
		reset()

	if current_label > 0:
		labels[current_label-1].set("custom_colors/font_color", Color(0.20, 0.20, 0.20))
	labels[current_label].text = line
	labels[current_label].set("custom_colors/font_color", null)
	current_label += 1
