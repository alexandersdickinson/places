class Places
  @@places = []
  
  def initialize(name, description)
    @name = name
    @description = description
  end
  
  def name()
    @name
  end
  
  def name=(name)
    @name = name
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
  
  def self.delete()
    @@places = []
  end
  
  def self.edit(index, name, description)
    @@places[index].name=(name)
    @@places[index].description=(description) 
  end
end