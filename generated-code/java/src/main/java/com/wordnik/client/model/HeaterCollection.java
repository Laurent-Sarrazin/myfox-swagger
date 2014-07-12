package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Heater;
public class HeaterCollection {
  /* List of objects */
  private List<Heater> items = new ArrayList<Heater>();
  public List<Heater> getItems() {
    return items;
  }
  public void setItems(List<Heater> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class HeaterCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

