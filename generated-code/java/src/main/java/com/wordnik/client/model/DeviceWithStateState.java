package com.wordnik.client.model;

import com.wordnik.client.model.String, null;
import com.wordnik.client.model.Integer;
public class DeviceWithStateState {
  /* The device identifier */
  private Integer deviceId = null;
  /* Current state */
  private string, null stateLabel = null;
  //public enum stateLabelEnum { opened, closed, }; 
  public Integer getDeviceId() {
    return deviceId;
  }
  public void setDeviceId(Integer deviceId) {
    this.deviceId = deviceId;
  }

  public string, null getStateLabel() {
    return stateLabel;
  }
  public void setStateLabel(string, null stateLabel) {
    this.stateLabel = stateLabel;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DeviceWithStateState {\n");
    sb.append("  deviceId: ").append(deviceId).append("\n");
    sb.append("  stateLabel: ").append(stateLabel).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

