require 'capybara/dsl'
require 'rspec'

class EcomMyAccount
  include Capybara::DSL

  def visit_register
    click_link('Register')
  end

  def enter_username username
    fill_in('user_login', with: username)
  end

  def enter_email email
    fill_in('user_email', with: email)
  end

  def click_register
    # click_link('#wp-submit')
    click_button('Register')
  end
end
