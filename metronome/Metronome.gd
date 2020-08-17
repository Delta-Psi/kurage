extends Node2D

func set_measure_beat(beat):
	$Number.frame = int(beat)
	$Lines.frame = int(8.0 * (beat - int(beat)))
	pass
