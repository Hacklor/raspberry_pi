# Raspberry Pi (Model B) Experiments #
Some experiments with my Raspberry Pi.

## LED Test ##
My first project with the Raspberry Pi was trying out different Ruby libraries to turn on a LED. The hardware is very straightforward.
Take a LED and connect the - to pin 9 and + to pin 11. 

(I'm not electronics expert, but officially you need a resistor, but this setup won't destroy your LED right away.)

### GPIO Led ###
This project tests the GPIO Ruby gem from https://github.com/klappy/gpio.

Before running the test you need to export GPIO number 17 on pin 11.
Run the following commands as root user (Not sudo)

~~~
echo "11" > /sys/class/gpio/export
~~~

This creates the necessary files to enable the gpio pin. It automatically sets it as an output pin.

The test needs to run as root user because it needs system files to control the pins.

To run the test:
~~~
sudo ruby gpio_led/test.rb
~~~

### Pi Piper Led ###
No setup required.
This test uses the Pi Piper Ruby gem which can be found on https://github.com/jwhitehorn/pi_piper

The test needs to run as root user because it needs system files to control the pins.

To run the test:
~~~
sudo ruby pi_piper_led/test.rb
~~~


### Wiring Pi Led ###
No setup required.
The Wiring Pi Ruby library can be found on https://github.com/WiringPi/WiringPi-Ruby

The test needs to run as root user because it needs system files to control the pins.

To run the test:
~~~
sudo ruby wiring_pi_led/test.rb
~~~
