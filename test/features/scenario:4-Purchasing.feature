Feature: Purchasing Products on Automation Practice

  Background: Open the URL
    Given Open the "http://automationpractice.com"
    When User clicks sign_in_button
    Then The user enters "geraltofrivia@test.com" to signin_email_area
    Then The user enters "Test*0101" to signin_password_area
    When User clicks signin_button

#TC0001
  @ntest
  Scenario: TC0001- SignIn: Delivery Address Summary Text Area is Exists or Not
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    Then I verify the text on the element delivery_address_summary_text_area

#TC0002
  @ntest
  Scenario: TC0002- SignIn: Invoice Address Summary Text Area is Exists or Not
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    Then I verify the text on the element invoice_address_summary_text_area

 #TC0003
  @ntest
  Scenario: TC0003- Address: Choose a Delivery Address
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    When User clicks choose_a_delivery_address_button

#TC0004
  @ntest
  Scenario: TC0004- Address: Your Delivery Address Area is Exists
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    Then I verify the element your_delivery_address_text_area

#TC0005
  @ntest
  Scenario: TC0005- Address: Your Billing Address Area is Exists
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    Then I verify the element your_billing_address_text_area

#TC0006
  @ntest
  Scenario: TC0006- Address: Update Your Delivery Address' City
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    When User clicks update_button
    And I clear the element city_text_area
    Then The user enters "kaer morhen" to city_text_area
    When User clicks submit_address_button
    Then I verify the text on the element city_address_text_area

#TC0007
  @ntest
  Scenario: TC0007- Address: Update Your Billing Address' City
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    When User clicks update_button
    And I clear the element city_text_area
    Then The user enters "kaer morhen" to city_text_area
    When User clicks submit_address_button
    Then I verify the text on the element city_address_text_area

#TC0008
  @ntest
  Scenario: TC0008- Shipping: Shipping information is exists or not
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    When User clicks proceed_to_checkout_button_to_shipping
    Then I verify the element shipping_info_text_area

#TC0009
  @ntest
  Scenario: TC0009- Shipping: Shipping Terms of Service Agreed Button
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    When User clicks proceed_to_checkout_button_to_shipping
    When User clicks shipping_agreed_button


#TC0010
  @ntest
  Scenario: TC0010- Shipping: Shipping Terms of Service Agreed Does Not Clicked
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    When User clicks proceed_to_checkout_button_to_shipping
    When User clicks proceed_to_checkout_button_to_payment
    Then I verify the text on the element terms_of_service_alert_text_area


#TC0011
  @ntest
  Scenario: TC0011- Payment: Pay by bank wire
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    When User clicks proceed_to_checkout_button_to_shipping
    When User clicks shipping_agreed_button
    When User clicks proceed_to_checkout_button_to_payment
    When User clicks pay_by_bank_wire_button
   # When User clicks confirm_my_order_button

 #TC0012
  @ntest
  Scenario: TC0012- Payment: Pay by bank check
    Given I added a product to my cart
    When User clicks proceed_to_checkout_button
    Then I have to just wait
    When User clicks proceed_to_checkout_button
    When User clicks proceed_to_checkout_button_to_shipping
    When User clicks shipping_agreed_button
    When User clicks proceed_to_checkout_button_to_payment
    When User clicks pay_by_bank_check_button
  #  When User clicks confirm_my_order_button