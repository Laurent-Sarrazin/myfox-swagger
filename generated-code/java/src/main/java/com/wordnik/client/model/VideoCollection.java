package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Video;
public class VideoCollection {
  /* List of objects */
  private List<Video> items = new ArrayList<Video>();
  public List<Video> getItems() {
    return items;
  }
  public void setItems(List<Video> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class VideoCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

