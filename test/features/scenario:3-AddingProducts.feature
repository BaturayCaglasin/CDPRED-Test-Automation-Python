Feature: Adding Products to Cart on Automation Practice

  Background: Open the URL
    Given Open the "http://automationpractice.com"
    When User clicks sign_in_button
    Then The user enters "geraltofrivia@test.com" to signin_email_area
    Then The user enters "Test*0101" to signin_password_area
    When User clicks signin_button

#TC0001
  @ntest
  Scenario: TC0001- At least one product exists in the t-shirt segment.
    When User clicks t_shirts_button
    Then I verify the element product_list_row

#TC0002
  @ntest
  Scenario: TC0002- At least one product exists in the dresses segment.
    When User clicks dresses_button
    Then I verify the element product_list_row

#TC0003
  @ntest
  Scenario: TC0003- At least one product exists in the women segment.
    When User clicks women_button
    Then I verify the element product_list_row

#TC0004
  @ntest
  Scenario: TC0004- Grid Structure Works or Not
    When User clicks t_shirts_button
    When User clicks list_structure_button
    When User clicks grid_structure_button
    Then I verify the element grid_structure_list

#TC0005
  @ntest
  Scenario: TC0005- List Structure Works or Not
    When User clicks t_shirts_button
    When User clicks list_structure_button
    Then I verify the element list_structure_list

#TC0006
  @ntest
  Scenario: TC0006- Color Change - Orange to Blue
    When User clicks t_shirts_button
    Then I hover the element faded_t_shirt
    When User clicks faded_short_sleeve_t_shirt_blue_button
    Then I have to just wait
    Then I verify the element color_blue_selected

#TC0007
  @ntest
  Scenario: TC0007- Color Change - Blue to Orange
    When User clicks t_shirts_button
    Then I hover the element faded_t_shirt
    When User clicks faded_short_sleeve_t_shirt_orange_button
    Then I have to just wait
    Then I verify the element "color_orange_selected

#TC0008
  @ntest
  Scenario: TC0008- More Button
    When User clicks t_shirts_button
    Then I hover the element_faded_t_shirt
    When User clicks more_button
    Then I verify the element description_area

#TC0009
  @ntest
  Scenario: TC0009- Add Wishlist Button
    When User clicks t_shirts_button
    Then I hover the element faded_t_shirt
    When User clicks add_wishlist_button
    Then I have to just wait
    Then I verify the text on the element successfully_added_text_area

#TC00010
  @ntest
  Scenario: TC0010- Add To Compare Button
    When User clicks t_shirts_button
    Then I hover the element faded_t_shirt
    When User clicks add_to_compare_button
    Then I verify the element checked_add_to_compare_button

#TC00011
  @ntest
  Scenario: TC0011- Categories Filter
    When User clicks dresses_button
    When User clicks evening_dresses_filter_button
    Then I verify the element evening_dresses_filter_accepted

#TC00012
  @ntest
  Scenario: TC0012- Price Range Filter
    When User clicks dresses_button
    Then I scroll the element price_range

#TC0013
  @ntest
  Scenario: TC0013- Add to Cart Process
    When User clicks t_shirts_button
    Then I hover the element faded_t_shirt
    When User clicks add_to_cart_button
    Then I have to just wait
    Then I verify the element add_to_cart_progress_is_succeeded_icon

 #TC0014
  @ntest
  Scenario: TC0014- Delete a Product from Add to Cart
    When User clicks t_shirts_button
    Then I hover the element faded_t_shirt
    When User clicks add to cart_button
    Then I have to just wait
    Then I verify the element add_to_cart_progress_is_succeeded_icon
    When User clicks close_popup_button
    When User clicks cart_button
    Then I have to just wait
    When User clicks remove_from_cart_button
