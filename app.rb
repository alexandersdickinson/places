require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('lib/**/*.rb')

get('/') do
  @places = Places.all()
  @header = "I\'ve Been to These Places"
  erb(:form)
end

get('/success') do
  @header = "Success!"
  place = Places.new(params.fetch('name'), params.fetch('description'))
  place.save()
  erb(:success)
end

get('/edited') do
  @header = "Edited!"
  Places.edit(params.fetch('entry number').to_i() - 1, params.fetch('name'), params.fetch('description'))
  erb(:success)
end

get('/edit') do
  @header = 'Edit'
  erb(:edit)
end