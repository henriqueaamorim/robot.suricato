from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from time import sleep

login = input("Digite seu email: ") 
senha = input("Digite sua senha: ") 

lista = []
i = 59

driver = webdriver.Firefox()
driver.get("https://trello.com/b/GJI5lBoV/rb")

# Entrando na tela de login
driver.find_element(By.XPATH, "/html/body/div[1]/div[2]/div[1]/div/main/div/div/div[2]/div/div[1]/div[2]/button").click()

# Preenchendo o email e clicando em continuar
driver.find_element(By.NAME, "user").send_keys(login)
driver.find_element(By.ID, "login").click()

# Preenchendo a senha e clicando em entrar
sleep(6)
driver.find_element(By.NAME, "password").send_keys(senha)
driver.find_element(By.XPATH, "/html/body/div[1]/div/div/div/div[2]/div[2]/div/section/div[2]/form/button/span").click()


# Filtrando os cards
sleep(15)
try:
  driver.find_element(By.XPATH, "/html/body/div[1]/div[2]/div[1]/div/main/div/div[2]/div[2]/div/div[1]/div[1]/div[4]/span[7]").click()
  sleep(2)
  driver.find_element(By.XPATH, "/html/body/div[6]/div/section/div/div[4]/ul/li[1]/label/span[2]/div").click()
  sleep(2)
  driver.find_element(By.XPATH, "/html/body/div[6]/div/section/header/button").click()

except:
  driver.find_element(By.XPATH, "/html/body/div[1]/div[2]/div[1]/div/main/div/div[2]/div[2]/div/div[1]/div[1]/div[5]/span[7]").click()
  sleep(2)
  driver.find_element(By.XPATH, "/html/body/div[6]/div/section/div/div[4]/ul/li[1]/label/span[2]/div").click()
  sleep(2)
  driver.find_element(By.XPATH, "/html/body/div[6]/div/section/header/button").click()


while i <= 972:
  try:
    driver.find_element(By.XPATH, "/html/body/div[1]/div[2]/div[1]/div/main/div/div[2]/div[2]/div/div[1]/div[3]/div[2]/div[1]/div/div[2]").send_keys(Keys.ARROW_DOWN)
    card = driver.find_element(By.XPATH, f"/html/body/div[1]/div[2]/div[1]/div/main/div/div[2]/div[2]/div/div[1]/div[3]/div[2]/div[1]/div/div[2]/a[{i}]/div[3]/span").text
    lista.append(card)                     
    i += 1
  except:
    i += 1
    pass

driver.close()

arquivo = open("C:\\Projects\\SuricatoAutomation\\RobotFramework\\superutil\\auto_write\\apps.txt", mode= "w", encoding="utf-8")
for app in lista:
  arquivo.write(f"{app}\n")

arquivo.close()

