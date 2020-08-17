extends Node2D

onready var global = get_node('/root/Global')

var pattern_position = 0
var next_pattern_beat = 0.0
var previous_time = 0.0

# workaround so we can properly reset the audio
var stream = preload("res://kurage.ogg")
var song_player = AudioStreamPlayer.new()

func _ready():
	song_player.stream = stream
	self.add_child(song_player)

func _process(_delta):
	if song_player.playing:
		var time = song_player.get_playback_position() + AudioServer.get_time_to_next_mix() - AudioServer.get_output_latency()
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
	if not song_player.playing:
		song_player.play()
	song_player.stream_paused = false

func _on_Pause_pressed():
	song_player.stream_paused = true

func _on_Reset_pressed():
	song_player.stop()
	song_player.queue_free()
	song_player = AudioStreamPlayer.new()
	song_player.stream = stream
	self.add_child(song_player)
	
	$Metronome.reset()
	$Rhythm.reset()
	pattern_position = 0
	next_pattern_beat = 0.0
	previous_time = 0.0
