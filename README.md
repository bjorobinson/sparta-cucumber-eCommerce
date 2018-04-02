# Sparta Cucumber eCommerce
A task to use cucumber to test signup, login and three user paths, in this case: purchasing an item in three different paths, for a given site: http://store.demoqa.com/

## Installation and Execution
Clone the repository into the intended directory using the following command:

`git clone git@github.com:bjorobinson/sparta-cucumber-eCommerce.git`

In the chosen directory, run the testing scenarios using the command `cucumber`

## Testing Scenarios

The user signup, login, and three purchasing scenarios were designed and implemented using a Given, When, Then approach. The result divided the testing into five scenarios, which break down like so:

* Scenario: Registering a new account
  * Given I retrieve email credentials
    *  And I access the homepage
    *  And I access the My Account Page
    *  And I access the register page
  * When I fill in my username
    *  And I fill in my email
    *  And I register my account
    *  And I get password from a confirmation email
    *  And I follow these links to set my password
  * Then I am returned to the login page

* Scenario: Logging in to this newly created account
  * Given I access the homepage
    * And I access the My Account Page
  * When I fill in my username
    * And I fill in my password
    * And I click login
  * Then I am taken to the user dashboard

* Scenario: Basic purchase from product gallery
  * Given I access the homepage
    * And I access the product gallery
    * And I add iphone to cart
  * When I go to checkout
    * And I click continue
    * And I enter in details for shipping price
    * And I click buy
  * Then I am taken to the order confirmation page

* Scenario: Purchasing multiple of an object from product gallery
  * Given I access the homepage
    * And I access the accessories product gallery
    * And I add magic mouse to cart
  * When I go to checkout
    * And I change the quantity of my order to 9
    * And I click continue
    * And I enter in details for shipping price
    * And I click buy
  * Then I am taken to the order confirmation page

* Scenario: Purachasing something using links from the homepage
  * Given I access the homepage
  * When I access buy mouse link
    * And I add magic mouse to cart
    * And I go to checkout
    * And I click continue
    * And I enter in details for shipping price
    * And I click buy
  * Then I am taken to the order confirmation page
