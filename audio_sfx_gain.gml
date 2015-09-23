////audio_sfx_gain(gain [0-1])
//changes the global gain setting for sfx
var gain = argument0;
global.gain_master_sfx = gain_scale(gain);
