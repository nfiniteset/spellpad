require 'spec_helper'

feature "Character creation" do

  given!(:character_class) { FactoryGirl.create :character_class, name: 'Wizard' }

  scenario "creating a character" do
    sign_in
    open_characters_menu
    click_on 'New Character'

    expect(current_path).to eq new_character_path
    fill_in 'Name', with: 'Sally Ride'
    click_on 'Create'

    expect(current_path).to eq character_path(Character.last)
    expect(page).to have_content 'Sally Ride'
  end
end
