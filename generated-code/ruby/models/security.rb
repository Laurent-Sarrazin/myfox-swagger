class Security
  attr_accessor :status, :status_label

  # :internal => :external
  def self.attribute_map
    {
      :status => :status,
      :status_label => :statusLabel

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"status"]
      @status = attributes["status"]
    end
    if self.class.attribute_map[:"status_label"]
      @status_label = attributes["statusLabel"]
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

