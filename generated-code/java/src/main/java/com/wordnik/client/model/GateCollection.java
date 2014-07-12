package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Gate;
public class GateCollection {
  /* List of objects */
  private List<Gate> items = new ArrayList<Gate>();
  public List<Gate> getItems() {
    return items;
  }
  public void setItems(List<Gate> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GateCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

