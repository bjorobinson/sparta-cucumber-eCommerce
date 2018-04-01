require 'capybara/dsl'
require 'rspec'

class EcomProduct
  include Capybara::DSL

  def add_iphone
    click_button('Add To Cart')
  end

  def go_to_checkout
    click_link('Checkout')
  end

  def continue_checkout
    click_link('Continue')
  end

  def enter_shipping_details
    fill_in('wpsc_checkout_form_9', with: 'test@email.com')
    fill_in('wpsc_checkout_form_2', with: 'Firstname')
    fill_in('wpsc_checkout_form_3', with: 'Firstname')
    fill_in('wpsc_checkout_form_4', with: 'Person Address')
    fill_in('wpsc_checkout_form_5', with: 'City Address')
    fill_in('wpsc_checkout_form_6', with: 'County Address')
    fill_in('wpsc_checkout_form_18', with: '07993992991')
    select('United Kingdom', from: 'wpsc_checkout_form_7')
  end

  def click_purchase
    click_button('Purchase')
  end

  def review_confirmation
    current_url.include? "transaction-results"
  end

  def visit_accessories
    # requires manually hovering element
    click_link('Accessories')
  end
end
