require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('coin_combination path', {:type => :feature}) do
  it('calculates the coin combinations for a given amount of change') do
    visit('/')
    fill_in('word', :with => 'silent')
    fill_in('anagram1', :with => 'listen')
    fill_in('anagram2', :with => 'tensil')
    fill_in('anagram3', :with => 'tenser')
    click_button('Go')
    expect(page).to have_content("listen is an anagram of silent")
  end
end
