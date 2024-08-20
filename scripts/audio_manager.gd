extends Node

enum SoundEffects {START_SCALE, END_SCALE, GRUNT}

var music_volume: float = 0:
	set(value):
		$MusicPlayer.volume_db = value
var sfx_volume: float = 0:
	set(value):
		for sfx_player: AudioStreamPlayer in $SFXPlayers.get_children():
			sfx_player.volume_db = value

func play_sfx(sfx: SoundEffects) -> void:
	match sfx:
		0:
			$SFXPlayers/StartScalePlayer.play()
		1:
			$SFXPlayers/EndScalePlayer.play()
		2:
			$SFXPlayers/GruntPlayer.play()
		_:
			push_warning("No such sound effect")
