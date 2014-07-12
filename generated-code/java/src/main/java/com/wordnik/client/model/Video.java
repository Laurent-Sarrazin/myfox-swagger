package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class Video {
  /* The video identifier */
  private Integer videoId = null;
  /* The camera identifier */
  private Integer cameraId = null;
  /* The camera label */
  private String cameraLabel = null;
  /* The video duration, in seconds */
  private Integer duration = null;
  /* The video height, in pixels */
  private Integer height = null;
  /* The video width, in pixels */
  private Integer width = null;
  /* Flag indicating if the video is currently recording */
  private Boolean isRecording = null;
  /* The video creation date */
  private Integer createdAt = null;
  /* The video file URL */
  private String fileURL = null;
  /* URL to get informations for HLS playing */
  private String playURL = null;
  /* The video preview file URL */
  private String previewURL = null;
  public Integer getVideoId() {
    return videoId;
  }
  public void setVideoId(Integer videoId) {
    this.videoId = videoId;
  }

  public Integer getCameraId() {
    return cameraId;
  }
  public void setCameraId(Integer cameraId) {
    this.cameraId = cameraId;
  }

  public String getCameraLabel() {
    return cameraLabel;
  }
  public void setCameraLabel(String cameraLabel) {
    this.cameraLabel = cameraLabel;
  }

  public Integer getDuration() {
    return duration;
  }
  public void setDuration(Integer duration) {
    this.duration = duration;
  }

  public Integer getHeight() {
    return height;
  }
  public void setHeight(Integer height) {
    this.height = height;
  }

  public Integer getWidth() {
    return width;
  }
  public void setWidth(Integer width) {
    this.width = width;
  }

  public Boolean getIsRecording() {
    return isRecording;
  }
  public void setIsRecording(Boolean isRecording) {
    this.isRecording = isRecording;
  }

  public Integer getCreatedAt() {
    return createdAt;
  }
  public void setCreatedAt(Integer createdAt) {
    this.createdAt = createdAt;
  }

  public String getFileURL() {
    return fileURL;
  }
  public void setFileURL(String fileURL) {
    this.fileURL = fileURL;
  }

  public String getPlayURL() {
    return playURL;
  }
  public void setPlayURL(String playURL) {
    this.playURL = playURL;
  }

  public String getPreviewURL() {
    return previewURL;
  }
  public void setPreviewURL(String previewURL) {
    this.previewURL = previewURL;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Video {\n");
    sb.append("  videoId: ").append(videoId).append("\n");
    sb.append("  cameraId: ").append(cameraId).append("\n");
    sb.append("  cameraLabel: ").append(cameraLabel).append("\n");
    sb.append("  duration: ").append(duration).append("\n");
    sb.append("  height: ").append(height).append("\n");
    sb.append("  width: ").append(width).append("\n");
    sb.append("  isRecording: ").append(isRecording).append("\n");
    sb.append("  createdAt: ").append(createdAt).append("\n");
    sb.append("  fileURL: ").append(fileURL).append("\n");
    sb.append("  playURL: ").append(playURL).append("\n");
    sb.append("  previewURL: ").append(previewURL).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

