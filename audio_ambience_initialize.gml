////audio_ambience_initialize(gain, sounds for ambience list...)
//run this only one time at game start!
//include any ambience you want to access using sound_play_ambience_next & sound_play_ambience_previous et. al
//if you don't want to use those scripts, this script is not needed

//set intial gain
global.gain_master_ambience = gain_scale(argument[0]);

//make a list and fill it with the sounds
global.sound_ambience_list = ds_list_create();
for(var i = 1; i < argument_count; i++)
{
 ds_list_add(global.sound_ambience_list,argument[i]);
}
//set global loop to the first in the list
global.sound_ambience = ds_list_find_value(global.sound_ambience_list,0);
