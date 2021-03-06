<?php
/**
 *  Copyright 2011 Wordnik, Inc.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

/**
 * $model.description$
 *
 * NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
 *
 */
class Video {

  static $swaggerTypes = array(
      'videoId' => 'integer',
      'cameraId' => 'integer',
      'cameraLabel' => 'string',
      'duration' => 'integer',
      'height' => 'integer',
      'width' => 'integer',
      'isRecording' => 'bool',
      'createdAt' => 'integer',
      'fileURL' => 'string',
      'playURL' => 'string',
      'previewURL' => 'string'

    );

  /**
  * The video identifier
  */
  public $videoId; // integer
  /**
  * The camera identifier
  */
  public $cameraId; // integer
  /**
  * The camera label
  */
  public $cameraLabel; // string
  /**
  * The video duration, in seconds
  */
  public $duration; // integer
  /**
  * The video height, in pixels
  */
  public $height; // integer
  /**
  * The video width, in pixels
  */
  public $width; // integer
  /**
  * Flag indicating if the video is currently recording
  */
  public $isRecording; // bool
  /**
  * The video creation date
  */
  public $createdAt; // integer
  /**
  * The video file URL
  */
  public $fileURL; // string
  /**
  * URL to get informations for HLS playing
  */
  public $playURL; // string
  /**
  * The video preview file URL
  */
  public $previewURL; // string
  }

