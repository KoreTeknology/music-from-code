# Mixing sounds and buffers

### Volumes and Mutes

There are several way of doing this, i found more practical to use some options and variables to control my mix

```ruby
# DEMO OF Basic Synth BEEP
# -----------------------------------------------------------------------
# "A simple pure sine wave. The sine wave is the simplest, purest sound
# there is and is the fundamental building block of all noise.
# The mathematician Fourier demonstrated that any sound could be built
# out of a number of sine waves."
# -----------------------------------------------------------------------

# Mute Switch: 1=ON, 0=OFF
testloop_switch = 1
drumloop_switch = 1

# Volume control
testloop_amp = 0.5
drumloop_amp = 0.8


# ...

live_loop :test do
  use_synth :beep
  attr = [on: testloop_switch,
          note: [70, 64, 63, 62].choose,
          amp: testloop_amp,
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
  sample :loop_mehackit1, on: drumloop_switch, amp: drumloop_amp
  sleep 2
  
end
```
