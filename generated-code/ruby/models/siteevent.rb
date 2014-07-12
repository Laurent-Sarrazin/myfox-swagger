class SiteEvent
  attr_accessor :log_id, :label, :type, :created_at

  # :internal => :external
  def self.attribute_map
    {
      :log_id => :logId,
      :label => :label,
      :type => :type,
      :created_at => :createdAt

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"log_id"]
      @log_id = attributes["logId"]
    end
    if self.class.attribute_map[:"label"]
      @label = attributes["label"]
    end
    if self.class.attribute_map[:"type"]
      @type = attributes["type"]
    end
    if self.class.attribute_map[:"created_at"]
      @created_at = attributes["createdAt"]
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

