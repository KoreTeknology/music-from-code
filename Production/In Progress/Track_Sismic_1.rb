# Welcome to Sonic Pi
# Sonic Pi DEMO by uriel Deveaud
# Title: DEKAR23
# Artist: Aktiv25
# Date: 11/2021
# License: GPL-3
# Sonic Pi Version: 3.3.1

# Description:
#
#
#
#

# Tasklist:                                            Status:
# Define Main Settings & tracks Level Mixer            Done
#
#

### SETTINGS
#------------------------- Sequencer
use_bpm 100
#use_sample_bpm :loop_amen
bar_length = 4
swing = (ring 0.01, -0.01)
use_random_seed 0
#------------------------- Master Bus
master = (ramp *range(0, 1, 0.1))
set_mixer_control! lpf: 120
set_volume! 1.5

# ### TRACKS MIXER
#------------------------- Drums Section
drumkit_bd_amp = 1 #Default: 1
drumkit_bd_rate = 0.6
drumkit_sn_amp = 1 #Default: 0
drumkit_sn_rate = 0.2
#------------------------- ALT Drums Section
drumkit2_bd_amp = 1 #Default: 1
drumkit2_sn_amp = 1 #Default: 1
#------------------------- Synths Section
snare_volume = 1 #Default: 0
bassline_amp = 0 #Default: 0
scratch_amp = 0 #Default: 0

synthprophet_amp = 0 #Default: 1
simplekick_amp = 1 #Default: 1

#     PARAM-VALUES
sTime =        1     ##//

load_samples :guit_em9, :bd_haus
#bd = :drum_bass_hard








################################## DEFINITIONS
#---------------------------------------------
# 2x Drumshots samples (/2bars)
define :drumKit do |bd_amp, bd_rate, sn_amp, sn_rate|
  sample :bd_haus, amp: bd_amp, rate: bd_rate
  sleep 1
  sample :sn_dolf, amp: sn_amp, rate: sn_rate
  sleep 1
  sample :bd_haus, amp: bd_amp, rate: bd_rate
  sleep 0.75
  sample :sn_dolf, amp: sn_amp, rate: sn_rate
  sleep 0.25
  sample :sn_dolf, amp: sn_amp, rate: sn_rate
  sleep 1
  #
  sample :bd_haus, amp: bd_amp, rate: bd_rate
  sleep 1
  sample :sn_dolf, amp: sn_amp, rate: sn_rate
  sleep 1
  sample :bd_haus, amp: bd_amp, rate: bd_rate
  sleep 0.25
  sample :sn_dolf, amp: sn_amp, rate: sn_rate
  sleep 0.75
  sample :sn_dolf, amp: sn_amp, rate: sn_rate
  sleep 1
end
#---------------------------------------------
# Drum kit (/2bars)
define :drumKit2 do |bd_amp, sn_amp|
  sample :bd_zome, amp: bd_amp
  sleep 1
  sample :sn_dolf, amp: sn_amp, start: 0.15, finish: 0.35, rate: 0.7
  sleep 1
end
#---------------------------------------------
# 2x Scratch loop samples (/0.5bar)
define :scratchTech do |amp|
  sample :vinyl_scratch, amp: amp
  sleep 1
  sample :vinyl_backspin, amp: amp
  sleep 1
end
#---------------------------------------------
# Use 1 synth tb303 (/1bar)
define :bassLine do |amp|
  use_synth :tb303
  synth :tb303, amp: amp, note: :e1, release: 4, cutoff: 120, cutoff_attack: 1
  sleep 4
  synth :tb303, amp: amp, note: :e1, release: 4, cutoff: rrand(60, 120), cutoff_attack: 1
  sleep 2
end
#---------------------------------------------
# Chord synth (/1bar)
define :synthChord do |amp|
  use_synth :hoover
  play 38,amp: amp
  sleep 0.25
  play 50
  sleep 0.25
  play 62,amp: amp
  sleep 0.25
  use_synth :prophet
  play 57
  sleep 0.25
  play 58,amp: amp
  sleep 0.5
