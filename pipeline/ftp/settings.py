from json import load
from environs import Env
import os

def load_settings():
  
  with open('pipeline\\ftp\\settings.json') as j:
    data = load(j)
    j.close()

  env = Env()
  env.read_env('pipeline\\ftp\\.env')

  data['FTP']['HOSTNAME'] = env.str('FTP_HOSTNAME')
  data['FTP']['USERNAME'] = env.str('FTP_USERNAME')
  data['FTP']['PASSWORD'] = env.str('FTP_PASSWORD')
  
  return data


def load_payload():

  payload = None
  
  if os.path.exists('.\\payload.json'):
    with open('payload.json') as f:
      payload = load(f)
    f.close()

  return payload
