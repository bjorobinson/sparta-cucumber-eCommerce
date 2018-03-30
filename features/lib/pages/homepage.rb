require 'capybara/dsl'
require 'rspec'

class EcomHomepage
  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
end
