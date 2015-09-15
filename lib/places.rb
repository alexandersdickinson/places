class Places
  def initialize(name, description)
    @name = name
    @description = description
  end
  
  def name()
    @name
  end
  
  def description()
    @description
  end
  
  def self.all()
    []
  end
end