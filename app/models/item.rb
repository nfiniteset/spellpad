# == Schema Information
#
# Table name: items
#
#  id               :integer          not null, primary key
#  name             :string           not null
#  category         :string
#  subcategory      :string
#  special_ability  :string
#  aura             :string
#  caster_level     :string
#  price            :string
#  manifester_level :string
#  prereq           :text
#  cost             :string
#  weight           :string
#  full_text        :text
#  reference        :string
#

class Item < ActiveRecord::Base

end
