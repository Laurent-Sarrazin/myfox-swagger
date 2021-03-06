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
class Camera:
    """NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually."""


    def __init__(self):
        self.swaggerTypes = {
            'deviceId': 'integer',
            'label': 'integer',
            'resolutionHeight': 'integer',
            'resolutionWidth': 'integer',
            'modelId': 'integer',
            'modelLabel': 'integer'

        }


        #The camera identifier
        self.deviceId = None # integer
        #The camera label
        self.label = None # integer
        #The produced image height in pixels
        self.resolutionHeight = None # integer
        #The produced image width in pixels
        self.resolutionWidth = None # integer
        #The camera model identifier
        self.modelId = None # integer
        #The camera model name
        self.modelLabel = None # integer
        
