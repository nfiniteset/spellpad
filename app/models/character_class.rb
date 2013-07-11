# == Schema Information
#
# Table name: character_classes
#
#  id                     :integer          not null, primary key
#  name                   :string(255)      not null
#  character_class_type   :string(255)
#  alignment              :string(255)
#  hit_die                :string(255)
#  class_skills           :text
#  skill_points           :string(255)
#  skill_points_ability   :string(255)
#  spell_stat             :string(255)
#  proficiencies          :text
#  spell_type             :string(255)
#  epic_feat_base_level   :string(255)
#  epic_feat_interval     :string(255)
#  epic_feat_list         :text
#  epic_full_text         :text
#  req_race               :string(255)
#  req_weapon_proficiency :string(255)
#  req_base_attack_bonus  :string(255)
#  req_skill              :string(255)
#  req_feat               :string(255)
#  req_spells             :string(255)
#  req_languages          :string(255)
#  req_psionics           :string(255)
#  req_epic_feat          :string(255)
#  req_special            :string(255)
#  spell_list_1           :text
#  spell_list_2           :string(255)
#  spell_list_3           :string(255)
#  spell_list_4           :string(255)
#  spell_list_5           :string(255)
#  full_text              :text
#  reference              :string(255)
#

class CharacterClass < ActiveRecord::Base
  def self.find_by_name(name)
    where(name: name).first
  end
end
