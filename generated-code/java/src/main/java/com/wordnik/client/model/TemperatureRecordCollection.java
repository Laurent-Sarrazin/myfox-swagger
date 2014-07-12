package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.TemperatureRecord;
public class TemperatureRecordCollection {
  /* List of objects */
  private List<TemperatureRecord> items = new ArrayList<TemperatureRecord>();
  public List<TemperatureRecord> getItems() {
    return items;
  }
  public void setItems(List<TemperatureRecord> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class TemperatureRecordCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

