class Snapshot
  attr_accessor :image_id, :created_at, :file_u_r_l

  # :internal => :external
  def self.attribute_map
    {
      :image_id => :imageId,
      :created_at => :createdAt,
      :file_u_r_l => :fileURL

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"image_id"]
      @image_id = attributes["imageId"]
    end
    if self.class.attribute_map[:"created_at"]
      @created_at = attributes["createdAt"]
    end
    if self.class.attribute_map[:"file_u_r_l"]
      @file_u_r_l = attributes["fileURL"]
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

