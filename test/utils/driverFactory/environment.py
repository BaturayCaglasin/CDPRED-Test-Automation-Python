from selenium import webdriver
from webdriver_manager.utils import ChromeType
from webdriver_manager.chrome import ChromeDriverManager


def before_feature(context, feature):
    context.driver = webdriver.Chrome(ChromeDriverManager(chrome_type=ChromeType.CHROMIUM).install())


def after_feature(context, feature):
    context.driver.quit()
