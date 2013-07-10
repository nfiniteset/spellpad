# == Schema Information
#
# Table name: spell_levels
#
#  id              :integer          not null, primary key
#  spell_id        :integer
#  spell_domain_id :integer
#  level           :integer
#

class SpellLevel < ActiveRecord::Base
  belongs_to :spell_domain
  belongs_to :spell
end