end
#---------------------------------------------
define :snare do |amp|
  sample :ambi_choir, amp: amp, rate: 0.5
  sleep 4
end
#---------------------------------------------
define :simpleKickSample do |amp|
  sample :bd_tek, rate: 0.8, amp: amp
end



define :phoneFx do
  stop
  sample :mehackit_phone3, amp: 0.9
  sleep 1
end








### TRACKS :)
######################################### TRACK 9.1
live_loop :drumKits do
  #stop
  drumKit 1 * master.tick * drumkit_bd_amp,
    2 * master.tick * drumkit_bd_rate,
    3 * master.tick * drumkit_sn_amp,
    4 * master.tick * drumkit_sn_rate
end
######################################### TRACK 9.4
live_loop :drumkits2 do ################# Drums 2
  #stop
  drumKit2 1 * master.tick * drumkit2_bd_amp,
    2 * master.tick * drumkit2_sn_amp
end
######################################### TRACK 9.2
live_loop :scratchFx do ############## Scratchs
  #stop
  scratchTech 1 * master.tick * scratch_amp
end
######################################### TRACK 9.3

live_loop :synthProphet do
  #stop
  synthChord 1 * master.tick * synthprophet_amp
end
######################################### TRACK 9.5
live_loop :basslineTb303 do ##################### Tb303
  #stop
  bassLine 1 * master.tick * bassline_amp
end
######################################### TRACK 9.6
with_fx :ixi_techno do
  live_loop :effects do
    stop
    phoneFx
  end
end
######################################### TRACK 9.7
live_loop :DRUMS do
  #stop
  simpleKickSample 1 * master.tick * simplekick_amp
  sleep 0.5
end
######################################### TRACK 9.8
live_loop :snares do
  #stop
  sleep 1
  snare 1 * master.tick * snare_volume
  sleep 1
end






with_fx :rlpf, cutoff: 10, cutoff_slide: 4 do |c|
  live_loop :dnb do
    stop
    sample :bass_dnb_f, amp: 1
    #sample :loop_amen, amp: 5
    sleep sTime
    sample :bass_dnb_f, amp: 1
    sample :loop_amen, amp: 1
    sleep sTime
    #sample :bass_dnb_f, amp: 5
    sample :loop_amen, amp: 1
    sleep sTime
    sample :loop_amen, amp: 1, onset: pick
    sample :bass_dnb_f, amp: 1
    sleep sTime
    sample :bass_dnb_f, amp: 1
    sleep sTime
    play 44
    sample :loop_amen, amp: 1, onset: pick
    #sample :bass_dnb_f, amp: 5
    sleep sTime
    #sleep sTime
    control c, cutoff: rrand(100, 120), cutoff_slide: rrand(1, 3)
  end
end








live_loop :low do
  tick
  synth :zawa, wave: 1, phase: 0.25, release: 5, note: (knit :e1, 12, :c1, 4).look, cutoff: (line 60, 120, steps: 6).look
  sleep 4
end

with_fx :reverb, room: 1 do
  live_loop :lands, auto_cue: false do
    stop
    use_synth :dsaw
    use_random_seed 310003
    ns = (scale :e2, :minor_pentatonic, num_octaves: 4).take(4)
    16.times do
      play ns.choose, detune: 12, release: 0.1, amp: 2, amp: rand + 0.5, cutoff: rrand(70, 120), amp: 2
      sleep 0.125
    end
  end
end

live_loop :fietsen do
  stop
  sleep 0.25
  sample :guit_em9, rate: -1
  sleep 7.75
end

live_loop :tijd do
  stop
  sample :bd_haus, amp: 2.5, cutoff: 100
  sleep 0.5
end

live_loop :ind do
  sample :loop_industrial, beat_stretch: 3, amp: 0.7
  sleep 1
end


