///audio_sfx_play(sound, priority, optional[random pitch shift in semitones])
//be sure to set the gain first with audio_sfx_gain
//this is for playing non-looping sound effects

var snd = argument[0];
var priority = argument[1];

//play the sound
var this = audio_play_sound(snd,priority,false);
//set the gain
audio_sound_gain(this,global.gain_master_sfx,0);

//wobble
if argument_count > 2
{
 var range = argument[2]*(1/12);//this will take the semi-tone input and convert it
 var wobble = random_range(1 - range, 1 + range);
 //shift the pitch
 audio_sound_pitch(this,wobble);
}
