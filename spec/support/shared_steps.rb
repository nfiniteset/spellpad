module SharedSteps
  def sign_in(user = nil)
    user ||= FactoryGirl.create(:user)
    visit root_path
    fill_in 'email', with: user.email
    fill_in 'password', with: 'password'
    click_on 'Sign in'
  end

  def open_characters_menu
    find('.characters-menu-toggle').click
  end

  def select_character(character_name)
    open_characters_menu
    within '.characters-menu-options' do
      click_on character_name
    end
  end
end

RSpec.configure do |config|
  config.include(SharedSteps, :type => :feature)
end