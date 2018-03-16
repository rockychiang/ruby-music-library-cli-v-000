class MusicImporter
  attr_accessor :files, :path
  
  def initialize(path)
    @path = path
    @files = Dir.entries(path)
  end


  
end