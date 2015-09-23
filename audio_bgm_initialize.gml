////audio_bgm_initialize(gain, sounds for bgm list...)
//include any bgm you want to access using sound_play_bgm_next & sound_play_bgm_previous et. al
global.sound_bgm_list = ds_list_create();
global.gain_master_bgm = gain_scale(argument[0]);
for(var i = 1; i < argument_count; i++)
{
 ds_list_add(global.sound_bgm_list,argument[i]);
}

global.sound_bgm = ds_list_find_value(global.sound_bgm_list,0);
