class Video
  attr_accessor :video_id, :camera_id, :camera_label, :duration, :height, :width, :is_recording, :created_at, :file_u_r_l, :play_u_r_l, :preview_u_r_l

  # :internal => :external
  def self.attribute_map
    {
      :video_id => :videoId,
      :camera_id => :cameraId,
      :camera_label => :cameraLabel,
      :duration => :duration,
      :height => :height,
      :width => :width,
      :is_recording => :isRecording,
      :created_at => :createdAt,
      :file_u_r_l => :fileURL,
      :play_u_r_l => :playURL,
      :preview_u_r_l => :previewURL

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"video_id"]
      @video_id = attributes["videoId"]
    end
    if self.class.attribute_map[:"camera_id"]
      @camera_id = attributes["cameraId"]
    end
    if self.class.attribute_map[:"camera_label"]
      @camera_label = attributes["cameraLabel"]
    end
    if self.class.attribute_map[:"duration"]
      @duration = attributes["duration"]
    end
    if self.class.attribute_map[:"height"]
      @height = attributes["height"]
    end
    if self.class.attribute_map[:"width"]
      @width = attributes["width"]
    end
    if self.class.attribute_map[:"is_recording"]
      @is_recording = attributes["isRecording"]
    end
    if self.class.attribute_map[:"created_at"]
      @created_at = attributes["createdAt"]
    end
    if self.class.attribute_map[:"file_u_r_l"]
      @file_u_r_l = attributes["fileURL"]
    end
    if self.class.attribute_map[:"play_u_r_l"]
      @play_u_r_l = attributes["playURL"]
    end
    if self.class.attribute_map[:"preview_u_r_l"]
      @preview_u_r_l = attributes["previewURL"]
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

