# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
# require 'spec_helper'

feature 'register name' do
  scenario 'register users name' do
    visit ('/')
    fill_in :name, with: 'Max'
    click_button 'Submit'
    expect(page).to have_content 'Max'
  end
end
