# Synth Instruments References

This page presents the included synthetizers...

### Common parameters to ALL Synthetizers

| **Params** &nbsp; &nbsp; | Values | Default | Description |
| :------------------- | :---: | :---: | :--- |
| `amp` | 0-1 | | used to set the volume/gain |
| `pan` | -1-1 | | used to set the panoramic |
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

### Basic sound play: simple note
```ruby
use_synth :beep
play 60
```
