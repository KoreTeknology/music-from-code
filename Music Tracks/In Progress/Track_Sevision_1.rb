# Settings
use_bpm 60
set_volume! 4
master = (ramp *range(0, 1, 0.1))
set_mixer_control! lpf: 120

# Mixer
synth_amp = 0.5


# Fx


# Loops
live_loop :base do
  sample :loop_compus , onset: pick
  sample :bd_fat, amp: 0.8
  sleep 0.25
end

live_loop :sn do
  sleep 0.5
  sample :sn_zome, amp: 0.2, rate: 0.25
  sleep 0.25
end

live_loop :hh do
  with_fx :echo, decay: 0.2, amp: 0 do
    2.times do
      sample :perc_impact1, rate: 0.8, amp: 0.5
      sleep 0.25
      sample :perc_door, rate: 0.2, amp: 0.5
      sleep 0.5
    end
  end
end

live_loop :synth1 do |amp|
  with_fx :lpf, cutoff: 80 do
    synth :zawa, note: 34, release: 4, amp: amp
    sleep 3
    1 * master.tick * synth_amp
  end
end

live_loop :machine do
  sample :loop_garzul, rate: (knit 1, 3, -1, 1).tick
  sleep 8
end
