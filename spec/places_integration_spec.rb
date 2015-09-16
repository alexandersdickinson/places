require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path') do
  it('lists the places a person has been to', {:type => :feature}) do
    visit('/')
    fill_in('name', :with => 'Hawaii')
    fill_in('description', :with => 'This is a description.')
    click_button('Add')
    click_link('Back')
    fill_in('name', :with => 'Sarajevo')
    fill_in('description', :with => 'This is another description.')
    click_button('Add')
    click_link('Back')
    expect(page).to(have_content('Hawaii: This is a description. Sarajevo: This is another description.'))
  end
end