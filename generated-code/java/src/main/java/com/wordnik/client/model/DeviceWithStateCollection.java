package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.DeviceWithState;
public class DeviceWithStateCollection {
  /* List of objects */
  private List<DeviceWithState> items = new ArrayList<DeviceWithState>();
  public List<DeviceWithState> getItems() {
    return items;
  }
  public void setItems(List<DeviceWithState> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DeviceWithStateCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

