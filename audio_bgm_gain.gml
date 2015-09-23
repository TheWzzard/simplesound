////audio_bgm_gain(gain [0-1])
var gain = argument0;
global.gain_master_bgm = gain_scale(gain);
audio_sound_gain(global.sound_bgm,global.gain_master_bgm,0);
