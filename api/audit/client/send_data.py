from base64 import encode
from datetime import datetime
from urllib import request, parse
import requests
import socket
import json
from environs import Env


def publicar_resultado(suite_source, goal, status, output_dir, username, server, browser, language, mode):

  data = load_settings()
  
  endpoint = data['AUDIT']['ENDPOINT']
  hostname = data['AUDIT']['HOSTNAME']

  url = endpoint.replace('hostname', hostname)
  
  app = get_appname(suite_source)
  suite = get_suitename(suite_source)
  tester = get_tester()

  payload = \
    {
      "STATUS": status,
      "DATE": str(datetime.now()),
      "APP": app,
      "SUITE": suite,
      "GOAL": goal,
      "USERNAME" : username,
      "LANGUAGE" : language,
      "SERVER" : server,
      "TESTER" : tester,
      "BROWSER" : browser,
      "MODE": mode
    }

  r = requests.post(url, data=payload)
  save_payload(payload, output_dir)

def get_appname(path):
    path = repr(path)
    path = path.replace('\\\\', '\\')
    appname = path.split("\\")[-3]
    
    return appname

def get_suitename(path):
    
    path = repr(path)
    path = path.replace('\\\\', '\\')
    suitename = path.split("\\")[-2]
    
    return suitename

def get_tester():

  tester = ''
  
  try:
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.connect(("8.8.8.8", 80))
    tester = s.getsockname()[0]
    s.close()
  except Exception as e:
    tester = '127.0.0.1'
    s.close()

  return tester
  
def load_settings():
  global data

  _dir = 'api\\audit\\client\\conf'
  
  with open(f'{_dir}\\audit.json') as j:
    data = json.load(j)
  j.close()

  env = Env()
  env.read_env(f'{_dir}\\.env')

  data['AUDIT']['HOSTNAME'] = env.str('AUDIT_HOSTNAME')
  data['AUDIT']['USERNAME'] = env.str('AUDIT_USERNAME')
  data['AUDIT']['PASSWORD'] = env.str('AUDIT_PASSWORD')
  
  return data

def save_payload(payload, output_dir):

  payload['OUTPUT_DIR'] = output_dir
  with open('payload.json', 'w+') as f:
    f.write(json.dumps(payload, indent=4, ensure_ascii=False))
