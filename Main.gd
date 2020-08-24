extends Node2D

var song_data = File.new()
var song_data_len

var bpm = 0.0
var next_pattern_beat = 0.0

var previous_time = 0.0

# workaround so we can properly reset the audio
var stream = preload("res://kurage.ogg")
var song_player = AudioStreamPlayer.new()

func _ready():
	song_player.stream = stream
	self.add_child(song_player)
	
	song_data.open("res://kurage.txt", File.READ)
	song_data_len = song_data.get_len()

func _process(_delta):
	if song_player.playing:
		var time = song_player.get_playback_position() + AudioServer.get_time_to_next_mix() - AudioServer.get_output_latency()
		if time > previous_time:
			previous_time = time
			
			var beat = time / 60.0 * bpm
			while song_data.get_position() < song_data_len and beat >= next_pattern_beat:
				var delay = 0.0
				while song_data.get_position() < song_data_len:
					var line = song_data.get_line().strip_edges()
					if line.begins_with("#"): continue
					var split = line.split(';')
					if len(split) == 2:
						delay = float(split[1].strip_edges())
					if len(split) > 0:
						split = split[0].split(' ', false, 1)
						if len(split) > 0:
							if split[0] == "bpm":
								bpm = float(split[1])
								$Rhythm.set_bpm(bpm)
							elif split[0] == "box":
								$Rhythm.push_block(split[1], delay)
							elif split[0] == "lyrics":
								if len(split) > 1:
									$Lyrics.push_line(split[1])
								else:
									$Lyrics.push_line("")
							else:
								print("unknown song data marker " + split[0])
					if delay > 0.0: break
				next_pattern_beat += delay
				
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
	song_data.seek(0)
	next_pattern_beat = 0.0
	previous_time = 0.0
