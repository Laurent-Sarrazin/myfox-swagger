package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class Heater {
  /* The heater heating mode */
  private String modeLabel = null;
  //public enum modeLabelEnum { boiler, wired, }; 
  /* The heater state */
  private String stateLabel = null;
  //public enum stateLabelEnum { on, off, eco, frost, }; 
  /* The  device identifier */
  private Integer deviceId = null;
  /* The device label */
  private String label = null;
  /* The device model identifier */
  private String modelId = null;
  /* The device model label */
  private String modelLabel = null;
  public String getModeLabel() {
    return modeLabel;
  }
  public void setModeLabel(String modeLabel) {
    this.modeLabel = modeLabel;
  }

  public String getStateLabel() {
    return stateLabel;
  }
  public void setStateLabel(String stateLabel) {
    this.stateLabel = stateLabel;
  }

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
    sb.append("class Heater {\n");
    sb.append("  modeLabel: ").append(modeLabel).append("\n");
    sb.append("  stateLabel: ").append(stateLabel).append("\n");
    sb.append("  deviceId: ").append(deviceId).append("\n");
    sb.append("  label: ").append(label).append("\n");
    sb.append("  modelId: ").append(modelId).append("\n");
    sb.append("  modelLabel: ").append(modelLabel).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

