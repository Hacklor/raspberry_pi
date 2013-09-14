require 'pi_piper'

puts "Testing the LED"
pin = PiPiper::Pin.new(:pin => 17, :direction => :out)

puts "Turning on"
pin.on

puts "Sleep for 10 seconds"
sleep(10)

puts "Turning pin off"
pin.off
