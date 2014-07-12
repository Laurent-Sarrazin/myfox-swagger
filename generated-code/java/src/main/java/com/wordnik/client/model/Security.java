package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class Security {
  /* We recommend to use 'statusLabel' instead */
  private Integer status = null;
  //public enum statusEnum { 1, 2, 4, }; 
  /* The security level label */
  private String statusLabel = null;
  //public enum statusLabelEnum { disarmed, partial, armed, }; 
  public Integer getStatus() {
    return status;
  }
  public void setStatus(Integer status) {
    this.status = status;
  }

  public String getStatusLabel() {
    return statusLabel;
  }
  public void setStatusLabel(String statusLabel) {
    this.statusLabel = statusLabel;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Security {\n");
    sb.append("  status: ").append(status).append("\n");
    sb.append("  statusLabel: ").append(statusLabel).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

