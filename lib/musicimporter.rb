class MusicImporter
  attr_accessor :files, :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(path).map{|f| f.include?(".mp3")}
  end

end