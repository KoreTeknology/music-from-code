< [Back to Homepage](../../..)

# Synth Instruments References

This page presents the included synthetizers...

## Common parameters to ALL Synthetizers

| **Params** &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| Values | Default | Description |
| :------------------- | :---: | :---: | :--- |
| `amp` | 0-1 | | used to set the volume/gain |
| `pan` | -1-1 | | used to set the panoramic |
| `on` | 0-1 | | used to switch or mute |

## Enveloppe parameters to ALL Synthetizers

| **Params** &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| Values | Default | Description |
| :------------------- | :---: | :---: | :--- |
| `attack` | -1-1 | | used to set the enveloppe ADSR in time |
| `attack_level` | -1-1 | | used to set the enveloppe ADSR in Gain |
| `decay` | -1-1 | | used to set the enveloppe ADSR in Time |
| `decay_level` | -1-1 | | used to set the enveloppe ADSR in Gain |
| `sustain` | -1-1 | | used to set the enveloppe ADSR in time |
| `sustain_level` | -1-1 | | used to set the enveloppe ADSR in Gain |
| `release` | -1-1 | | used to set the enveloppe ADSR in Time |
| `env_curve` | 1-7 | 2 | used to set the enveloppe ADSR curve design* |

* this parameter cannot be changed once set and after run button is activated!

---

## Available Synthetizers, classified by type

### Basic generators
- [x] [**   **](Documentation/synth_blade.md)  no named, just the default Spi synth
- [x] [**Beep**](Documentation/synth_beep.md), typed sine wave
- [x] [**Fm**](Documentation/synth_blade.md), string base type
- [x] [**Sine**](Documentation/synth_beep.md), typed sine wave
- [x] [**Saw**](Documentation/synth_blade.md), string base type
- [x] [**Super Saw**](Documentation/synth_blade.md), string base type
- [x] [**Pulse**](Documentation/synth_beep.md), typed sine wave
- [x] [**Sub Pulse**](Documentation/synth_beep.md), typed sine wave
- [x] [**Square**](Documentation/synth_blade.md), string base type
- [x] [**Tri**](Documentation/synth_blade.md), string base type


### Detuned generators
- [x] [**Dpulse**](Documentation/synth_beep.md), sharing formats and exporting
- [x] [**Dsaw**](Documentation/synth_blade.md), keyboards and controls
- [x] [**Dtri**](Documentation/synth_blade.md), keyboards and controls

### Acoustic instruments generators
- [x] [**Piano**](Documentation/synth_blade.md), keyboards and controls
- [x] [**Blade**](Documentation/synth_blade.md), string base type
- [x] [**Duli Bell**](Documentation/synth_blade.md), bell base type
- [x] [**Pluck**](Documentation/synth_blade.md), guitar base type
- [x] [**Kalimba**](Documentation/synth_blade.md), string base type

### Noise generators
- [x] [**Noise**](Documentation/synth_blade.md), keyboards and controls
- [x] [**B Noise**](Documentation/synth_blade.md), string base type
- [x] [**C Noise**](Documentation/synth_blade.md), string base type
- [x] [**G Noise**](Documentation/synth_blade.md), string base type
- [x] [**P Noise**](Documentation/synth_blade.md), string base type

### Modulated generators
- [x] [**Mod Beep**](Documentation/synth_blade.md), keyboards and controls
- [x] [**Mod Dsaw**](Documentation/synth_blade.md), string base type
- [x] [**Mod Fm**](Documentation/synth_blade.md), string base type
- [x] [**Mod Pulse**](Documentation/synth_blade.md), string base type
- [x] [**Mod Saw**](Documentation/synth_blade.md), string base type
- [x] [**Mod Sine**](Documentation/synth_blade.md), string base type
- [x] [**Mod Tri**](Documentation/synth_blade.md), string base type

### Cheap tunes generators
- [x] [**Chipbass**](Documentation/synth_blade.md), keyboards and controls
- [x] [**Chiplead**](Documentation/synth_blade.md), string base type
- [x] [**Chipnoise**](Documentation/synth_blade.md), string base type

### Special generators
- [x] [**Dark Ambiance**](Documentation/synth_blade.md), keyboards and controls
- [x] [**Growl**](Documentation/synth_blade.md), string base type
- [x] [**Hollow**](Documentation/synth_blade.md), string base type
- [x] [**Hoover**](Documentation/synth_blade.md), string base type
- [x] [**Pretty Bell**](Documentation/synth_blade.md), string base type
- [x] [**Prophet**](Documentation/synth_blade.md), string base type
- [x] [**Rodeo**](Documentation/synth_blade.md), string base type
- [x] [**Tb303**](Documentation/synth_blade.md), string base type
- [x] [**Tech Saws**](Documentation/synth_blade.md), string base type
- [x] [**Zawa**](Documentation/synth_blade.md), string base type

---

### Basic sound play: simple note
```ruby
use_synth :beep
play 60
```


---

< [Back to Homepage](../../..)
