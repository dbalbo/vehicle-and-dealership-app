require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("Dealership user path", {:type => :feature}) do
	it('will take the user to enter in new dealership information and see results')do
	visit('/')
	click_link('Add a New Dealership')
	fill_in('name', :with => "Ugly Cars Junkyard")
	click_button('Add to List')
	expect(page).to have_content(' New Dealership Successfully Added!')
		end
	end
