package com.wordnik.client.model;

import com.wordnik.client.model.String, null;
import com.wordnik.client.model.Integer;
public class DeviceWithState {
  /* The  device identifier */
  private Integer deviceId = null;
  /* The device label */
  private String label = null;
  /* Current state */
  private string, null stateLabel = null;
  //public enum stateLabelEnum { opened, closed, }; 
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

  public string, null getStateLabel() {
    return stateLabel;
  }
  public void setStateLabel(string, null stateLabel) {
    this.stateLabel = stateLabel;
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
    sb.append("class DeviceWithState {\n");
    sb.append("  deviceId: ").append(deviceId).append("\n");
    sb.append("  label: ").append(label).append("\n");
    sb.append("  stateLabel: ").append(stateLabel).append("\n");
    sb.append("  modelId: ").append(modelId).append("\n");
    sb.append("  modelLabel: ").append(modelLabel).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

