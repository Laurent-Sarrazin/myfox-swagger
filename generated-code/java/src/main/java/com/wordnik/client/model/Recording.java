package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class Recording {
  /* The video file creation date */
  private Integer createdAt = null;
  /* The video identifier */
  private Integer videoId = null;
  public Integer getCreatedAt() {
    return createdAt;
  }
  public void setCreatedAt(Integer createdAt) {
    this.createdAt = createdAt;
  }

  public Integer getVideoId() {
    return videoId;
  }
  public void setVideoId(Integer videoId) {
    this.videoId = videoId;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Recording {\n");
    sb.append("  createdAt: ").append(createdAt).append("\n");
    sb.append("  videoId: ").append(videoId).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

