class Song
  include Concerns::InstanceMethod
  extend Concerns::ClassMethod
  attr_accessor :name
  attr_reader
  @@all = []
  
    def all
      @@all
    end
  
end