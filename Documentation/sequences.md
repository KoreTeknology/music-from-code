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

### Yet another drumbeat

```ruby
use_bpm 140 
#-----------------------------------------------------------------------------------------
pattern_grid = "----------------".ring # 4/4 Beat Measure Structure
define :silence do 4/pattern_grid.length.to_f end # 1/4 Beat Tempo
#----------------<|   |   |   |   >-------<|   |   |   |   >-------<|   |   |   |   >-----
p_myKick_seq =  ["9---7---8---7---".ring, "9---------------".ring, "9-4-----973-----".ring]
p_mySnare_seq = ["--1-------1-----".ring, "--1---1-2-4-----".ring, "321-----321-1---".ring]
p_myHihat_seq = ["1-1-1-1-1-1-1-1-".ring, "1---1-1-1-21--1-".ring, "--------132--1--".ring]
#-----------------------------------------------------------------------------------------
v = 0 # Init Beat Variants
#-----------------------------------------------------------------------------------------
define :myKick do  synth :sine, note: :C2, attack: 0.01, release: 0.3, cutoff: 120,
    amp: ((p_myKick_seq[v])[look].to_f / 9) if ((p_myKick_seq[v])[tick] != "-") end
define :mySnare do synth :bnoise, note: :C3, attack: 0.01, release: 0.8, cutoff: 90,
    amp: ((p_mySnare_seq[v])[look].to_f / 9) if ((p_mySnare_seq[v])[tick] != "-") end
define :myHihat do synth :noise, note: :C4, attack: 0.01, release: 0.05, cutoff: 130,
    amp: ((p_myHihat_seq[v])[look].to_f / 9) if ((p_myHihat_seq[v])[tick] != "-") end
#-----------------------------------------------------------------------------------------
with_fx :compressor, clamp_time: 0.05, threshold: 0.5, relax_time: 0.3, mix: 0.2 do
  with_fx :reverb, damp: 1, room: 1, mix: 0.2 do
    with_fx :eq, low: 1.2, mid: 0.4, high: 0.8, mix: 0.8 do
      #-----------------------------------------------------------------------------------------
      live_loop :BEAT_KICK do
        v = [0, 1, 2, 0/2, 1/2, 2/2].choose
        myKick
        sleep silence
      end
      #-----------------------------------------------------------------------------------------
      live_loop :BEAT_SNARE do
        v = [0, 1, 2, 0/2, 1/2, 2/2, 0/4, 1/4, 2/4].choose
        mySnare
        sleep silence
      end
      #-----------------------------------------------------------------------------------------
      live_loop :BEAT_HIHAT do
        v = [0, 1, 2].choose
        myHihat
        sleep silence
      end
    end
  end
end
```


< [Back to Homepage](../../..)
