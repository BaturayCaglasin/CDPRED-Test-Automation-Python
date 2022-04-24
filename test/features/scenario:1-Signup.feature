Feature: Sign up on Automation Practice

  Background:
      Given Launch the browser
      Given Open the URL
      When User clicks sign_in_button
#TC0001
  @Test1
  Scenario: TC0001- Verify Authentication - Create an Account Page is exists or not.
      Then I verify the text on the element create_an_account_text_area


#TC0002
  @Test
  Scenario: TC0002- Verify "Create an account" button working or not with there is no any email.
    When User clicks create_an_account_button
    Then I verify the text on the element invalid_email_address_text_area

#TC0003
  @Test
  Scenario Outline: TC0003- Use a mail that has already used.
    Then The user enters "<email>" to email_text_area
    When User clicks create_an_account_button
    Then I verify the text on the element already_used_email_text_area

    Examples:
      | email          |
      | test@gmail.com |

 #TC0004
  @Test
  Scenario: TC0004- Use a mail that will be new - SignUp Scenario
    Then The user enters random email to email_text_area
    When User clicks create_an_account_button
    Then I have to just wait
    Then I verify the text on the element your_personal_information_text_area

 #TC0005
  @Test
  Scenario Outline: TC0005- Entering all fields for sign up process

    Then The user enters random email to email_text_area
    When User clicks create_an_account_button
    Then I have to just wait
    Then I verify the text on the element your_personal_information_text_area
    When User clicks mrs_selection
    Then The user enters "<firstname>" to firstname_area
    Then The user enters "<lastname>" to lastname_area
    Then The user enters "<password>" to password_area
    When User clicks date_of_birth_selection-day
    When User clicks 30
    When User clicks date_of_birth_selection_month
    When User clicks january
    When User clicks date_of_birth_selection_year
    When User clicks 1995
    When User clicks newsletter_confirmation_selection
    When User clicks special_offers_confirmation_selection
    Then The user enters "<address firstname>" to address_firstname_area
    Then The user enters "<address lastname>" to address_lastname_area
    Then The user enters "<address company>" to address_company_area
    Then The user enters "<address line 1>" to address_line_1_area
    Then The user enters "<address line 2>" to address_line_2_area
    Then The user enters "<city>" to city_area
    When User clicks state_selection
    When User clicks Alabama_state
    Then The user enters "<zip postal code>" to zip_postal_code_area
    When User clicks country_selection
    Then The user enters "additional information" to additional_information_area
    Then The user enters "12321321" to home_phone_area
    Then The user enters "2414123213" to mobile_phone_area
    When User clicks register_button
    Then I have to just wait
    Then I verify the text on the element welcome_to_your_account_text_area

    Examples:
      | firstname | lastname | password | address firstname | address lastname | address company | address line 1 | address line 2 | city | zip postal code |

      | test      | test     | testtest | test              | test             | test            | test           | test           | test | 22112           |

 #TC0006
  @Test
  Scenario Outline: TC0006- Empty Password
    Then The user enters random email to email_text_area
    When User clicks create_an_account_button
    Then I have to just wait
    Then I verify the text on the element your_personal_information_text_area
    Then The user enters "<password>" to password_area
    When User clicks register_button
    Then I have to just wait
    Then I verify the text on the element invalid_text_area_for_password

    Examples:
      | password |
      |       |

  #TC0007
  @Test
  Scenario Outline: TC0007- Enter invalid zipcode type.
    Then The user enters random email to email_text_area
    When User clicks create_an_account_button
    Then I have to just wait
    Then I verify the text on the element your_personal_information_text_area
    Then The user enters "<zip postal code>" to zip_postal_code_area
    When User clicks register_button
    Then I have to just wait
    Then I verify the text on the element invalid_text_area_for_zipcode

    Examples:
      | zip postal code |
      | test            |