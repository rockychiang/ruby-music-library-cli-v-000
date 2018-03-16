class Song
  include Concerns::InstanceMethod
  extend Concerns::ClassMethod
  attr_accessor :name, :artist, :genre
  attr_reader
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist if artist != nil
    self.genre = genre
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs << self
  end
  
end