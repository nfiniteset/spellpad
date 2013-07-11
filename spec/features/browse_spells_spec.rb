require 'spec_helper'

feature "Browse spells" do

  given(:char_class) { FactoryGirl.create :character_class, name: 'Wizard' }
  given!(:character) { FactoryGirl.create :character, name: 'Sophie', character_class: char_class }

  scenario "shows spells a character can learn" do
    visit root_path
    click_on 'Sophie'

    expect(current_path).to eq character_path(character)
    expect(page).to have_content 'Sophie'
    expect(page).to have_content 'Wizard'

    click_on 'All Spells'
    expect(current_path).to eq character_spells_path(character)
  end
end
