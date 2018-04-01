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
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am returned to the login page") do
  pending # Write code here that turns the phrase above into concrete actions
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

  pending # Write code here that turns the phrase above into concrete actions
end

Given("I add iphone {int} to cart") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I go to checkout") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click continue") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter in details for shipping price") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click buy") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am taken to the order confirmation page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I access the accessories product gallery") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I add iphone {int} to cart") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I go to checkout") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click continue") do

  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter in details for shipping price") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click buy") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am taken to the order confirmation page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I access the accessories product gallery") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I add magic mouse to cart") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I change the quantity of my order to {int}") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I access buy mouse link") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I add the magic mouse to cart") do
  pending # Write code here that turns the phrase above into concrete actions
end
