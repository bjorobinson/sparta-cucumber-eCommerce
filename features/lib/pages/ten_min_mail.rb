require 'capybara/dsl'
require 'rspec'

class TenMinMail
  include Capybara::DSL

  SITE_URL = 'https://10minutemail.net/'

  def visit_site
    visit(SITE_URL)
  end

  def see_confirm_email
    click_link('[ONLINE STORE] Your username and password info')
  end

end
