package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Site;
public class SiteCollection {
  /* List of objects */
  private List<Site> items = new ArrayList<Site>();
  public List<Site> getItems() {
    return items;
  }
  public void setItems(List<Site> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SiteCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

