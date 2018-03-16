module Concerns
  module ClassMethod
    
    def destroy_all
      self.all.clear
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