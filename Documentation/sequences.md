< [Back to Homepage](../../..)

# Sequences


A simple exemple of a sequence
```ruby
use_bpm 90
pattern = "9---8---8---8---".ring

live_loop :bar do
  pattern.length.times do
    sample :bd_haus,  amp: (pattern[look].to_f / 9) if (pattern[tick] != "-")
    sleep 8/pattern.length.to_f
  end
end

```
An other one with more definition

```ruby
# "JUST HIT AND RUN"
bpm = 160

# DRUMS SCALES GRID >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# ############ ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #####
# BINARY      o   o   o   o   o   o   o   o   o   o   o   o   o   o   o   o   o
# |||||||||||||   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   ||||||

pattern =    "9---8---8---9---".ring
pattern_b =  "9-8-8---8-5---9-".ring

pattern3 =   "9--8--8--9--".ring
pattern2 =   "--2--12---1---11--2--12---1---11".ring
pattern4 =   "---8--------9-------8-------9---".ring

patterns = [pattern, pattern_b].choose
kickDisto_mix = 0.5

# ##################################################################################

with_fx :distortion, mix: kickDisto_mix do
  live_loop :kick do
    use_bpm bpm
    3.times do
      pattern.length.times do
        sample :bd_haus, rate: 0.3 ,  amp: (pattern[look].to_f / 9) if (pattern[tick] != "-")
        sleep 4/pattern.length.to_f
      end
    end
    tick_reset
    pattern_b.length.times do
      sample :bd_haus, rate: 0.3 ,  amp: (pattern_b[look].to_f / 9) if (pattern_b[tick] != "-")
      sleep 4/pattern_b.length.to_f
    end
    tick_reset
  end
end

with_fx :distortion, mix: kickDisto_mix do
  live_loop :dr do
    use_bpm bpm
    pattern3.length.times do
      sample :bd_fat, amp: (pattern3[look].to_f / 9) if (pattern3[tick] != "-")
      sleep 3/pattern3.length.to_f
    end
    tick_reset
  end
end

live_loop :sn do
  stop
  use_bpm bpm
  pattern2.length.times do
    sample :drum_cymbal_closed, rate: 0.3, amp: (pattern2[look].to_f / 9) if (pattern2[tick] != "-")
    sleep 16/pattern2.length.to_f
  end
  tick_reset
end

with_fx :echo,decay: 0.3, phase: 1 do
  live_loop :snares do
    stop
    use_bpm bpm
    pattern4.length.times do
      sample :sn_zome, cutoff: 100, amp: (pattern4[look].to_f / 10) if (pattern4[tick] != "-")
      sleep 8/pattern4.length.to_f
    end
    tick_reset
  end
end

```

< [Back to Homepage](../../..)
