package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Camera;
public class CameraCollection {
  /* List of objects */
  private List<Camera> items = new ArrayList<Camera>();
  public List<Camera> getItems() {
    return items;
  }
  public void setItems(List<Camera> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CameraCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

