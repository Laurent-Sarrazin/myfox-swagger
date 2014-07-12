package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class Camera {
  /* The camera identifier */
  private Integer deviceId = null;
  /* The camera label */
  private Integer label = null;
  /* The produced image height in pixels */
  private Integer resolutionHeight = null;
  /* The produced image width in pixels */
  private Integer resolutionWidth = null;
  /* The camera model identifier */
  private Integer modelId = null;
  /* The camera model name */
  private Integer modelLabel = null;
  public Integer getDeviceId() {
    return deviceId;
  }
  public void setDeviceId(Integer deviceId) {
    this.deviceId = deviceId;
  }

  public Integer getLabel() {
    return label;
  }
  public void setLabel(Integer label) {
    this.label = label;
  }

  public Integer getResolutionHeight() {
    return resolutionHeight;
  }
  public void setResolutionHeight(Integer resolutionHeight) {
    this.resolutionHeight = resolutionHeight;
  }

  public Integer getResolutionWidth() {
    return resolutionWidth;
  }
  public void setResolutionWidth(Integer resolutionWidth) {
    this.resolutionWidth = resolutionWidth;
  }

  public Integer getModelId() {
    return modelId;
  }
  public void setModelId(Integer modelId) {
    this.modelId = modelId;
  }

  public Integer getModelLabel() {
    return modelLabel;
  }
  public void setModelLabel(Integer modelLabel) {
    this.modelLabel = modelLabel;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Camera {\n");
    sb.append("  deviceId: ").append(deviceId).append("\n");
    sb.append("  label: ").append(label).append("\n");
    sb.append("  resolutionHeight: ").append(resolutionHeight).append("\n");
    sb.append("  resolutionWidth: ").append(resolutionWidth).append("\n");
    sb.append("  modelId: ").append(modelId).append("\n");
    sb.append("  modelLabel: ").append(modelLabel).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

