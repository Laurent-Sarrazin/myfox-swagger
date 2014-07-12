package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class Snapshot {
  /* The image identifier */
  private Integer imageId = null;
  /* The image file creation date */
  private Integer createdAt = null;
  /* The image file URL on the library */
  private String fileURL = null;
  public Integer getImageId() {
    return imageId;
  }
  public void setImageId(Integer imageId) {
    this.imageId = imageId;
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
    sb.append("class Snapshot {\n");
    sb.append("  imageId: ").append(imageId).append("\n");
    sb.append("  createdAt: ").append(createdAt).append("\n");
    sb.append("  fileURL: ").append(fileURL).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

