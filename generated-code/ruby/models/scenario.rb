class Scenario
  attr_accessor :scenario_id, :label, :type_label, :enabled

  # :internal => :external
  def self.attribute_map
    {
      :scenario_id => :scenarioId,
      :label => :label,
      :type_label => :typeLabel,
      :enabled => :enabled

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"scenario_id"]
      @scenario_id = attributes["scenarioId"]
    end
    if self.class.attribute_map[:"label"]
      @label = attributes["label"]
    end
    if self.class.attribute_map[:"type_label"]
      @type_label = attributes["typeLabel"]
    end
    if self.class.attribute_map[:"enabled"]
      @enabled = attributes["enabled"]
    end
    

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

