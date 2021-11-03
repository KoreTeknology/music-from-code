# Audio Synthesis

Sonic Pi offers a large palette of included synthdef base models. Those include generators of various types (sin, square, tri, etc...) available for our creation. We are looking at building-elements or blocks.

The most basic generator, by default, doesn´t have a name by itself and it can be called the simplest way

```ruby
play 60
```
For more advanced synth sounds, we must call a ready-made synth before playing notes:
```ruby
use_synth :sine
play 60
```
An exemple of such custom synth:
```ruby
synth_volume = 0.2
use_bpm 120

# ######################################################################## ENVELOPPE ASR

synth_attack = rrand(0, 4)
synth_sustain = rrand(0, 2)
synth_release = rrand(1, 5)

# ######################################################################## SYNTHETIZER

define :mySynth_PPT220 do
  # Define Synth Params
  s = synth :prophet,
    # ######################################## AMP: synth_volume,
    attack: synth_attack,
    sustain: synth_sustain,
    release: synth_release,
    cutoff: rrand(60, 100),
    cutoff_slide: rrand(0, 5),
    pan: rrand(-1, 1),
    pan_slide: rrand(1, 5)
  # ######################################## Define SLIDE Params
  control s, pan: rrand(-1, 1), cutoff: rrand(60, 110)
  # ######################################## Define ARP
  notes = (ring 40, 41, 44, 48, 42, 60).tick
  play notes, amp: synth_volume
end
```


---

### Basic sound play: simple note
```ruby
play 60
```

### Basic sound play: simple note with features
```ruby
play 60, amp: 0.8, rate: 0.5
```

### Basic sound play: simple note with features and random values
```ruby
play 60, amp: rrand(0.5, 1), rate: rrand(0.4, 2)
```

### Basis sound play: simple note with optional values
```ruby
play 60, amp: (0.5, 1).choose, rate:(0.4, 2).choose
```
