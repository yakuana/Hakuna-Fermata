##| Ya'Kuana Davis

##| chords used
chords = [(chord :Ab, :major7), (chord :Db, :major7), (chord :Bb, :minor7), (chord :Eb, '7')]

##| introduction
##| 2.times do
##|   use_bpm 20
##|   sample :loop_amen, beat_stretch: 2, cutoff: 70
##|   sleep 2
##| end

sample :vinyl_rewind, amp: 0.75

##| song begins

use_bpm 30

##| melody 1

live_loop :keys do
  play chords.ring.tick, attack: 0.1, release: 1, amp: 0.7
  sleep 2
end

##| drums

live_loop :drum_one do
  intensity = [0.2, 0.3, 0.1].choose
  sample :drum_splash_soft, amp: intensity
  sleep 12
end

live_loop :drum_two do
  sync :drum_splash
  
  sample :bd_808, rate: 1, amp: 4
  sleep 1
  sample :drum_snare_soft, amp: 0.7
  sleep 1
  sample :bd_808, rate: 1, amp: 4
  sleep 1
  sample :drum_snare_soft, amp: 0.7
  sleep 1
end

live_loop :drum_3 do
  sample :tabla_ghe1
  sleep 2
end

live_loop :hihat do
  16.times do
    sample :drum_cymbal_pedal, start: 0.05, finish: 0.4, rate: 3, amp: 0.35 + rrand(-0.1, 0.1)
    sleep 0.125
  end
  4.times do
    sample :drum_cymbal_pedal, start: 0.05, finish: 0.6, rate: 3, amp: 0.45 + rrand(-0.1, 0.1), pan: rrand(1, -1)
    sleep 0.25
  end
  16.times do
    sample :drum_cymbal_pedal, start: 0.1, finish: 0.3, rate: 3, amp: 0.25 + rrand(-0.1, 0.1)
    sleep 0.0625
  end
end

##| bass

live_loop :bass do
  play :c2, amp: 0.6
  sleep 0.25
  play :c2, amp: 0.6
  sleep 2
  play :e2, amp: 0.6
  sleep 0.75
  play :f2, amp: 0.6
  sleep 1
end

##| random sounds

live_loop :snaps do
  with_fx :flanger, mix: 0 do
    sample :perc_snap, amp: rrand(0.8, 1), rate: rrand(1.9, 2.1), cutoff: rrand(80, 120), pan: rrand(-0.25, 0.25)
    sample :perc_snap2, amp: rrand(0.2, 0.5), rate: rrand(1.9, 2.1), cutoff: rrand(80, 120), pan: rrand(-0.25, 0.25)
  end
  sleep 4
end

live_loop :frog_noise do
  sample :perc_swoosh, amp: rrand(0.1, 0.3)
  sleep 2.5
end

live_loop :humming do
  sleep 5
  sample :ambi_dark_woosh, pan: rrand(-0.5, 0.5), amp: rrand(0.2, 0.5)
  sleep 15
end

##| melody 2

live_loop :robot_melody do
  sleep 16
  
  8.times do
    sample :glitch_robot1, sustain: 2, decay: 0.6, amp: 0.25, pan: rrand(-0.5, 0.5)
    sleep 2
    sample :glitch_robot2, sustain: 2, decay: 0.6, amp: 0.3, pan: rrand(-0.5, 0.5)
    sleep 2
  end
end

live_loop :new_beat do
  sleep 16
  
  8.times do
    sample :bd_mehackit
    sleep 0.25
    sample :bd_mehackit
    sleep 0.25
    sample :bd_fat
    sleep 1.5
  end
end

live_loop :play_phrase do
  use_bpm 30
  sleep 34
  
  use_bpm 150
  3.times do
    play_pattern [72, 70, 72, 70, 72, 70], [0.25, 0.25, 0.5, 0.25, 0.25, 0.5], amp: 0.05, pan: rrand(-0.6, 0.4)
  end
end


