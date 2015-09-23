////audio_ambience_play_previous()
//plays the previous loop in the list if it exists
//returns the reference
var index = ds_list_find_index(global.sound_ambience_list,global.sound_ambience);
var next = ds_list_find_value(global.sound_ambience_list,index-1);
if !is_undefined(next) return audio_ambience_play(next);
else return false;
