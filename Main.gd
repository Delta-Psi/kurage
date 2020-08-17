extends Node2D

onready var global = get_node('/root/Global')

#var song_begin
#var song_delay

func _ready():
	pass

var pattern_position = 0
var next_pattern_beat = 0.0
var previous_time = 0.0

func _process(_delta):
	if $SongPlayer.playing:
		var time = $SongPlayer.get_playback_position() + AudioServer.get_time_to_next_mix() - AudioServer.get_output_latency()
		if time > previous_time:
			previous_time = time
			
			var beat = time / 60.0 * global.BPM
			while beat >= next_pattern_beat and pattern_position < len(global.PATTERN):
				var pattern_delay = global.PATTERN[pattern_position][0]
				var block_id = global.PATTERN[pattern_position][1]
				next_pattern_beat += pattern_delay
				pattern_position += 1
				
				$Rhythm.push_block(block_id, pattern_delay)
				
			$Metronome.set_measure_beat(fmod(beat, 4.0))


func _on_Play_pressed():
	if $SongPlayer.playing:
		$SongPlayer.stream_paused = false
	else:
		$SongPlayer.play()

func _on_Pause_pressed():
	$SongPlayer.stream_paused = true

func _on_Reset_pressed():
	$SongPlayer.stop()
	#$Metronome.reset()
	$Rhythm.reset()
	pattern_position = 0
	next_pattern_beat = 0.0
	previous_time = 0.0
