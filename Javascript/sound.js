var context = new webkitAudioContext();
var sineWave = context.createOscillator();
sineWave.connect(context.destination);

sineWave.noteOn(0);

sineWave.noteOff(0);
