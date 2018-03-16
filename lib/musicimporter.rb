class MusicImporter
  attr_accessor :files, :path
  
  def initialize(path)
    @files = Dir.entries(path)
  end


  
end