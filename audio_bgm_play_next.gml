////audio_bgm_play_next()
//plays the next loop in the list if it exists
//returns the reference
var index = ds_list_find_index(global.sound_bgm_list,global.sound_bgm);
var next = ds_list_find_value(global.sound_bgm_list,index+1);
if !is_undefined(next) return audio_bgm_play(next);
else return false;
