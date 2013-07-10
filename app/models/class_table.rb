# == Schema Information
#
# Table name: class_tables
#
#  id                    :integer          not null, primary key
#  name                  :string           not null
#  level                 :string
#  base_attack_bonus     :string
#  fort_save             :string
#  ref_save              :string
#  will_save             :string
#  caster_level          :string
#  points_per_day        :string
#  ac_bonus              :string
#  flurry_of_blows       :string
#  bonus_spells          :string
#  powers_known          :string
#  unarmored_speed_bonus :string
#  unarmed_damage        :string
#  power_level           :string
#  special               :string
#  slots_0               :string
#  slots_1               :string
#  slots_2               :string
#  slots_3               :string
#  slots_4               :string
#  slots_5               :string
#  slots_6               :string
#  slots_7               :string
#  slots_8               :string
#  slots_9               :string
#  spells_known_0        :string
#  spells_known_1        :string
#  spells_known_2        :string
#  spells_known_3        :string
#  spells_known_4        :string
#  spells_known_5        :string
#  spells_known_6        :string
#  spells_known_7        :string
#  spells_known_8        :string
#  spells_known_9        :string
#  reference             :string
#

class ClassTable < ActiveRecord::Base

end
