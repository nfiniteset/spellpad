class SpellImporter
  def initialize(attrs)
    @attrs = attrs
  end

  def import
    levels = @attrs.delete(:level)
    spell = Spell.where(name: @attrs[:name]).first_or_initialize do |s|
      s.update_attributes(@attrs)
    end
    import_spell_levels(spell, levels)
  end

  def import_spell_levels(spell, levels)
    SpellLevelImporter.new(spell, levels).import
  end
end