package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Scenario;
public class ScenarioCollection {
  /* List of objects */
  private List<Scenario> items = new ArrayList<Scenario>();
  public List<Scenario> getItems() {
    return items;
  }
  public void setItems(List<Scenario> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ScenarioCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

