from selenium import webdriver
from selenium.webdriver.common.by import By
import os
import time

browser = webdriver.Chrome()
browser.get("https://www.google.co.th/")
time.sleep(3)