class Site
  attr_accessor :site_id, :label, :brand, :timezone, :_a_x_a

  # :internal => :external
  def self.attribute_map
    {
      :site_id => :siteId,
      :label => :label,
      :brand => :brand,
      :timezone => :timezone,
      :_a_x_a => :AXA

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"site_id"]
      @site_id = attributes["siteId"]
    end
    if self.class.attribute_map[:"label"]
      @label = attributes["label"]
    end
    if self.class.attribute_map[:"brand"]
      @brand = attributes["brand"]
    end
    if self.class.attribute_map[:"timezone"]
      @timezone = attributes["timezone"]
    end
    if self.class.attribute_map[:"_a_x_a"]
      @_a_x_a = attributes["AXA"]
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

