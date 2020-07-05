#! /usr/bin/env python3

import Adafruit_DHT # https://github.com/adafruit/Adafruit_Python_DHT
from pprint import pprint
from dweeter import Dweet
import uuid


sensor = Adafruit_DHT.AM2302
pin = 14
guid = uuid.getnode()
dweet_io_thing = "humidity-temp-sensor-{}".format(guid)
humidity, temp = Adafruit_DHT.read_retry(sensor, pin)
humidity_temp_dict = {"Temperature" : round(temp, 2), "Humidity" : round(humidity, 2)}
pprint(humidity_temp_dict)
humidity_temp_dweeter = Dweet(dweet_io_thing=dweet_io_thing, payload=humidity_temp_dict)
humidity_temp_dweet_response = humidity_temp_dweeter.send()
pprint(humidity_temp_dweet_response)
