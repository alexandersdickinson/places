require('rspec')
require('places')

describe(Places) do
  before() do
    Places.delete()
  end
  
  describe('#description') do
    it('returns the place\'s description') do
      test_place = Places.new('Hawaii', 'This place has a lot of mountains.')
      expect(test_place.description()).to(eq('This place has a lot of mountains.'))
    end
  end
  
  describe('#name') do
    it('returns the name of the place') do
      test_place = Places.new('Hawaii', 'This part doesn\'t really matter.')
      expect(test_place.name()).to(eq('Hawaii'))
    end
  end
  
  describe('.all') do
    it('starts as an empty array.') do
      expect(Places.all()).to(eq([]))
    end
    
    it('returns all the places I have been to') do
    end
  end
  
  describe('#to_s') do
    it('returns the name of the place, followed by its description') do
      test_place = Places.new('Hawaii', 'Hey, this is just a test.')
      expect(test_place.to_s()).to(eq('Hawaii: Hey, this is just a test.'))
    end
  end
  
  describe('#save') do
    it('adds a place to the list of places that I have been to') do
      test_place = Places.new('Hawaii', 'A cool description.')
      test_place.save()
      expect(Places.all().include?(test_place)).to(eq(true))
    end
  end
  
  describe('.delete') do
    it('deletes all entries from the class') do
      test_place = Places.new("Hawaii", "This place has volcanoes.")
      test_place.save()
      Places.delete()
      expect(Places.all()).to(eq([]))
    end
  end
  
  describe('.edit') do
    it('edits the contents of one of the places entered by the user') do
      test_place = Places.new("Hawaii", "This is a description.")
      test_place.save()
      Places.edit(0, "Sarajevo", "This is a different description.")
      places = Places.all()
      expect(places[0].to_s()).to(eq("Sarajevo: This is a different description."))
    end
  end
  
  describe('#name=') do
    it('sets the name of a place') do
      test_place = Places.new("", "This place does not have a name.")
      test_place.name=("Hawaii")
      expect(test_place.name()).to(eq("Hawaii"))
    end
  end
  
  describe('#description=') do
    it('sets the description of a place') do
      test_place = Places.new("Hawaii", "")
      test_place.description=("Now I have a description. What a relief.")
      expect(test_place.description()).to(eq("Now I have a description. What a relief."))
    end
  end
end