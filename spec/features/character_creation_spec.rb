require 'spec_helper'

feature "Character creation" do

  scenario "creating a character" do
    visit root_path
    click_on 'New Character'

    expect(current_path).to eq new_character_path
    fill_in 'Name', with: 'Sally Ride'
    click_on 'Create'

    expect(current_path).to eq characters_path
    expect(page).to have_content 'Sally Ride'
  end
end
