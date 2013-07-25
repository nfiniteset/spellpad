class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :characters
  belongs_to :current_character, class_name: 'Character'

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def current_character
    @current_character = read_attribute(:current_character)
    @current_character ||= characters.first
  end
end
