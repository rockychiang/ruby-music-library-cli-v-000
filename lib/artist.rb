class Artist
  include Concerns::InstanceMethod
  extend Concerns::ClassMethod
  attr_accessor :name, :songs
  attr_reader
  @@all = []
  
  def initialize(name)
    super
    @songs = []
  end
  
  def self.all
    @@all
  end
  
end