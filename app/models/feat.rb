# == Schema Information
#
# Table name: feats
#
#  id           :integer          not null, primary key
#  name         :string(255)      not null
#  feat_type    :string(255)
#  multiple     :string(255)
#  stack        :string(255)
#  choice       :string(255)
#  prerequisite :text
#  benefit      :text
#  normal       :text
#  special      :text
#  full_text    :text
#  reference    :string(255)
#

class Feat < ActiveRecord::Base

end
