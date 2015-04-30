require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('Vehicle user path', {:type => :feature}) do
	it('will take the user to enter in new vehicle information and see results') do
	visit('/')
	click_link("Add a New Dealership")
	fill_in('name',  :with => "Bob's Cars O'Rama")
	click_button("Add to List")
	click_link('Back')
	click_link('See Our (not drug) Dealers')
	click_link("Bob's Cars O'Rama")
	click_link('Add a New Vehicle')
	fill_in('make', :with  => "Ford")
	fill_in('model', :with => "Prius")
	fill_in('year', :with => 2014)
	click_button("Add Vehicle")
	expect(page).to have_content('Our list of available vehicles')
	end
end
