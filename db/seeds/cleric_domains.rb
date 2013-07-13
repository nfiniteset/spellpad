
cleric_domains = YAML.load_file("#{Rails.root}/db/seeds/cleric_domains.yml")

cleric_domains.each do |attrs|
  cd = ClericDomain.where(name: attrs['name']).first_or_initialize do |cd|
    cd.name = attrs['name']
    cd.save!
  end
end