package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Shutter;
public class ShutterCollection {
  /* List of objects */
  private List<Shutter> items = new ArrayList<Shutter>();
  public List<Shutter> getItems() {
    return items;
  }
  public void setItems(List<Shutter> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ShutterCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

