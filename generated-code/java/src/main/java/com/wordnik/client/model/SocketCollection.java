package com.wordnik.client.model;

import java.util.*;
import com.wordnik.client.model.Socket;
public class SocketCollection {
  /* List of objects */
  private List<Socket> items = new ArrayList<Socket>();
  public List<Socket> getItems() {
    return items;
  }
  public void setItems(List<Socket> items) {
    this.items = items;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SocketCollection {\n");
    sb.append("  items: ").append(items).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

