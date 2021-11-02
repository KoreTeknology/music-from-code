# KoreTeknology @@@ 2021 - Made with Sonic Pi Software
###   __     __   ### "Kartage Pak" 160bpm
###  |  \   /  |  ### by AKTIV.25 (uriel Deveaud)
###  ||| \_/ |||  ###
###  |||||||||||  ###
###__|||||||||||__###
###\ \--.|||.--/ /###
### \ \__\_/__/ / ###
###  \ AKTIV25 /  ###
###   ---------   ###
###-------------------------------------------------------------------------------------------


use_bpm 160

###-------------------------------------------------------------------------------------------
define :simpleKickLoop do
  sample :bd_tek, rate: 1
  sleep 1
end


define :heavyKickLoop do
  sample :drum_heavy_kick
  sleep 2
end


###-------------------------------------------------------------------------------------------



live_loop :DRUMS do
  simpleKickLoop
end




### .----------------. ###
###| .--------------. |###
###| |     __       | |###
###| |    /  |      | |###
###| |    `| |      | |###
###| |     | |      | |###
###| |    _| |_     | |###
###| |   |_____|    | |###
###| |              | |###
###| '--------------' |###
### '----------------' ###

in_thread do
  with_fx :distortion do
    loop do
      heavyKickLoop
    end
  end
end

in_thread do
  with_fx :ixi_techno do
    loop do
      sample :mehackit_phone3, amp: 0.6
      sleep 4
    end
  end
end

in_thread do
  sleep 0.5
  loop do
    sample :drum_snare_hard, amp: 0.1
    sleep 1.5
  end
end

in_thread do
  sleep 0.25
  loop do
    sample :drum_cymbal_closed, cutoff: 20
    sleep 0.25
  end
end

in_thread do
  with_fx :reverb do
    use_synth :mod_fm
    loop do
      play chord( :Db2, :minor)
      sleep 1.75
      play chord( :Db2, :minor)
      sleep 0.5
      
    end
  end
end

in_thread do
  use_synth :tech_saws
  loop do
    play_pattern_timed chord(:Db4, :minor), 0.25, amp: 0.6, release: 0.1
  end
end

###-------------------------------------------------------------------------------------------

#in_thread do
#  use_synth :sine
#  loop do
#    play :Db2
#    sleep 1.75
#    play :Db2
#    sleep 1.5
#    play :Db2
#    sleep 1.75
#    play :b1
#    sleep 1.75
#    play :b1
#    sleep 1.5
#    play :b1
#    sleep 1.75
#  end
#end

#in_thread do
#  use_synth :sine
#  loop do
#    play_pattern_timed chord(:Db2, :Db2, :Db2, :b1, :b1, :b1), [1.75, 1.5, 1.75, 1075, 105, 1075], 0.25
#  end
#end

###-------------------------------------------------------------------------------------------


