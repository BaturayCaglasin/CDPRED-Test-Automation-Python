Feature: Sign In on Automation Practice

  Background: Open the URL
    Given Open the "http://automationpractice.com"
    When User clicks sign_in_button

#TC0001
  @ntest
  Scenario: TC0001- Verify Authentication - Login an Account Page is exists or not.
    Then I verify the text on the element already_registered_text_area

#TC0002
  @ntest
  Scenario Outline: TC0002- Invalid Credentials
    Then The user enters "<email>" to signin_email_area
    Then The user enters "<password>" to signin-password-area
    When User clicks signin_button
    Then I verify the text on the element authentication_failed_text_area

    Examples:
      | email         | password |
      | test@test.com | testtest |

#TC0003
  @ntest
  Scenario Outline: TC0003- Valid Credentials
    Then The user enters "<email>" to signin_email_area
    Then The user enters "<password>" to signin_password_area
    When User clicks signin_button
    Then I verify the text on the element welcome_to_your_account_text_area
    When User clicks signout_button


    Examples:
      | email                  | password  |
      | geraltofrivia@test.com | Test*0101 |

 #TC0004
  @ntest
  Scenario: TC0004- Forgot Your Password Button Works or Not
    When User clicks forgot_your_password_button
    Then I verify the text on the element forgot_password_text_area

 #TC0005
  @ntest
  Scenario Outline: TC0005- Retrieve Password
    When User clicks forgot_your_password_button
    Then The user enters "<email>" to email_text_area
    When User clicks retrieve_password_button
    Then I verify the text on the element confirmation_mail_has_been_sent_text_area

    Examples:
      | email                  |
      | geraltofrivia@test.com |
