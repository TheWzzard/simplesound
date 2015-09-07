////gain_scale(linear gain)
//takes a value between 0 and 1 and scales it for a more pleasing gain curve
//it is possible to add a different scaling equation here without disrupting the other scripts!


//an exponential curve is ideal for gain scaling but is somewhat overkill for what most games require.
//for a volume control that changes by 10% each step, the cubic (power of 3) scaling is sufficient,
//a quartic (power of 4) scaling may produce better results if the change is smaller.


var gain = argument0;
return power(gain,3);//increase this value for a more pronounced curve