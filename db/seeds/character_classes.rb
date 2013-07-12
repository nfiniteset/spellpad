
character_classes = YAML.load_file("#{Rails.root}/db/seeds/character_classes.yml")

character_classes.each do |attrs|
  cc = CharacterClass.where(name: attrs['name']).first_or_initialize do |cc|
    cc.name = attrs['name']
    cc.save!
  end
end