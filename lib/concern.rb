module Concerns
  module ClassMethod
    
    def destroy_all
      self.all.clear
    end

    def self.create(name)
      Song.new(name).tap do |song|
        song.save
      end
    end

    
  end
  
  module InstanceMethod
    
    def initialize(name)
      self.name = name
    end
  
    def save
      @@all << self
    end

  end
  
  module Findable
    
  end
end