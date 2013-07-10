# == Schema Information
#
# Table name: monsters
#
#  id                :integer          not null, primary key
#  family            :string(255)
#  name              :string(255)      not null
#  altname           :string(255)
#  size              :string(255)
#  monster_type      :string(255)
#  descriptor        :string(255)
#  hit_dice          :string(255)
#  initiative        :string(255)
#  speed             :string(255)
#  armor_class       :string(255)
#  base_attack       :string(255)
#  grapple           :string(255)
#  attack            :string(255)
#  full_attack       :text
#  space             :string(255)
#  reach             :string(255)
#  special_attacks   :string(255)
#  special_qualities :text
#  saves             :string(255)
#  abilities         :string(255)
#  skills            :text
#  bonus_feats       :string(255)
#  feats             :text
#  epic_feats        :text
#  environment       :string(255)
#  organization      :text
#  challenge_rating  :string(255)
#  treasure          :string(255)
#  alignment         :string(255)
#  advancement       :string(255)
#  level_adjustment  :string(255)
#  special_abilities :text
#  stat_block        :text
#  full_text         :text
#  reference         :string(255)
#

class Monster < ActiveRecord::Base

end
