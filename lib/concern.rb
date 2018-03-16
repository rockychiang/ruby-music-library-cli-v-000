module Concerns
  module ClassMethod
    
    def all
      @@all
    end
    
  end
  
  module InstanceMethod
    
    def initialize(name)
      self.name = name
    end
  
  end
  
  module Findable
    
  end
end