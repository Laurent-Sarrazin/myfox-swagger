class TemperatureRecord
  attr_accessor :device_id, :celsius, :recorded_at

  # :internal => :external
  def self.attribute_map
    {
      :device_id => :deviceId,
      :celsius => :celsius,
      :recorded_at => :recordedAt

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"device_id"]
      @device_id = attributes["deviceId"]
    end
    if self.class.attribute_map[:"celsius"]
      @celsius = attributes["celsius"]
    end
    if self.class.attribute_map[:"recorded_at"]
      @recorded_at = attributes["recordedAt"]
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

