////audio_ambience_play_last()
//plays the last loop in the list if it exists
//returns the reference
var index = ds_list_size(global.sound_ambience_list) - 1;
var next = ds_list_find_value(global.sound_ambience_list,index);
if !is_undefined(next) return audio_ambience_play(next);
else return false;