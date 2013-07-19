require 'spec_helper'

feature "Learning spells" do

  given(:wizard_class) { FactoryGirl.create :character_class, name: 'Wizard' }
  given(:wizard_spell) { FactoryGirl.create :spell, name: 'Arglebargle'}
  given!(:wizard_spell_level) do
    FactoryGirl.create :spell_level, spell_class_id: wizard_class.id, 
                                     spell_class_type: wizard_class.class.name, 
                                     spell: wizard_spell, 
                                     level: 3
  end
  given!(:character) do
    FactoryGirl.create :character, name: 'Sophie', 
                                   character_class: wizard_class, 
                                   known_spells: [wizard_spell]
  end

  scenario "marks spells known by a character" do
    visit root_path
    click_on 'Sophie'
    click_on 'All Spells'
    expect(find_link(wizard_spell.name)).to have_css('.known')
  end
end
