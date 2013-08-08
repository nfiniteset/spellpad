require 'spec_helper'

feature "Browse spells" do
  given(:user) { FactoryGirl.create :user }
  given(:wizard_class) { FactoryGirl.create :character_class, name: 'Wizard' }
  given(:spell_1) { FactoryGirl.create :spell, name: 'Arglebargle', short_description: 'Sparkles' }
  given!(:spell_level_1) { FactoryGirl.create :spell_level,
                                  spell_class_id: wizard_class.id,
                                  spell_class_type: wizard_class.class.name,
                                  spell: spell_1,
                                  level: 1 }
  given(:spell_2) { FactoryGirl.create :spell, name: 'Abra Kadabra', short_description: 'Spooky' }
  given!(:spell_level_2) { FactoryGirl.create :spell_level,
                                  spell_class_id: wizard_class.id,
                                  spell_class_type: wizard_class.class.name,
                                  spell: spell_2,
                                  level: 2 }
  given!(:character) { FactoryGirl.create :character, name: 'Sophie', character_class: wizard_class, user: user }

  scenario "shows spells a character can learn", js: true do
    sign_in user
    select_character character.name

    expect(current_path).to eq character_path(character)
    expect(page).to have_content character.name
    # expect(page).to have_content character.character_class.name

    # expect(page).to have_content(spell_level_1.level)
    expect(page).to have_content(spell_1.name)
    # expect(page).to have_content(spell_level_2.level)
    expect(page).to have_content(spell_2.name)

    click_link spell_1.short_description
    expect(page).to have_content(spell_1.name)
    expect(page).to have_content(spell_1.school)
  end
end
