class MusicImporter
  attr_accessor :files
  
  def initialize(path)
    @files = Dir.entries(path)
  end


  
end