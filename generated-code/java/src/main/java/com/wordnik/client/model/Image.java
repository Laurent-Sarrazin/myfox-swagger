package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class Image {
  /* The image identifier */
  private Integer imageId = null;
  /* This value can be null if the camera has been uninstalled. */
  private Integer cameraId = null;
  /* The label of the camera that has captured the image */
  private Integer cameraLabel = null;
  /* The image height in pixels */
  private Integer height = null;
  /* The image width in pixels */
  private Integer width = null;
  /* The image creation date */
  private Integer createdAt = null;
  /* The download URL */
  private String fileURL = null;
  public Integer getImageId() {
    return imageId;
  }
  public void setImageId(Integer imageId) {
    this.imageId = imageId;
  }

  public Integer getCameraId() {
    return cameraId;
  }
  public void setCameraId(Integer cameraId) {
    this.cameraId = cameraId;
  }

  public Integer getCameraLabel() {
    return cameraLabel;
  }
  public void setCameraLabel(Integer cameraLabel) {
    this.cameraLabel = cameraLabel;
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

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Image {\n");
    sb.append("  imageId: ").append(imageId).append("\n");
    sb.append("  cameraId: ").append(cameraId).append("\n");
    sb.append("  cameraLabel: ").append(cameraLabel).append("\n");
    sb.append("  height: ").append(height).append("\n");
    sb.append("  width: ").append(width).append("\n");
    sb.append("  createdAt: ").append(createdAt).append("\n");
    sb.append("  fileURL: ").append(fileURL).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

