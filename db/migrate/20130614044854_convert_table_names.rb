class ConvertTableNames < ActiveRecord::Migration
  def change
    rename_table :class, :character_classes
    rename_table :class_table, :class_tables
    rename_table :domain, :domains
    rename_table :feat, :feats
    rename_table :item, :items
    rename_table :monster, :monsters
    rename_table :power, :powers
    rename_table :skill, :skills
    rename_table :spell, :spells

    rename_column :character_classes, :type, :character_class_type
    rename_column :feats, :type, :feat_type
    rename_column :monsters, :type, :monster_type
  end
end
