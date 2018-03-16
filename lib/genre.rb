class Genre
  include Concerns::InstanceMethod
  extend Concerns::ClassMethod
  attr_accessor :name
  attr_reader
  @@all = []
  
  def self.all
    @@all
  end
    
  def initialize(name)
    super
    @songs = []
  end
  
end