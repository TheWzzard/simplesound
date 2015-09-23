////audio_ambience_play_first()
//plays the first loop in the list if it exists
//returns the reference
var index = 0;
var next = ds_list_find_value(global.sound_ambience_list,index);
if !is_undefined(next) return audio_ambience_play(next);
else return false;
