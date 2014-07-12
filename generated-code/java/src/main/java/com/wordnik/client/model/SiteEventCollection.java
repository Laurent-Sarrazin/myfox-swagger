package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.SiteEvent;
public class SiteEventCollection {
  /* List of objects */
  private List<SiteEvent> items = new ArrayList<SiteEvent>();
  public List<SiteEvent> getItems() {
    return items;
  }
  public void setItems(List<SiteEvent> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SiteEventCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

