class Song
  include Concerns::InstanceMethod
  extend Concerns::ClassMethod
  attr_accessor :name
  attr_reader :artist
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    super
    self.artist = artist
  end
  
end