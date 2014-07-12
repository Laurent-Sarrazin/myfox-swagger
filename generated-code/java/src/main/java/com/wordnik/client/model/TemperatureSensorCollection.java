package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.TemperatureSensor;
public class TemperatureSensorCollection {
  /* List of objects */
  private List<TemperatureSensor> items = new ArrayList<TemperatureSensor>();
  public List<TemperatureSensor> getItems() {
    return items;
  }
  public void setItems(List<TemperatureSensor> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TemperatureSensorCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

