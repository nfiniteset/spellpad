# == Schema Information
#
# Table name: domains
#
#  id             :integer          not null, primary key
#  name           :string           not null
#  granted_powers :text
#  spell_1        :string
#  spell_2        :string
#  spell_3        :string
#  spell_4        :string
#  spell_5        :string
#  spell_6        :string
#  spell_7        :string
#  spell_8        :string
#  spell_9        :string
#  full_text      :text
#  reference      :string
#

class Domain < ActiveRecord::Base

end
