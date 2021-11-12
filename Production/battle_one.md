# Battle ONE

This is a very early test of battle creation, time: 5m10s, just a drum beat that can be manipulate!

```ruby
use_sched_ahead_time 1
#use_debug false
#---------------------------------------------
# DEMO 4/4 LOOP SETTINGS
use_bpm 140
#---------------------------------------------
# GRID
pattern_grid =    "----------------------------------------------------------------".ring
pattern_myKick =  "9---8---8---9---9---8---8---9---9---8---8---9---9---8---8---9-8-".ring
pattern_mySnare = "----2-------2-------2-------2-------2-------2-------2-----1-2---".ring
pattern_myHihat = "--3---3---3---3---3---3---3---3---3---3---3---3---3---3---3--43-".ring
define :myPattern do 16/pattern_grid.length.to_f end
# SOUNDS
define :myKick do synth :mod_sine, attack: 0.01, release: 0.4, cutoff: 70, mod_phase: 0.05, amp: (pattern_myKick[look].to_f / 9) if (pattern_myKick[tick] != "-") end
define :mySnare do synth :gnoise, attack: 0.02, release: 1.9, cutoff: 120, amp: (pattern_mySnare[look].to_f / 9) if (pattern_mySnare[tick] != "-") end
define :myHihat do synth :cnoise, attack: 0.01, release: 0.2, amp: (pattern_myHihat[look].to_f / 9) if (pattern_myHihat[tick] != "-") end
# LOOPS
live_loop :Dkick do
  myKick
  sleep myPattern
end
live_loop :Dsnare do
  mySnare
  sleep myPattern
end
live_loop :Dhihat do
  myHihat
  sleep myPattern
end
```
