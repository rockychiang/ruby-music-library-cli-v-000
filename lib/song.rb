class Song
  include Concerns::InstanceMethod
  extend Concerns::ClassMethod, Concerns::Findable
  attr_accessor :name, :artist, :genre
  attr_reader
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist if artist != nil
    self.genre = genre if genre != nil
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs << self if !genre.songs.include?(self)
  end
  
  def self.new_from_filename(file)
    self.new(file.split(" - ")[1])
  end
  
end