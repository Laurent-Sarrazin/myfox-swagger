package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Device;
import com.wordnik.client.model.Integer;
public class GroupShutter {
  /* The group identifier */
  private Integer groupId = null;
  /* The group label */
  private String label = null;
  /* The group type */
  private String type = null;
  /* The group devices list */
  private List<Device> devices = new ArrayList<Device>();
  public Integer getGroupId() {
    return groupId;
  }
  public void setGroupId(Integer groupId) {
    this.groupId = groupId;
  }

  public String getLabel() {
    return label;
  }
  public void setLabel(String label) {
    this.label = label;
  }

  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  public List<Device> getDevices() {
    return devices;
  }
  public void setDevices(List<Device> devices) {
    this.devices = devices;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GroupShutter {\n");
    sb.append("  groupId: ").append(groupId).append("\n");
    sb.append("  label: ").append(label).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  devices: ").append(devices).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

