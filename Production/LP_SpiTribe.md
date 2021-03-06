# SpiTribe (2021)
This EP is focused on a special type of rythm, a mix between binary and ternary beats, used in techno music to archieve a breaking beat on 12 times (3x4 and 4x3). Also i am using here some type of integrated synths as you can load the file in sonic pi and listen to the entire song, without downloading more samples. ;) Enjoy!

[Download to listen](Audio_files/spi25_audio.mp3)

Here is the complete code (download and open in sonic Pi):

```ruby
# "JUST HIT AND RUN"
# ##################################################################################
# Title : SPi Tribe :)
# Artist: AKTIV-25 (Uriel Deveaud) @KoreTeknology
# Github: https://github.com/KoreTeknology
# ##################################################################################
# SETTINGS
# use_debug false

bpm = 140
# DRUMS SCALES GRID >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# ############ ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #####
# BINARY BEAT o   o   o   o   o   o   o   o   o   o   o   o   o   o   o   o   o
# |||||||||||||   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   ||||||
pattern_bd1 =    "9---8---8---9---".ring
pattern_bd2 =  "9-8-8---8-5---9-".ring
pattern_bd3 =  "9---8-----258-4-".ring
# OTHER BINARY BEATS
pattern_hh =  "--2--12---1---1".ring
# TERNARY BEAT
pattern_hd =  "9--8--8--9--".ring
pattern_sn =  "5-----2-----".ring
# COMBOS
patterns = [pattern_bd1, pattern_bd2].choose

# ----------------------------------------------------------------------------------
# MIXER
drone_amp = 0.2
glitch_amp = 0.4
# FX Params
kickDisto_mix = 0.2
hoover_amp = 0.6
zawa_amp = 0.2

# MUTE CHANNELS
bd_mute = 0
kickDisto_mute = 0
snares_mute = 0
hh_mute = 0

drone_mute = 0
glitch_mute = 1
hoover_mute = 1
zawa_mute = 0

# ----------------------------------------------------------------------------------
# DrumKit Samples
bd = :bd_haus
bd2 = :bd_fat
sn = :sn_zome
hh = :drum_cymbal_closed
# Fx Samples
sam1 = :ambi_drone
# ----------------------------------------------------------------------------------
# DRUMS SEQUENCES
with_fx :distortion, mix: kickDisto_mix do
  live_loop :BASEDRUMS do
    use_bpm bpm
    2.times do
      3.times do
        pattern_bd1.length.times do
          sample :bd_haus, on: bd_mute, rate: 0.3 ,  amp: (pattern_bd1[look].to_f / 9) if (pattern_bd1[tick] != "-")
          sleep 4/pattern_bd1.length.to_f
        end
      end
      tick_reset
      pattern_bd2.length.times do
        sample :bd_haus, on: bd_mute, rate: 0.3 ,  amp: (pattern_bd2[look].to_f / 9) if (pattern_bd2[tick] != "-")
        sleep 4/pattern_bd2.length.to_f
      end
      tick_reset
      pattern_bd3.length.times do
        sample :bd_haus, on: bd_mute, rate: 0.3 ,  amp: (pattern_bd3[look].to_f / 9) if (pattern_bd3[tick] != "-")
        sleep 4/pattern_bd3.length.to_f
      end
      tick_reset
    end
  end
end

uncomment do
  with_fx :distortion, mix: kickDisto_mix do
    live_loop :HARDDRUMS do
      use_bpm bpm
      pattern_hd.length.times do
        sample :bd_fat, on: kickDisto_mute, amp: (pattern_hd[look].to_f / 9) if (pattern_hd[tick] != "-")
        sleep 3/pattern_hd.length.to_f
      end
      tick_reset
    end
  end
end

uncomment do
  with_fx :reverb, mix: 0.2 do
    with_fx :echo, decay: 0.5, phase: 2 do
      live_loop :SNARES do
        use_bpm bpm
        pattern_sn.length.times do
          sample :sn_dolf, on: snares_mute, cutoff: 130, pan: rrand(-0.2, 0.5), amp: (pattern_sn[look].to_f / 9) if (pattern_sn[tick] != "-")
          sleep 6/pattern_sn.length.to_f
        end
        tick_reset
      end
    end
  end
end

uncomment do
  live_loop :HIHATS do
    use_bpm bpm
    pattern_hh.length.times do
      sample :drum_cymbal_closed, on: hh_mute, pan: rrand(-0.4, 0.2), rate: 0.3, amp: (pattern_hh[look].to_f / 9) if (pattern_hh[tick] != "-")
      sleep 8/pattern_hh.length.to_f
    end
    tick_reset
  end
end
# ----------------------------------------------------------------------------------
# SOUNDS & FX SEQUENCES
uncomment do
  live_loop :DRONE do
    use_bpm bpm
    sample :ambi_drone, on: drone_mute, rate: [0.7, 1, 1.5].choose, amp: drone_amp, slice: 3, release: 1
    sleep 1
    sample :ambi_lunar_land, amp: drone_amp
    sleep 1.5
  end
end

uncomment do
  live_loop :GLITCH do
    use_bpm bpm
    sample :glitch_perc1, on: glitch_mute, rate: [0.1, 0.3, 0.5].choose, amp: glitch_amp
    sleep 3
  end
end
# ----------------------------------------------------------------------------------
# LEAD SYNTHS SEQUENCES
uncomment do
  live_loop :exp do
    use_bpm bpm
    use_synth :zawa
    play 60, amp: zawa_amp, on: zawa_mute, release: rrand(0.5, 4), note: rrand(50,80), release: rrand(2,8), slide: 2
    sleep 1.5
  end
end

uncomment do
  live_loop :decal do
    use_bpm bpm
    use_synth :hoover
    play [55, 40, 25, 50].choose, amp: hoover_amp, release: 0.3, on: hoover_mute
    sleep 0.5
  end
end

# ----------------------------------------------------------------------------------


# ----------------------------------------------------------------------------------

```
