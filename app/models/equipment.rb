# == Schema Information
#
# Table name: equipment
#
#  id                          :integer          not null, primary key
#  name                        :string           not null
#  family                      :string
#  category                    :string
#  subcategory                 :string
#  cost                        :string
#  dmg_s                       :string
#  armor_shield_bonus          :string
#  maximum_dex_bonus           :string
#  dmg_m                       :string
#  weight                      :string
#  critical                    :string
#  armor_check_penalty         :string
#  arcane_spell_failure_chance :string
#  range_increment             :string
#  speed_30                    :string
#  type                        :string
#  speed_20                    :string
#  full_text                   :text
#  reference                   :string
#

class Equipment < ActiveRecord::Base

end
