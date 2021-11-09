# Custom Synth

## Introduction to SuperCollider

...
install last release
basic scheme and settings
oscillators
filters
lfos

variables
params


## Exporting synthdefs

After building our synth, we must export it as a file, we will use .writeDefFile()

```
(
SynthDef(\piTest,
         {|freq = 200, amp = 1, out_bus = 0 |
           Out.ar(out_bus,
			      //this is insane, no? using a simple Sine osc
			      // Now, lets go for a kick generator :)
                  SinOsc.ar([freq,freq],0,0.5)* Line.kr(1, 0, 5, amp, doneAction: 2))}
).writeDefFile("/Users/.../SYNTHS/")
)
```

## Loading synths in Sonic Pi

Loading a new synth, created in Supercollider is very simple, just use load_synthdefs "path" and call the synth:

```ruby
load_synthdefs "C:/Users/.../SYNTHS/"
synth 'piTest'

play 60
sleep 1
play 50
sleep 2
```


## Creating my first synth
