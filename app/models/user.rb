# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  email                        :string(255)      not null
#  crypted_password             :string(255)
#  salt                         :string(255)
#  created_at                   :datetime
#  updated_at                   :datetime
#  remember_me_token            :string(255)
#  remember_me_token_expires_at :datetime
#  current_character_id         :integer
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :characters
  belongs_to :current_character, class_name: 'Character'

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def current_character
    current_char_relation = characters.where(id: current_character_id)
    if current_char_relation.present?
      current_char_relation.first
    elsif characters.present?
      characters.first
    end
  end
end
