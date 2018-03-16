class Song
  include Concerns::InstanceMethod
  extend Concerns::ClassMethod
  attr_accessor :name, :artist
  attr_reader
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name, artist=nil)
    @name = name
    @artist = artist
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
end