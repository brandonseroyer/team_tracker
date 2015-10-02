# require('capybara/rspec')
# require('./app')
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
# describe('show the add team path', {:type => :feature}) do
#   it('adds a word to a list') do
#     visit('/')
#     click_link('Add New Team')
#     fill_in('Team Name', :with => 'Blazers')
#     click_button('Submit')
#     expect(page).to have_content('Blazers')
#   end
# end
