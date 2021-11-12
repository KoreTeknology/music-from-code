# Midi control Sonic Pi

page in progress! just found this on the forum: [Here](https://in-thread.sonic-pi.net/t/performance-drums-with-midi-keyboard/4893)
Needs to look at and write a specific doc for controllers, such as the mpk mini mk3

```ruby
live_loop :kybdmr do
  use_real_time
  # Use a 25-note midi keyboard starting at C3 to toggle
  # beats on/off.  The top key resets the pattern.
  # Use 'get[:dmr][i]' in drum pattern.
  # e.g.
  #
  # p(2) if ("----------------"[look]=="x") or get[:dmr][look]
  #
  numbeats=24
  #Init
  if tick==0;x=[];for n in 0..numbeats-1;x[n]=false;end;set :dmr,x;end;
  
  #Get and copy the last pattern
  x=get[:dmr];y=[];
  for i in 0..numbeats-1;y[i]=x[i];end
  
  #Toggle beats based on note value, or reset
  i,v = sync "/midi:mpk_mini:0:1/note_on"
  if i>47 and i<48+numbeats
    j=i-48
    y[j] ? y[j]=false : y[j]=true
  elsif i==48+numbeats
    #Reset
    for j in 0..numbeats-1;y[j]=false;end
  end
  
  #Add a sleep to make sure the set happens after the get (above).
  sleep 0.1
  set :dmr,y
  
  #Print the pattern in x-x- notation
  s=""
  for i in 0..numbeats-1
    s+=y[i] ? "x" : "-"
    s+=" " if (i+1)%4==0
  end
  puts s
end
```


and 

```ruby
#Example drumkit
use_bpm 110

live_loop :drumtest do
  #stop
  cue :bar
  sleep 4
end

live_loop :drums do
  sync :bar
  a = 1.0
  s = [:bd_tek, :bass_voxy_hit_c, :elec_cymbal]
  
  define :p do |i|
    case i
    when 0
      sample s[i], beat_stretch: 1, amp: a*0.5
    when 1
      sample s[i], beat_stretch: 3, amp: a*0.2
    when 2
      sample s[i], beat_stretch: 0.25, amp: a*0.3
    end
  end
  
  with_fx :echo, mix: 0.1, phase: 0.75, decay: 12 do
    in_thread do
      16.times do
        tick
        p(0) if ("x-------x---x---"[look]=="x")
        p(1) if ("------x---x-----"[look]=="x")
        p(2) if ("----------------"[look]=="x") or get[:dmr][look]
        sleep 1.0/4
      end
    end
  end
end
```
