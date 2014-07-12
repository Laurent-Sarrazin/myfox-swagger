package com.wordnik.client.model;

public class Stream {
  /* The stream identifier */
  private String GUID = null;
  /* The stream URL */
  private String location = null;
  /* The stream protocol */
  private String protocol = null;
  public String getGUID() {
    return GUID;
  }
  public void setGUID(String GUID) {
    this.GUID = GUID;
  }

  public String getLocation() {
    return location;
  }
  public void setLocation(String location) {
    this.location = location;
  }

  public String getProtocol() {
    return protocol;
  }
  public void setProtocol(String protocol) {
    this.protocol = protocol;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Stream {\n");
    sb.append("  GUID: ").append(GUID).append("\n");
    sb.append("  location: ").append(location).append("\n");
    sb.append("  protocol: ").append(protocol).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

