package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.GroupShutter;
public class GroupShutterCollection {
  /* List of objects */
  private List<GroupShutter> items = new ArrayList<GroupShutter>();
  public List<GroupShutter> getItems() {
    return items;
  }
  public void setItems(List<GroupShutter> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GroupShutterCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

