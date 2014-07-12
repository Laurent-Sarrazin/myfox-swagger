package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.GroupElectric;
public class GroupElectricCollection {
  /* List of objects */
  private List<GroupElectric> items = new ArrayList<GroupElectric>();
  public List<GroupElectric> getItems() {
    return items;
  }
  public void setItems(List<GroupElectric> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GroupElectricCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

