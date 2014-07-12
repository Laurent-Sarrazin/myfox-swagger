class DeviceWithStateState
  attr_accessor :device_id, :state_label

  # :internal => :external
  def self.attribute_map
    {
      :device_id => :deviceId,
      :state_label => :stateLabel

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"device_id"]
      @device_id = attributes["deviceId"]
    end
    if self.class.attribute_map[:"state_label"]
      @state_label = attributes["stateLabel"]
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

