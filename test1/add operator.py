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
User.send_keys("admin123") 
time.sleep(2)
# Cliquer sur le bouton "continuer"
button = driver.find_element(By.XPATH, "//*[@id='kt_login_signin_form']/div[4]")
button.click()
time.sleep(2)
# Cliquer sur le bouton "Operators"
button = driver.find_element(By.XPATH, "//*[@id='#kt_app_sidebar_menu']/div[2]/a/span[2]")
button.click()
time.sleep(2)
# Cliquer sur le bouton "Add Operators"
button = driver.find_element(By.XPATH, "//*[@id='kt_app_content_container']/app-operator-listing/div/div[1]/div[2]/div/button")
button.click()
time.sleep(2)
# ecrire "FIRST NAME"
firstname = driver.find_element(By.XPATH, "//input[@formcontrolname='firstname']")
firstname.send_keys("Mohamed") 
#ecrire lastname
lastname = driver.find_element(By.XPATH, "//input[@formcontrolname='lastname']")
lastname.send_keys("ali") 
time.sleep(2)
#ecrire username
Username=driver.find_element(By.XPATH, "//input[contains(@formcontrolname,'username')]")
Username.send_keys("Aliii") 
time.sleep(2)

password=driver.find_element(By.XPATH,"//input[contains(@formcontrolname,'password')]")
password.send_keys("aya123")
time.sleep(2)
confirm_password=driver.find_element(By.XPATH,"//input[contains(@formcontrolname,'repeat_Password')]")
confirm_password.send_keys("aya123")
time.sleep(2)

# Cliquer sur le bouton "Carpark"
button = driver.find_element(By.XPATH, "//*[@id='pn_id_4_header_action']/span")
button.click()
time.sleep(2)

proposition= driver.find_element(By.XPATH, "//*[@id='pn_id_4_content']/app-features/form/div[1]/div/select")
proposition.click()
time.sleep(10)

carpark2= driver.find_element(By.XPATH, "//*[@id='pn_id_18_content']/app-features/form/div[1]/div/select/option[1]")
carpark2.click()
time.sleep(2)
# Fermer le navigateur
driver.quit()