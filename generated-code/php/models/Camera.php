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
class Camera {

  static $swaggerTypes = array(
      'deviceId' => 'integer',
      'label' => 'integer',
      'resolutionHeight' => 'integer',
      'resolutionWidth' => 'integer',
      'modelId' => 'integer',
      'modelLabel' => 'integer'

    );

  /**
  * The camera identifier
  */
  public $deviceId; // integer
  /**
  * The camera label
  */
  public $label; // integer
  /**
  * The produced image height in pixels
  */
  public $resolutionHeight; // integer
  /**
  * The produced image width in pixels
  */
  public $resolutionWidth; // integer
  /**
  * The camera model identifier
  */
  public $modelId; // integer
  /**
  * The camera model name
  */
  public $modelLabel; // integer
  }

