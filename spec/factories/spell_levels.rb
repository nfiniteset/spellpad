# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :spell_level do
    spell_class_id 10
    spell_class_type 'ClericDomain'
    spell
    level 10
  end
end
