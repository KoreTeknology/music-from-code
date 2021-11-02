# ######################################################################## PROJECT
# ||| #001 ||| Droplet Synth PPT 2200 ||| uriel Deveaud (Aktiv25) 11/2021
# ------------------------------------------------------------------------------
# ||| Custom Synth (ready to use Open Contents 4 Sonic-Pi Software*)
# ######################################################################## MIXER

set_volume! 1
synth_volume = 0.2
use_bpm 120

# ######################################################################## ASR

synth_attack = rrand(0, 4)
synth_sustain = rrand(0, 2)
synth_release = rrand(1, 5)

# ######################################################################## FX

# ######################################################################## TOOLS
# ######################################################################## SYNTHETIZER

define :mySynth_PPT220 do
  # Define Synth Params
  s = synth :prophet,
    #amp: synth_volume,
    attack: synth_attack,
    sustain: synth_sustain,
    release: synth_release,
    cutoff: rrand(60, 100),
    cutoff_slide: rrand(0, 5),
    pan: rrand(-1, 1),
    pan_slide: rrand(1, 5)
  # Define Synth Slide Params
  control s, pan: rrand(-1, 1), cutoff: rrand(60, 110)
  
  notes = (ring 40, 41, 44, 48, 42, 60).tick
  play notes, amp: synth_volume
end

# #################################################################################
# |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
# ######################################################################## SEQUENCE

with_fx :reverb, mix: 0.5 do
  live_loop :LIVELOOP do
    #synth mySynth_PPT220
    #notes = (ring 40, 41, 44, 48, 42, 60).tick
    mySynth_PPT220
    #play notes, amp: synth_volume
    sleep 2#rrand(0.25, 1.75)
  end
end

# ######################################################################## LICENSE
# ######################################################################## NOTES
# Thanks to the Sonic Pi community members for their support along the
# learning curve and the Dev.Team for their incredible work !!!
# Guys, you rock!

# *Sonic Pi is a software created by Sam Aaron, see https://sonic-pi.net/
