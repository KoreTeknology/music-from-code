# :beep 

A typical generator to be used to create explosive and electronic sounds

| **Params** &nbsp; &nbsp; | Values | Default | Description |
| :------------------- | :---: | :---: | :--- |
| `note` | 1-128 | | used to select note(s) to be played |
| `amp` | 0-1 | | used to set the volume/gain |
| `pan` | -1-1 | | used to set the panoramic |
| `attack` | -1-1 | | used to set the enveloppe ADSR |
| `decay` | -1-1 | | used to set the enveloppe ADSR |
| `sustain` | -1-1 | | used to set the enveloppe ADSR |
| `release` | -1-1 | | used to set the enveloppe ADSR |

---

```ruby
# DEMO OF Basic Synth BEEP
# -----------------------------------------------------------------------
# "A simple pure sine wave. The sine wave is the simplest, purest sound
# there is and is the fundamental building block of all noise.
# The mathematician Fourier demonstrated that any sound could be built
# out of a number of sine waves."
# -----------------------------------------------------------------------

# Switch: 1=ON, 0=OFF
testloop_switch = 1
drumlopp_switch = 1
# ...
live_loop :test do
  use_synth :beep
  attr = [on: testloop_switch,
          note: [70, 64, 63, 62].choose,
          amp: 0.5,
          pan: 0,
          attack: 0.1,
          decay: 0.2,
          sustain: 0.1,
          release: 0.5,
          env_curve: 1]
  play attr[0]
  sleep 0.5
end

live_loop :drm do
  sample :loop_mehackit1, on: drumlopp_switch
  sleep 2
  
end


```
