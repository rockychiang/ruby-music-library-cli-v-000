module Concerns
  module ClassMethod
    def destroy_all
      self.all.clear
    end

    def create(name)
      self.new(name).tap do |arg|
        arg.save
      end
    end
  end
  
  module InstanceMethod
    def initialize(name)
      self.name = name
    end
  
    def save
      self.class.all << self
    end
  end
  
  module Findable
    def find_by_name(name)
      self.all.find{|n| n.name == name}
    end
    
    def find_or_create_by_name(name)
      if self.find_by_name(name)
        self.find_by_name(name)
      else
        
      end
    end
  end
end