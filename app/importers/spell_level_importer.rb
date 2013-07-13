class SpellLevelImporter
  def initialize(spell, attrs)
    @spell = spell
    @attrs = attrs
  end

  def import
    @attrs.each do |spell_class_name, level|
      import_one(@spell, spell_class_name, level)
    end
  end

  def import_one(spell, spell_class_name, level)
    spell_class = CharacterClass.find_by_name(spell_class_name)
    spell_class ||= ClericDomain.find_by_name(spell_class_name)
    raise "SpellClass #{spell_class_name} can not be found." if spell_class.nil?

    spell.spell_levels.where(
      spell_class_type: spell_class.class.name,
      spell_class_id: spell_class.id,
      level: level
    ).first_or_create()
  end
end