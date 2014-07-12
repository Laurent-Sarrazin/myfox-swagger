package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class Site {
  /* The site unique identifier */
  private Integer siteId = null;
  /* The site label */
  private String label = null;
  /* The brand of the site */
  private String brand = null;
  /* The timezone of the site location */
  private String timezone = null;
  /* AXA Assistance identifier */
  private String AXA = null;
  public Integer getSiteId() {
    return siteId;
  }
  public void setSiteId(Integer siteId) {
    this.siteId = siteId;
  }

  public String getLabel() {
    return label;
  }
  public void setLabel(String label) {
    this.label = label;
  }

  public String getBrand() {
    return brand;
  }
  public void setBrand(String brand) {
    this.brand = brand;
  }

  public String getTimezone() {
    return timezone;
  }
  public void setTimezone(String timezone) {
    this.timezone = timezone;
  }

  public String getAXA() {
    return AXA;
  }
  public void setAXA(String AXA) {
    this.AXA = AXA;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Site {\n");
    sb.append("  siteId: ").append(siteId).append("\n");
    sb.append("  label: ").append(label).append("\n");
    sb.append("  brand: ").append(brand).append("\n");
    sb.append("  timezone: ").append(timezone).append("\n");
    sb.append("  AXA: ").append(AXA).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

