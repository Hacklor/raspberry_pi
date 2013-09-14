require 'wiringpi'

puts "Testing the GPIO with WiringPi"
pin = WiringPi::GPIO.new(WPI_MODE_GPIO)

puts "Turning pin on"
pin.write(17, HIGH)

puts "Sleep for 10 seconds"
sleep(10)

puts "Turning pin off"
pin.write(17, LOW)



