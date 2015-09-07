///audio_bgm_play(sound)
//loops a bgm, returns the reference
var snd = argument0;
if audio_is_playing(global.sound_bgm) audio_stop_sound(global.sound_bgm);
global.sound_bgm = snd;
snd = audio_play_sound(snd,100,true);
audio_sound_gain(global.sound_bgm,0,0);
audio_sound_gain(global.sound_bgm,global.gain_master_bgm,10);
return snd;