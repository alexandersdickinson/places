require('rspec')
require('places')

describe(Places) do
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
  end
end