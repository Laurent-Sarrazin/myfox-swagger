package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Image;
public class ImageCollection {
  /* List of objects */
  private List<Image> items = new ArrayList<Image>();
  public List<Image> getItems() {
    return items;
  }
  public void setItems(List<Image> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ImageCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

