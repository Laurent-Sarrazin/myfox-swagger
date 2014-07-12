package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class TemperatureRecord {
  /* The temperature sensor device identifier */
  private Integer deviceId = null;
  /* The temperature value is celsius degrees */
  private Float celsius = null;
  /* The temperature value creation date */
  private Integer recordedAt = null;
  public Integer getDeviceId() {
    return deviceId;
  }
  public void setDeviceId(Integer deviceId) {
    this.deviceId = deviceId;
  }

  public Float getCelsius() {
    return celsius;
  }
  public void setCelsius(Float celsius) {
    this.celsius = celsius;
  }

  public Integer getRecordedAt() {
    return recordedAt;
  }
  public void setRecordedAt(Integer recordedAt) {
    this.recordedAt = recordedAt;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TemperatureRecord {\n");
    sb.append("  deviceId: ").append(deviceId).append("\n");
    sb.append("  celsius: ").append(celsius).append("\n");
    sb.append("  recordedAt: ").append(recordedAt).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

