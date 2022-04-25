from behave import *
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from webdriver_manager.utils import ChromeType
from webdriver_manager.chrome import ChromeDriverManager
import time
from selenium import *

from test.configuration.config import TestData
from test.utils.locators.dashboard import *
from test.utils.actions.basePage import *
from test.utils.driverFactory.environment import *
from test.utils.locators.dashboard import sign_in_button
from test.utils.actions.basePage import *
from test.utils.locators.signIn import create_an_account_text_area, create_an_account_button, \
    invalid_email_address_text_area, email_text_area, already_used_email_text_area


@given('Launch the browser')
def launch_browser(context):
    if TestData.BROWSER == 'chromium':
        context.driver = webdriver.Chrome(ChromeDriverManager(chrome_type=ChromeType.CHROMIUM).install())
        context.driver.maximize_window()
    elif TestData.BROWSER == 'firefox':
        context.driver = webdriver.Firefox(executable_path=GeckoDriverManager().install())
    else:
        raise ValueError('Browser is not supported')


@given('Open the URL')
def open_page(context):
    try:
        context.driver.get(TestData.URL)
    except:
        context.driver.close()
        assert False, "URL does not opened"


@when('User clicks sign_in_button')
def click_an_element_sign_in_button(context):
    try:
        context.driver.find_element_by_xpath(sign_in_button).click()
        time.sleep(5)
    except:
        context.driver.close()
        assert False, "There is a problem on clicked action"


@then('I verify the text on the element create_an_account_text_area')
def verify_an_element_create_an_account_text_area(context):
    try:
        context.driver.find_element_by_xpath(create_an_account_text_area).click()
        context.driver.find_element_by_xpath(create_an_account_text_area).is_enabled()
    except:
        context.driver.close()
        assert False, "There is a problem on verified action"


@when('User clicks create_an_account_button')
def click_an_element_create_an_account_button(context):
    try:
        context.driver.find_element_by_xpath(create_an_account_button).click()
        time.sleep(5)
    except:
        context.driver.close()
        assert False, "There is a problem on clicked action"


@then('I verify the text on the element invalid_email_address_text_area')
def verify_an_element_invalid_email_address_text_area(context):
    try:
        context.driver.find_element_by_xpath(invalid_email_address_text_area).click()
        context.driver.find_element_by_xpath(invalid_email_address_text_area).is_enabled()
    except:
        context.driver.close()
        assert False, "There is a problem on verified action"


@then('The user enters "{email}" to email_text_area')
def type_an_element_email_text_area(context, email):
    try:
        context.driver.find_element_by_xpath(email_text_area).send_keys(email)
        time.sleep(5)
    except:
        context.driver.close()
        assert False, "There is a problem on typing action"


@then('I verify the text on the element already_used_email_text_area')
def verify_an_element_already_used_email_text_area(context):
    try:
        context.driver.find_element_by_xpath(already_used_email_text_area).click()
        context.driver.find_element_by_xpath(already_used_email_text_area).is_enabled()
    except:
        context.driver.close()
        assert False, "There is a problem on verified action"
