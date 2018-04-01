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
    click_button('Register')
  end

  def get_password
    puts find_field('pass1-text').value
  end

  def click_reset_password
    click_button('Reset Password')
  end

  def return_to_login
    click_link('Log in')
  end

  def get_url
    current_url
  end
end
