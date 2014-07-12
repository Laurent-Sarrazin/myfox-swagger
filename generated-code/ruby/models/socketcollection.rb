class SocketCollection
  attr_accessor :items

  # :internal => :external
  def self.attribute_map
    {
      :items => :items

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"items"]
      if (value = attributes["items"]).is_a?(Array)
          @items = value.map{ |v| Socket.new(v) }end
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

