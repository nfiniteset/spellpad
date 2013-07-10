class CreateSpellDomainsAndSpellLevels < ActiveRecord::Migration
  def up
    create_table :spell_domains do |t|
      t.string :name
    end

    create_table :spell_levels do |t|
      t.belongs_to :spell
      t.belongs_to :spell_domain
      t.integer :level
    end

    Spell.all.each do |spell|
      migrate_level_to_domains(spell)
    end
  end

  def down
    drop_table :domain_levels
    drop_table :domain_levels_spells
  end
end

def migrate_level_to_domains(spell)
  build_spell_levels(spell)
  spell.save!
end

def build_spell_levels(spell)
  levels = spell.level.split(/,/)
  domains = levels.map! do |l|
    if l.match('/')
      level = l.split(' ').last
      domains = l.split('/')
      domains.map do |d|
        name = d.split(' ').first
        build_spell_level(spell, name, level)
      end
    else
      name, level = l.split(' ')
      build_spell_level(spell, name, level)
    end
  end
  domains.flatten
end

def build_spell_level(spell, name, level)
  domain = SpellDomain.where(name: name).first_or_initialize
  spell.spell_levels.new(spell_domain: domain, level: level)
end