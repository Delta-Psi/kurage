extends Node2D

func set_measure_beat(beat):
	$Number.frame = int(beat)
	$Lines.frame = int(8.0 * (beat - int(beat)))

func reset():
	$Number.frame = 0
	$Lines.frame = 0
