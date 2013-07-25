class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.add_column :character_class, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
