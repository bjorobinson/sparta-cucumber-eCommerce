Given ("I retrieve email credentials") do
  ten_min_mail.visit_site
  @login = ten_min_mail.get_email
end

Given("I access the homepage") do
  ecom_homepage.visit_homepage
end

Given("I access the My Account Page") do
  ecom_homepage.visit_my_account
end

Given("I access the register page") do
  ecom_my_account.visit_register
end

When("I fill in my username") do
  ecom_my_account.enter_username @login
end

When("I fill in my email") do
  ecom_my_account.enter_email @login
end

When("I register my account") do
  ecom_my_account.click_register
end

When("I get password from a confirmation email") do
  ten_min_mail.visit_site
  ten_min_mail.see_confirm_email
end

When("I follow these links to set my password") do
  ten_min_mail.click_confirm_link
  binding.pry
  @password = ecom_my_account.get_password
  ecom_my_account.click_reset_password
  ecom_my_account.return_to_login
end

Then("I am returned to the login page") do
  expect(ecom_my_account.get_url).to eq "http://store.demoqa.com/wp-login.php"
end

When("I fill in my password") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click login") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am taken to the user dashboard") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I access the product gallery") do
  ecom_homepage.visit_product_gallery
end

Given("I add iphone to cart") do
  ecom_product.add_iphone
end

When("I go to checkout") do
  ecom_product.go_to_checkout
end

When("I click continue") do
  ecom_product.continue_checkout
end

When("I enter in details for shipping price") do
  ecom_product.enter_shipping_details
end

When("I click buy") do
  ecom_product.click_purchase
end

Then("I am taken to the order confirmation page") do
  expect(ecom_product.review_confirmation).to be true
end


Given("I access the accessories product gallery") do
  ecom_product.visit_accessories
end

Given("I add magic mouse to cart") do
  ecom_product.add_mouse
end

When("I change the quantity of my order to 9") do
  ecom_product.change_quantity 9
end

When("I access buy mouse link") do
  ecom_homepage.buy_mouse_now
end
