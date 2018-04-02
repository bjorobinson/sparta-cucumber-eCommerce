require 'capybara/dsl'
require 'rspec'

class TenMinMail
  include Capybara::DSL

  SITE_URL = 'https://10minutemail.net/'

  def visit_site
    visit(SITE_URL)
  end

  def see_confirm_email
    find('a', text: '[ONLINE STORE] Your username and password info').click
  end

  def get_email
    find_field('fe_text').value
  end

  def click_confirm_link
    find('a', text: 'http://store.demoqa.com/wp-login.php?').click
  end
end
