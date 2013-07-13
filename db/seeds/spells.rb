files = Dir.glob("#{Rails.root}/db/seeds/spells/*")

file = files.first
files.each do |f|
  attrs = Psych.load_file(f)
  SpellImporter.new(attrs).import
end