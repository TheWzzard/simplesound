////audio_ambience_play(sound)
//loops an ambient sound, returns the reference
var snd = argument0;

//stops the current loop if it is playing
if audio_is_playing(global.sound_ambience) audio_stop_sound(global.sound_ambience);

//sets the variable so that this loop will be stopped when this script is called again
global.sound_ambience = snd;

//start playing the loop and set the gain
snd = audio_play_sound(snd,100,true);
audio_sound_gain(global.sound_ambience,0,0);
audio_sound_gain(global.sound_ambience,global.gain_master_ambience,10);
return snd;
