# ######################################################################## PROJECT
# ||| #35411-ARFX-112021 ||| PPT 220 ||| uriel Deveaud (Aktiv25) 11/2021
# ------------------------------------------------------------------------------
# ||| Custom Synth (ready to use Open Contents 4 Sonic-Pi Software*)
# ######################################################################## SETTINGS
set_volume! 3
bpm = 90

# CONTROLS
s1_amp = 0.4; s2_amp = 0; s3_amp = 1;
amp = 1; amp2 = 0.5; amp3 = 0.5
d2_amp = 0.5

# #################################################################################
# |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
# ######################################################################## SEQUENCE
# Step 1, Startup Run
with_fx :echo,decay: 1,phase: 0.4 do
  live_loop :SYNTH do
    use_bpm bpm
    synth :prophet, attack: 10.5, note: rrand(30, 50), release: 15, amp: s1_amp
    sleep 20
  end
end
with_fx :reverb, damp: 0.8, room: 0.9 do
  use_bpm bpm
  live_loop :SYNTH_2 do
    synth :prophet, attack: 2.5, note: rrand(10, 90), release: 2.5, amp: s2_amp
    sleep 2.5
  end
end

# Step 2, Drumkit sequences
syntho = synth :sine, note: 25

with_fx :compressor,threshold: 0.1 do
  with_fx :distortion, distort: 0.3, mix: 1 do
    live_loop :DRUMS do
      use_bpm bpm
      synth :square, attack: 0, release: 0.4, note: 20, amp: amp, cutoff: 70
      sleep 0.5
      synth :square, attack: 0, release: 0.4, note: 20, amp: amp3, cutoff: 70
      sleep [0.25, 0.5].choose
      synth :square, attack: 0, release: 0.4, note: 25, amp: amp, cutoff: 90
      synth :noise, attack: 0, release: 0.3, note: 30, amp: amp2
      sleep 0.5
      synth :noise, attack: 0, release: 0.2, note: 50, amp: amp3
      sleep [0.5, 0.25].choose
    end
    live_loop :DRUMS_2 do
      use_bpm bpm
      2.times do
        synth :noise, attack: 0, release: 0.02, note: rrand(60, 80), amp: d2_amp
        sleep 0.25
      end
      synth :noise, attack: 0, release: 0.02, note: rrand(90, 110), amp: d2_amp
      sleep 0.25
    end
  end
end
# Step 3 more synth !
with_fx :reverb, damp: 0.8, room: 0.9 do
  live_loop :SYNTH_3 do
    use_bpm bpm
    synth :prophet, attack: 0.5, note: rrand(70, 90), release: 0.5, amp: s3_amp
    sleep 2.5
    synth :prophet, attack: 2.5, note: rrand(30, 90), release: 4.5, amp: s3_amp
    sleep 7.5
  end
end

# Step 4
with_fx :reverb, damp: 0.9,room: 0.9 do
  live_loop :LEAD do
    use_bpm bpm
    sample :guit_em9, onset: 1, release: 4, amp: 0, rate: [0.9, 0.2].choose
    sleep 1.5
  end
end
