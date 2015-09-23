////audio_ambience_gain(gain [0-1])
//changes the global gain setting and adjusts the gain on the currently playing loop
var gain = argument0;
global.gain_master_ambience = gain_scale(gain);
audio_sound_gain(global.sound_ambience,global.gain_master_ambience,0);
