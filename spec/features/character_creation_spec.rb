require 'spec_helper'

feature "Character creation", js: true do

  given(:user) { FactoryGirl.create :user }
  given(:character_class) { FactoryGirl.create :character_class, name: 'Wizard' }
  given!(:character) { FactoryGirl.create :character, user: user, character_class: character_class }

  scenario "creating the first character" do
    sign_in FactoryGirl.create :user

    expect(current_path).to eq new_character_path
    fill_in 'Name', with: 'Sally Ride'
    click_on 'Create Character'

    expect(current_path).to eq character_path(Character.last)
    expect(page).to have_content 'Sally Ride'
  end

  scenario "creating a second character" do
    sign_in user
    open_characters_menu
    click_on 'New Character'

    expect(current_path).to eq new_character_path
    fill_in 'Name', with: 'Rodzilla'
    click_on 'Create Character'

    expect(current_path).to eq character_path(Character.last)
    expect(page).to have_content 'Rodzilla'
  end
end
