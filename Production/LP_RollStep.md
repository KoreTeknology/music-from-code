# RollStep (LP)
This is my second album, composed only from code blocks. Started in 2020, this LP includes several new music styles to my music production journey.
| **reference** &nbsp; &nbsp; | Type | Description |
| :------------------- | :---: | :--- |
| GlassTone | `LP` | First Live coding session, particular ambiance and living sound forms |
- [x] [**Song #1: BAD-884**](Documentation/droplets.md) | EDM | a simple elecronic track at 140bpm
- [x] [**Song #2: ERR-404**](Documentation/droplets.md) | EXP | Strange ambiance and crazy drum beats at 100bpm


Here is the code in progress, inspired by others ;):
```ruby
use_debug false

use_bpm 150

set_volume! 4
set_mixer_control! lpf: 120

base_mute = 1
drum_mute = 1
snare_mute = 1

pattern_bd1 =    "9---8---8---9---9---8---8---9-8-9---8---8---9---9---8---8---97-7".ring


with_fx :reverb, mix: 0.32 do
  
  live_loop :kick do
    sample :bd_haus, on: drum_mute, amp: (pattern_bd1[look].to_f / 9) if (pattern_bd1[tick] != "-")
    sleep 16/pattern_bd1.length.to_f
  end
  
  live_loop :punch do
    sleep 1
    sample :sn_dolf, amp: 0.5, beat_stretch: 0.8, on: snare_mute
    sleep 1
  end
  
  with_fx :slicer, phase: 1, wave: 0, invert_wave: 1, smooth: 0.3 do |s|
    live_loop :block do
      sleep 0.50
      sample :drum_cymbal_soft, amp: 0.5, beat_stretch: 1.5, on: base_mute
    end
    
    live_loop :base do
      use_synth :square
      play :e1, release: 0.8, cutoff: 50, attack: 0.5, amp: 2, on: base_mute
      sleep 1
    end
    
    
    live_loop :base2 do
      use_synth :square
      play :e3, release: 0.8, cutoff: 130, attack: 0.6, amp: rand(0.5), on: base_mute
      sleep 1
    end
    
    la = :e2
    live_loop :noiz do
      use_synth :blade
      n = play la, release: 0.12, cutoff: 130, attack: 0.12, amp: 0.9, note_slide: 0.06, on: base_mute
      cur = (chord :e2, :m7, num_octaves: 4).pick
      control n, note: cur
      sleep 0.5
      la = cur
    end
    
    with_fx :echo, phase: 0.5, decay: 8, mix: 0.7, phase_slide: 6 do |e|
      with_fx :bitcrusher, distort: 0.4, mix: 1, sample_rate: 4000, bits: 8, cutoff: 130 do
        live_loop :noiz2 do
          use_synth :tb303
          n = play (chord :e2, :m7, num_octaves: 4).pick, release: 16, cutoff: 130, attack: 16, amp: 0.4, note_slide: 8
          sleep 8
          control n, note: (chord :e2, :m7, num_octaves: 4).pick
          sleep 8
          sleep 16
        end
        live_loop :harpz do
          sleep 1
          use_synth :pluck
          play :e2, amp: 0.7
          in_thread do
            6.times do
              sleep rand(0.2)
              play (chord :e2, :maj, num_octaves: 4).pick, amp: 0.6
            end
          end
          control e, phase: rrand(0.25,1)
          sleep 7
        end
      end
    end
  end
end



```
