# == Schema Information
#
# Table name: skills
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  subtype     :text
#  key_ability :string
#  psionic     :string
#  trained     :string
#  armor_check :string
#  description :text
#  skill_check :text
#  action      :text
#  try_again   :text
#  special     :text
#  restriction :text
#  synergy     :text
#  epic_use    :text
#  untrained   :text
#  full_text   :text
#  reference   :string
#

class Skill < ActiveRecord::Base

end
