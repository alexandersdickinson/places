class Places
  @@places = []
  
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
    @@places
  end
  
  def to_s()
    "#{@name}: #{@description}"
  end
  
  def save()
    @@places.push(self)
  end
end