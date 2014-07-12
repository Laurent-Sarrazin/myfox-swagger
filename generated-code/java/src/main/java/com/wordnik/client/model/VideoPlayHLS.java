package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class VideoPlayHLS {
  /* The video identifier */
  private Integer videoId = null;
  /* The stream URL */
  private String location = null;
  /* The stream protocol */
  private String protocol = null;
  public Integer getVideoId() {
    return videoId;
  }
  public void setVideoId(Integer videoId) {
    this.videoId = videoId;
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
    sb.append("class VideoPlayHLS {\n");
    sb.append("  videoId: ").append(videoId).append("\n");
    sb.append("  location: ").append(location).append("\n");
    sb.append("  protocol: ").append(protocol).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

