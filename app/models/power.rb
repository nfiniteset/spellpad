# == Schema Information
#
# Table name: powers
#
#  id                :integer          not null, primary key
#  name              :string           not null
#  discipline        :string
#  subdiscipline     :string
#  descriptor        :string
#  level             :string
#  display           :string
#  manifesting_time  :string
#  range             :string
#  target            :string
#  area              :string
#  effect            :string
#  duration          :string
#  saving_throw      :string
#  power_points      :string
#  power_resistance  :string
#  short_description :text
#  xp_cost           :text
#  description       :text
#  augment           :text
#  full_text         :text
#  reference         :string
#

class Power < ActiveRecord::Base

end
