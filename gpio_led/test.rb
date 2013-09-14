require 'gpio'

puts "Testing the led with GPIO library"
pin = GPIO::OutputPin.new(:pin => 11)

puts "Turning on the LED"
pin.on

puts "Sleep for 10 seconds"
sleep 10


puts "Turning off the LED"
pin.off



