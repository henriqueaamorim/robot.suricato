from selenium.webdriver import ChromeOptions
from selenium.webdriver import FirefoxOptions
from selenium import webdriver
from selenium.webdriver.edge.options import Options as EdgeOptions
from selenium.common.exceptions import SessionNotCreatedException
from os import environ
from os import path
from os import remove
from pathlib import Path
from glob import glob


def configurar_ambiente(output_dir):

  remover_arquivos(output_dir)


def configurar_navegador(browser, mode, issue):

  HEADLESS_WIDTH_SIZE = '1366'
  HEADLESS_HEIGHT_SIZE = '3000'
  options = None
# Configurações específicas de cada navegador
  if browser.upper() == 'CHROME':
    options = ChromeOptions()
    options.add_experimental_option('excludeSwitches', ['enable-logging', 'enable-blink-features'])
  elif browser.upper() == 'EDGE':
    options = EdgeOptions()
    options.add_experimental_option('excludeSwitches', ['enable-logging', 'enable-blink-features'])
  else: 
    options = FirefoxOptions()
    options.binary_location = "C:/Program Files/Mozilla Firefox/firefox.exe"
# Configurações gerais (Para todos os navegadores)
  options.add_argument("start-maximized")
  options.add_argument('--allow-insecure-localhost')
  options.add_argument('--ignore-certificate-errors')
  options.add_argument('--log-level=3')
  options.add_argument('--silent')
# Configuração do modo DOC
  if mode.upper() == 'DOC' and issue.upper() == 'FALSE':
    options.add_argument('--headless')
    options.add_argument('--disable-gpu')
    if browser.upper() == 'CHROME' or browser.upper() == 'EDGE':
      options.add_argument(f'--window-size={HEADLESS_WIDTH_SIZE}x{HEADLESS_HEIGHT_SIZE}')
    else:
      environ['MOZ_HEADLESS_WIDTH'] = HEADLESS_WIDTH_SIZE
      environ['MOZ_HEADLESS_HEIGHT'] = HEADLESS_HEIGHT_SIZE
    
  return options


def remover_arquivos(output_dir):
  
  cur_path = Path().resolve()

  files = [
           f'{output_dir}\\RobotFramework\\report.html',
           f'{output_dir}\\RobotFramework\\log.html',
           f'{cur_path}\\RobotFramework\\report.html',
           f'{cur_path}\\RobotFramework\\log.html',
           f'{cur_path}\\RobotFramework\\payload.json']

  for file in files:
    if path.isfile(file):
      remove(file)
