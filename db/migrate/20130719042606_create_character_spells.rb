class CreateCharacterSpells < ActiveRecord::Migration
  def change
    create_table :character_spells do |t|
      t.references :character, nil: false
      t.references :spell, nil: false
      t.timestamps
    end
  end
end
