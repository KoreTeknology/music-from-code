# EXTATIK EP

```ruby
use_sched_ahead_time 1
use_debug true

use_bpm 140


#-----------------------------------------------------------------------------------------
pattern_grid = "----------------".ring # 4/4 Beat Measure Structure
define :silence do 4/pattern_grid.length.to_f end # 1/4 Beat Tempo
#----------------<|   |   |   |   >-------<|   |   |   |   >-------<|   |   |   |   >-----
p_myKick_seq =  ["9---7---8---7---".ring, "9-------9-------".ring, "9-4-8---973-8-2-".ring]




with_fx :eq, high: 0.3, mid: 0.4, low: 1 do
  
  live_loop :kick do
    v = [0, 1, 0, 2, 0, 2].choose # Init Beat Variants
    s = synth :sine, note: :C2, attack: 0.005, attack_level: 5, release: 0.25, amp: ((p_myKick_seq[v])[look].to_f / 9) if ((p_myKick_seq[v])[tick] != "-")
    s
    sleep silence
  end
  
  uncomment do
    live_loop :snare do
      sleep 0.5
      with_fx :rlpf, cutoff: 95, res: 0.55 do
        synth :beep, note: :f0, release: 1, slide: 0.07
        control note: :ds1
        synth :noise, release: 0.05, amp: 0.6
      end
      sleep 0.5
    end
  end
  
  
  uncomment do
    live_loop :hats do
      use_synth :noise
      with_fx :hpf, cutoff: 95 do
        4.times do
          play 64, release: 0.05, amp: 0.2
          sleep 0.25
        end
      end
    end
  end
  
  with_fx :distortion do
    
    live_loop :Del do
      use_synth :dark_ambience
      play 45, attack: [0.5, 3, 5].choose, release: 4, pitch: [0.7, 0.2, 2].choose, amp: 0.3
      sleep [8, 6, 3].choose
    end
  end
  
  
end
```
