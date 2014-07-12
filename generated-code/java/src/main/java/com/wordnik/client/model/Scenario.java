package com.wordnik.client.model;

import com.wordnik.client.model.Integer;
public class Scenario {
  /* The scenario identifier */
  private Integer scenarioId = null;
  /* The scenario label */
  private String label = null;
  /* The scenario type label */
  private String typeLabel = null;
  //public enum typeLabelEnum { onDemand, scheduled, onEvent, simulation, }; 
  /* The enable state of the scenario */
  private Boolean enabled = null;
  public Integer getScenarioId() {
    return scenarioId;
  }
  public void setScenarioId(Integer scenarioId) {
    this.scenarioId = scenarioId;
  }

  public String getLabel() {
    return label;
  }
  public void setLabel(String label) {
    this.label = label;
  }

  public String getTypeLabel() {
    return typeLabel;
  }
  public void setTypeLabel(String typeLabel) {
    this.typeLabel = typeLabel;
  }

  public Boolean getEnabled() {
    return enabled;
  }
  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Scenario {\n");
    sb.append("  scenarioId: ").append(scenarioId).append("\n");
    sb.append("  label: ").append(label).append("\n");
    sb.append("  typeLabel: ").append(typeLabel).append("\n");
    sb.append("  enabled: ").append(enabled).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

