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
- [x] [**   **](synth_basic.md)  no named, just the default Spi synth
- [x] [**Beep**](synth_beep.md), typed sine wave
- [x] [**Fm**](synth_fm.md), string base type
- [x] [**Sine**](Documentation/synth_sine.md), typed sine wave
- [x] [**Saw**](Documentation/synth_saw.md), string base type
- [x] [**Super Saw**](Documentation/synth_supersaw.md), string base type
- [x] [**Pulse**](Documentation/synth_pulse.md), typed sine wave
- [x] [**Sub Pulse**](Documentation/synth_subpulse.md), typed sine wave
- [x] [**Square**](Documentation/synth_square.md), string base type
- [x] [**Tri**](Documentation/synth_tri.md), string base type


### Detuned generators
- [x] [**Dpulse**](Documentation/synth_dpulse.md), sharing formats and exporting
- [x] [**Dsaw**](Documentation/synth_dsaw.md), keyboards and controls
- [x] [**Dtri**](Documentation/synth_dtri.md), keyboards and controls

### Acoustic instruments generators
- [x] [**Piano**](Documentation/synth_piano.md), keyboards and controls
- [x] [**Blade**](Documentation/synth_blade.md), string base type
- [x] [**Duli Bell**](Documentation/synth_dulibell.md), bell base type
- [x] [**Pluck**](Documentation/synth_pluck.md), guitar base type
- [x] [**Kalimba**](Documentation/synth_kalimba.md), string base type

### Noise generators
- [x] [**Noise**](Documentation/synth_noise.md), keyboards and controls
- [x] [**B Noise**](Documentation/synth_bnoise.md), string base type
- [x] [**C Noise**](Documentation/synth_cnoise.md), string base type
- [x] [**G Noise**](Documentation/synth_gnoise.md), string base type
- [x] [**P Noise**](Documentation/synth_pnoise.md), string base type

### Modulated generators
- [x] [**Mod Beep**](Documentation/synth_modbeep.md), keyboards and controls
- [x] [**Mod Dsaw**](Documentation/synth_moddsaw.md), string base type
- [x] [**Mod Fm**](Documentation/synth_modfm.md), string base type
- [x] [**Mod Pulse**](Documentation/synth_modpulse.md), string base type
- [x] [**Mod Saw**](Documentation/synth_modsaw.md), string base type
- [x] [**Mod Sine**](Documentation/synth_modsine.md), string base type
- [x] [**Mod Tri**](Documentation/synth_modtri.md), string base type

### Cheap tunes generators
- [x] [**Chipbass**](Documentation/synth_chipbass.md), keyboards and controls
- [x] [**Chiplead**](Documentation/synth_chiplead.md), string base type
- [x] [**Chipnoise**](Documentation/synth_chipnoise.md), string base type

### Special generators
- [x] [**Dark Ambiance**](Documentation/synth_darkambiance.md), keyboards and controls
- [x] [**Growl**](Documentation/synth_growl.md), string base type
- [x] [**Hollow**](Documentation/synth_hollow.md), string base type
- [x] [**Hoover**](Documentation/synth_hoover.md), string base type
- [x] [**Pretty Bell**](Documentation/synth_prettybell.md), string base type
- [x] [**Prophet**](Documentation/synth_prophet.md), string base type
- [x] [**Rodeo**](Documentation/synth_rodeo.md), string base type
- [x] [**Tb303**](Documentation/synth_tb303.md), string base type
- [x] [**Tech Saws**](Documentation/synth_techsaw.md), string base type
- [x] [**Zawa**](Documentation/synth_zawa.md), string base type

---

### Basic sound play: simple note
```ruby
use_synth :beep
play 60
```


---

< [Back to Homepage](../../..)
