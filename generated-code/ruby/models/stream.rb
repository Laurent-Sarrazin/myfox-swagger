class Stream
  attr_accessor :_g_u_i_d, :location, :protocol

  # :internal => :external
  def self.attribute_map
    {
      :_g_u_i_d => :GUID,
      :location => :location,
      :protocol => :protocol

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"_g_u_i_d"]
      @_g_u_i_d = attributes["GUID"]
    end
    if self.class.attribute_map[:"location"]
      @location = attributes["location"]
    end
    if self.class.attribute_map[:"protocol"]
      @protocol = attributes["protocol"]
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

