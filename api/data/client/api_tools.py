from datetime import datetime
from unidecode import unidecode
from json import loads
from json import load
import requests
from environs import Env

def load_settings():
  
  with open('api\\data\\client\\conf\\data.json') as j:
    data = load(j)
    j.close()

  env = Env()
  env.read_env('api\\data\\client\\conf\\.env')

  data['DATA']['HOSTNAME'] = env.str('DATA_HOSTNAME')
  data['DATA']['USERNAME'] = env.str('DATA_USERNAME')
  data['DATA']['PASSWORD'] = env.str('DATA_PASSWORD')
  data['DATA']['ENDPOINT_PERSON'] = env.str('DATA_ENDPOINT_PERSON')
  data['DATA']['ENDPOINT_COMPANY'] = env.str('DATA_ENDPOINT_COMPANY')
  data['DATA']['ENDPOINT_VEHICLE'] = env.str('DATA_ENDPOINT_VEHICLE')
  
  return data


def convert_date(date):
  
  return datetime.strptime(date, '%Y-%m-%d').strftime('%d/%m/%Y')


def unidecode_string(text):

  return unidecode(text)


def load_json(payload):

  return loads(payload)


def get_request_url(url):

  return requests.get(url)