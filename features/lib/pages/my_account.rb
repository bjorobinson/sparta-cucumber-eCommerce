require 'capybara/dsl'
require 'rspec'

class EcomMyAccount
  include Capybara::DSL

  def visit_register
    click_link('Register')
  end
end
