class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
