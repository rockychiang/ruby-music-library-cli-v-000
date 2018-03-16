class Song
  include Concerns::InstanceMethod
  attr_accessor
  attr_reader
  
  def initialize(name)
    @name = name
  end
end