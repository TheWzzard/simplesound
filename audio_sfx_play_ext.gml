///audio_sfx_play_ext(sound, priority, stop sound if playing, fixed pitch shift in semi-tones, random pitch shift in semitones)
//be sure to set the gain first with audio_sfx_gain
//this is for playing non-looping sound effects
//returns the sound

var snd = argument[0];
var priority = argument[1];
var stop = argument[2];
if stop && audio_is_playing(snd) audio_stop_sound(snd);

//play the sound
var this = audio_play_sound(snd,priority,false);
//set the gain
audio_sound_gain(this,global.gain_master_sfx,0);

//wobble
var range = argument[4]*(1/12);//this will take the semi-tone input and convert it
var wobble = random_range(1 - range, 1 + range);
wobble += argument[3]*(1/12);
wobble = 1 + wobble;
//shift the pitch
audio_sound_pitch(this,wobble);
return this;
