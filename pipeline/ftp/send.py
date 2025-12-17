import pipeline.ftp.settings as settings
import os
from ftplib import FTP
from time import sleep


def connect():
  
  config = settings.load_settings()

  hostname = config['FTP']['HOSTNAME']
  username = config['FTP']['USERNAME']
  password = config['FTP']['PASSWORD']

  conn = None

  try:
    conn = FTP(hostname, username, password)
  except ConnectionRefusedError as e:
    pass 
  
  if not conn:
    print('WARNING! THERE IS NO FTP SERVER TO SEND LOG FILES.')

  return conn


def generate_tree(ftp):

  payload = settings.load_payload()

  app = payload['APP']
  browser = payload['BROWSER']
  suite = payload['SUITE']
  language = payload['LANGUAGE']
  username = payload['USERNAME']
  server = payload['SERVER']
  
  remote_dir = 'Suricato/AppTest'
  paths = [app, suite, server, language, browser, username]
  previous_dir = payload['OUTPUT_DIR']

  for path in paths:
    ftp.cwd(remote_dir)
    folders = ftp.nlst()
    if path not in folders:
      ftp.mkd(path)
    remote_dir = path
  
  ftp.cwd(remote_dir)


def upload():

  payload = settings.load_payload()
  previous_dir = payload['OUTPUT_DIR']

  ftp = connect()

  if ftp:
    generate_tree(ftp)

    logs = ['log.html', 'report.html', 'output.xml']

    while not os.path.exists(logs[0] and logs[1] and logs[2]):
      sleep(1)

    for log in logs:

      if os.path.isfile(log):
        file = open(f'{previous_dir}\\{log}', 'rb')
        filename = log.split('\\')[-1]
        ftp.storbinary(f'STOR {filename}', file)
        file.close()
    
    ftp.close()
