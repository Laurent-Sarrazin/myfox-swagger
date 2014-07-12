class Recording
  attr_accessor :created_at, :video_id

  # :internal => :external
  def self.attribute_map
    {
      :created_at => :createdAt,
      :video_id => :videoId

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"created_at"]
      @created_at = attributes["createdAt"]
    end
    if self.class.attribute_map[:"video_id"]
      @video_id = attributes["videoId"]
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

