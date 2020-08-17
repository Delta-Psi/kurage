extends Node2D

onready var global = get_node('/root/Global')

#var song_begin
#var song_delay

func _ready():
	#song_begin = OS.get_ticks_usec()
	$SongPlayer.play()

var pattern_position = 0
var next_pattern_beat = 0.0
var previous_time = 0.0

func _process(_delta):
	var time = $SongPlayer.get_playback_position() + AudioServer.get_time_to_next_mix() - AudioServer.get_output_latency()
	#var time = (OS.get_ticks_usec() - song_begin) / 1.0e6 # in seconds
	if time > 0.0 and time > previous_time:
		previous_time = time
		
		var beat = time / 60.0 * global.BPM
		while beat >= next_pattern_beat and pattern_position < len(global.PATTERN):
			var pattern_delay = global.PATTERN[pattern_position][0]
			var block_id = global.PATTERN[pattern_position][1]
			next_pattern_beat += pattern_delay
			pattern_position += 1
			
			$Rhythm.push_block(block_id, pattern_delay)
			
		$Metronome.set_measure_beat(fmod(beat, 4.0))
