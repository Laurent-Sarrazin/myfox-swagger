class GroupElectric
  attr_accessor :group_id, :label, :type, :devices

  # :internal => :external
  def self.attribute_map
    {
      :group_id => :groupId,
      :label => :label,
      :type => :type,
      :devices => :devices

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"group_id"]
      @group_id = attributes["groupId"]
    end
    if self.class.attribute_map[:"label"]
      @label = attributes["label"]
    end
    if self.class.attribute_map[:"type"]
      @type = attributes["type"]
    end
    if self.class.attribute_map[:"devices"]
      if (value = attributes["devices"]).is_a?(Array)
          @devices = value.map{ |v| Device.new(v) }end
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

