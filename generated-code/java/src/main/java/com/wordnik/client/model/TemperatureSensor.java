package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class TemperatureSensor {
  /* The  device identifier */
  private Integer deviceId = null;
  /* The device label */
  private String label = null;
  /* The device model identifier */
  private String modelId = null;
  /* The device model label */
  private String modelLabel = null;
  public Integer getDeviceId() {
    return deviceId;
  }
  public void setDeviceId(Integer deviceId) {
    this.deviceId = deviceId;
  }

  public String getLabel() {
    return label;
  }
  public void setLabel(String label) {
    this.label = label;
  }

  public String getModelId() {
    return modelId;
  }
  public void setModelId(String modelId) {
    this.modelId = modelId;
  }

  public String getModelLabel() {
    return modelLabel;
  }
  public void setModelLabel(String modelLabel) {
    this.modelLabel = modelLabel;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TemperatureSensor {\n");
    sb.append("  deviceId: ").append(deviceId).append("\n");
    sb.append("  label: ").append(label).append("\n");
    sb.append("  modelId: ").append(modelId).append("\n");
    sb.append("  modelLabel: ").append(modelLabel).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

