#! /usr/bin/env python3
import RPi.GPIO as GPIO # https://sourceforge.net/p/raspberry-gpio-python/wiki/install/


class Plant(object):
    """
    Args:
        plant_name: the name of the plant.
        channel: the GPIO channel the moisture sensor is attached to.

    Note:
        Using GPIO.setmode(GPIO.BOARD) instead of GPIO.setmode(GPIO.BCM) to
        ensure compatibility across all Rapsberry Pis.
    """
    def __init__(self, plant_name, channel):
        self.plant_name = plant_name
        self.channel = channel
        self.email_subject_needs_water = "{} needs water".format(self.plant_name)
        self.email_subject_plant_ok = "{} OK".format(self.plant_name)

    def sensor_output(self):
        """
        Returns 1 or 0.

        0 : sensor detects moisture.
        1 : sensor does not detect moisture.
        """
        GPIO.setmode(GPIO.BOARD)
        GPIO.setup(self.channel, GPIO.IN)
        self.output = GPIO.input(self.channel)
        return self.output

    def plant_status(self):
        """
        Returns a dictionary containing plant's name and the sensor's output
        value.
        """
        return {self.plant_name: self.sensor_output()}
