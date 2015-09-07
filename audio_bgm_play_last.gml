////audio_bgm_play_last()
//plays the last loop in the list if it exists
//returns the reference
var index = ds_list_size(global.sound_bgm_list) - 1;
var next = ds_list_find_value(global.sound_bgm_list,index);
if !is_undefined(next) return audio_bgm_play(next);
else return false;