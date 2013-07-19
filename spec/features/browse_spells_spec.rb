require 'spec_helper'

feature "Browse spells" do

  given(:wizard_class) { FactoryGirl.create :character_class, name: 'Wizard' }
  given(:wizard_spell) { FactoryGirl.create :spell, name: 'Arglebargle'}
  given!(:wizard_spell_level) { FactoryGirl.create :spell_level, spell_class_id: wizard_class.id, spell_class_type: wizard_class.class.name, spell: wizard_spell, level: 3 }
  given!(:character) { FactoryGirl.create :character, name: 'Sophie', character_class: wizard_class }

  scenario "shows spells a character can learn" do
    visit root_path
    click_on 'Sophie'

    expect(current_path).to eq character_path(character)
    expect(page).to have_content 'Sophie'
    expect(page).to have_content 'Wizard'

    click_on 'All Spells'
    expect(current_path).to eq character_class_spells_path(character)
    expect(page).to have_content(wizard_spell_level.level)
    expect(page).to have_content(wizard_spell.name)

    click_link wizard_spell.name
    expect(page).to have_content(wizard_spell.name)
  end
end
