# "JUST HIT AND RUN"
# ##################################################################################
# Title : SPi Tribe :)
# Artist: AKTIV-25 (Uriel Deveaud) @KoreTeknology
# Github: https://github.com/KoreTeknology
# ##################################################################################
# SETTINGS
bpm = 160
# DRUMS SCALES GRID >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# ############ ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #####
# BINARY BEAT o   o   o   o   o   o   o   o   o   o   o   o   o   o   o   o   o
# |||||||||||||   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   ||||||
pattern =    "9---8---8---9---".ring
pattern_b =  "9-8-8---8-5---9-".ring
pattern_c =  "9---8-----258-4-".ring
# TERNARY BEAT
pattern3 =   "9--8--8--9--".ring
# OTHER BEATS
pattern_hh =   "--2--12---1---11--2--12---1---11".ring
pattern_sn =   "1-----312-----".ring
# COMBOS
patterns = [pattern, pattern_b].choose
# ##################################################################################
# MIXER
drone_amp = 0.5
glitch_amp = 0.8
# FX Params
kickDisto_mix = 0.3


# DrumKit Samples
bd = :bd_haus
bd2 = :bd_fat
sn = :sn_zome
hh = :drum_cymbal_closed

sam1 = :ambi_drone
# ##################################################################################
# DRUMS
with_fx :distortion, mix: kickDisto_mix do
  live_loop :BASEDRUMS do
    use_bpm bpm
    2.times do
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
      pattern_c.length.times do
        sample :bd_haus, rate: 0.3 ,  amp: (pattern_c[look].to_f / 9) if (pattern_c[tick] != "-")
        sleep 4/pattern_c.length.to_f
      end
      tick_reset
    end
  end
end

uncomment do
  with_fx :distortion, mix: kickDisto_mix do
    live_loop :HARDDRUMS do
      use_bpm bpm
      pattern3.length.times do
        sample :bd_fat, amp: (pattern3[look].to_f / 9) if (pattern3[tick] != "-")
        sleep 3/pattern3.length.to_f
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
          sample :sn_dolf, cutoff: 90, pan: rrand(-0.2, 0.5), amp: (pattern_sn[look].to_f / 9) if (pattern_sn[tick] != "-")
          sleep 8/pattern_sn.length.to_f
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
      sample :drum_cymbal_closed, pan: rrand(-0.4, 0.2), rate: 0.3, amp: (pattern_hh[look].to_f / 9) if (pattern_hh[tick] != "-")
      sleep 8/pattern_hh.length.to_f
    end
    tick_reset
  end
end

# SOUNDS
uncomment do
  live_loop :DRONE do
    use_bpm bpm
    sample :ambi_drone, rate: [0.5, 1, 1.5].choose, amp: drone_amp, slice: 3, release: 1
    sleep 1
    sample :ambi_lunar_land, amp: drone_amp
    sleep 1.5
  end
end


uncomment do
  use_bpm bpm
  live_loop :GLITCH do
    sample :glitch_perc1, rate: [0.1, 0.3, 0.5].choose, amp: glitch_amp
    sleep 3
  end
end





