package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class SiteEvent {
  /* The event identifier */
  private Integer logId = null;
  /* The event label */
  private String label = null;
  /* The event type */
  private String type = null;
  //public enum typeEnum { scenario, homeAuto, security, config, alarm, access, account, diagnosis, }; 
  /* The event date */
  private String createdAt = null;
  public Integer getLogId() {
    return logId;
  }
  public void setLogId(Integer logId) {
    this.logId = logId;
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

  public String getCreatedAt() {
    return createdAt;
  }
  public void setCreatedAt(String createdAt) {
    this.createdAt = createdAt;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SiteEvent {\n");
    sb.append("  logId: ").append(logId).append("\n");
    sb.append("  label: ").append(label).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  createdAt: ").append(createdAt).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

