#!/usr/bin/env python
"""
Copyright 2014 Wordnik, Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
"""
class TemperatureRecord:
    """NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually."""


    def __init__(self):
        self.swaggerTypes = {
            'deviceId': 'integer',
            'celsius': 'float',
            'recordedAt': 'integer'

        }


        #The temperature sensor device identifier
        self.deviceId = None # integer
        #The temperature value is celsius degrees
        self.celsius = None # float
        #The temperature value creation date
        self.recordedAt = None # integer
        
