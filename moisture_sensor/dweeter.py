#! /usr/bin/env python3
"""
Simple wrapper to send, retrieve latest and retrieve the last five data uploads
to dweet.io via dweet.io's api.

api documentation : https://dweet.io/
"""
import requests
import os
import json
from datetime import datetime


class Dweet(object):
    """Creates an object that can send and retrieve data via dweet.io's api"""
    def __init__(self, dweet_io_thing, payload):
        """
        Args:
            dweet_io_thing: the name of the dweet.io project the data is stored
                            in.
            payload:        dictionary containing the data being sent to
                            dweet.io via the api.
        """
        self.dweet_io_thing = dweet_io_thing
        self.payload = payload
        self.dweet_send_url = "https://dweet.io/dweet/for"
        self.dweet_retrieve_last_five_url = "https://dweet.io/get/dweets/for"
        self.dweet_retrieve_latest_url = "https://dweet.io/get/latest/dweet/for"
        self.api_send_url = (os.path.join(self.dweet_send_url, self.dweet_io_thing))
        self.api_retrieve_last_five_url = os.path.join(self.dweet_retrieve_last_five_url, self.dweet_io_thing)
        self.api_retrieve_latest_url = (os.path.join(self.dweet_retrieve_latest_url, self.dweet_io_thing))

    def send(self):
        """
        Send data dweet.io 'thing'
        Returns dictionary containing the result of sending the data via the
        dweet.io api
        """
        if self.payload is None:
            return {"Error sending dweet": "No parameters specified."}
        else:
            try:
                self.r = requests.get(self.api_send_url, params=self.payload)
                print(self.r.url)
                self.json_response = json.loads(self.r.text)
                return self.json_response
            except requests.exceptions.ConnectionError as e:
                return {type(e): str(e)}

    def retrieve_latest(self):
        """
        Retrieve most recent data from dweet.io 'thing' via the dweet.io api.
        Returns dictionary containing the most recently uploaded data.
        """
        try:
            self.r = requests.get(self.api_retrieve_latest_url)
            self.json_response = json.loads(self.r.text)
            return self.json_response
        except requests.exceptions.ConnectionError as e:
            return {type(e): str(e)}

    def retrieve_last_five(self):
        """
        Retrieve last five data uploads from dweet.io 'thing'.
        Returns dictionary containing the last five data uploads to dweet.io
        'thing'.
        """
        try:
            self.r = requests.get(self.api_retrieve_last_five_url)
            self.json_response = json.loads(self.r.text)
            return self.json_response
        except requests.exceptions.ConnectionError as e:
            return {type(e): str(e)}
