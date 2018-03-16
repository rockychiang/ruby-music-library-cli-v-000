class Genre
  include Concerns::InstanceMethod
  extend Concerns::ClassMethod
  attr_accessor :name, :songs
  attr_reader
  @@all = []
  
  def self.all
    @@all
  end
    
  def initialize(name)
    super
    @songs = []
  end
  
  def genres
    self.songs.map{|song| song.genre}.uniq
  end
  
end