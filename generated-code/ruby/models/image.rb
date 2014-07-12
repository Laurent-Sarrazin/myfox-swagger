class Image
  attr_accessor :image_id, :camera_id, :camera_label, :height, :width, :created_at, :file_u_r_l

  # :internal => :external
  def self.attribute_map
    {
      :image_id => :imageId,
      :camera_id => :cameraId,
      :camera_label => :cameraLabel,
      :height => :height,
      :width => :width,
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
    if self.class.attribute_map[:"camera_id"]
      @camera_id = attributes["cameraId"]
    end
    if self.class.attribute_map[:"camera_label"]
      @camera_label = attributes["cameraLabel"]
    end
    if self.class.attribute_map[:"height"]
      @height = attributes["height"]
    end
    if self.class.attribute_map[:"width"]
      @width = attributes["width"]
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

