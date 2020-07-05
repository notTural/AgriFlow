#! /usr/bin/env python3
"""
Collects data from a moisture meter connected to a Raspberry Pi.

Transmits that data to a dweet.io 'thing': https://dweet.io/.
    Yes, dweet.io calls a project a 'thing'.
    You can make a dashboard that uses the dweet.io 'thing' data using
    https://freeboard.io.

If the plant's moisture sensor senses no moisture, it will send an email.

Sensor notes:
    sensor output 0 = LED on i.e. moisture is detected.
    sensor output 1 = LED off i.e. mositure is not detected.
"""


import smtplib
import uuid
from pprint import pprint
from plant import Plant
from dweeter import Dweet
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from datetime import datetime
import config


def sendEmail(subject):
    """
    Enter your email log in credentials and smtp server info into config.py
    """
    user = config.user
    password = config.password
    smtp_server = config.smtp_server
    smtp_port = config.smtp_port
    recipients = config.recipients

    if len(recipients) > 1:
        to_address = ", ".join(recipients)
    else:
        to_address = recipients[0]

    msg = MIMEMultipart()
    msg["From"] = "Plant Moisture Sensor"
    msg["To"] = to_address
    msg["Subject"] = subject
    # msg.attach(MIMEText("ENTER THE EMAIL BODY TEXT HERE IF YOU WANT", "plain"))

    server = smtplib.SMTP(smtp_server, smtp_port)
    server.ehlo()
    server.starttls()
    server.ehlo()
    server.login(user, password)
    text = msg.as_string()
    server.sendmail(user, to_address, text)
    server.close()

    print('%s - Email sent' % datetime.now())


def main():
    guid = uuid.getnode()
    dweet_io_thing = "moisture-sensor-{}".format(guid)

    """
    Initialise plant.
    Choose a name for it and enter the correct GPIO channel the moisture sensor
    it's connected to.
    """
    trinidad_scorpion = Plant(plant_name="Trinidad Scorpion", channel=11)

    # Get plant status i.e {plant name : sensor output}
    trinidad_scorpion_status_dict = trinidad_scorpion.plant_status()

    """
    Print the plant status dictionary. This will be sent to the dweet.io
    'thing'.
    """
    pprint(trinidad_scorpion_status_dict)

    """
    Initalise dweeter with the dweet.io 'thing' name and the plant status
    data to be sent to the dweet.io 'thing'.
    """
    trinidad_scorpion_dweeter = Dweet(dweet_io_thing=dweet_io_thing, payload=trinidad_scorpion_status_dict)

    # Send plant status dictionary to dweet.io
    dweet_response = trinidad_scorpion_dweeter.send()

    # Print out the reposne from the dweet.io api
    pprint(dweet_response)

    if trinidad_scorpion.sensor_output() == 1:
        sendEmail(trinidad_scorpion.email_subject_needs_water)
    else:
        # sendEmail(trinidad_scorpion.email_subject_plant_ok)
        pass

if __name__ == "__main__":
    main()
