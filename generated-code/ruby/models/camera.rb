class Camera
  attr_accessor :device_id, :label, :resolution_height, :resolution_width, :model_id, :model_label

  # :internal => :external
  def self.attribute_map
    {
      :device_id => :deviceId,
      :label => :label,
      :resolution_height => :resolutionHeight,
      :resolution_width => :resolutionWidth,
      :model_id => :modelId,
      :model_label => :modelLabel

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"device_id"]
      @device_id = attributes["deviceId"]
    end
    if self.class.attribute_map[:"label"]
      @label = attributes["label"]
    end
    if self.class.attribute_map[:"resolution_height"]
      @resolution_height = attributes["resolutionHeight"]
    end
    if self.class.attribute_map[:"resolution_width"]
      @resolution_width = attributes["resolutionWidth"]
    end
    if self.class.attribute_map[:"model_id"]
      @model_id = attributes["modelId"]
    end
    if self.class.attribute_map[:"model_label"]
      @model_label = attributes["modelLabel"]
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

