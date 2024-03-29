# pour utiliser les navigateurs web
from selenium import webdriver
 # pour sélectionner des éléments sur une page web 
from selenium.webdriver.common.by import By 
# pour acceder les touches de clavier 
from selenium.webdriver.common.keys import Keys
import time 
import sys
driver = webdriver.Chrome()
# Maximiser la fenêtre du navigateur
driver.maximize_window()
# Pour aceder au page web 
driver.get("https://b2b-frontend.dev3.addinn-group.com/auth/login" )
time.sleep(2)
# Ecrire le Username 
Username= driver.find_element(By.XPATH, "//*[@id='kt_login_signin_form']/div[2]/input")
Username.send_keys("test")
time.sleep(2)
# Ecrire le mot de passe  
User= driver.find_element(By.XPATH, "//*[@id='kt_login_signin_form']/div[3]/input")
User.send_keys("12345678") 
time.sleep(2)
# Cliquer sur le bouton
button = driver.find_element(By.XPATH, "//*[@id='kt_login_signin_form']/div[4]")
button.click()
time.sleep(10)
