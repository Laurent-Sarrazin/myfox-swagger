class VideoPlayHLS
  attr_accessor :video_id, :location, :protocol

  # :internal => :external
  def self.attribute_map
    {
      :video_id => :videoId,
      :location => :location,
      :protocol => :protocol

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"video_id"]
      @video_id = attributes["videoId"]
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

