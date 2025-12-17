import requests
import json
import re
import api_tools

vehicle = None

class Vehicle():

  def __init__(self):

    self.brand = None
    self.model = None
    self.type_vehicle = None
    self.model_year = None
    self.renavam = None
    self.vehicle_plate = None
    self.color = None
    self.uf_plate = None
    self.manufacturing_year = None
    self.weight = None
    self.insurance_maturity = None
    self.fuel = None
    self.load_capacity = None
    self.license_expiration = None
    self.insurance_expiration_month = None
    self.chassis_number = None
    self.engine_number = None
    self.exchange_forecast = None
    self.tank_capacity = None
    self.people_capacity = None
    self.potency = None
    self.km_driven = None

  def set_brand(self, data):
    self.brand = data['BRAND']
  
  def set_model(self, data):
    self.model = data['MODEL']

  def set_type_vehicle(self, data):
    self.type_vehicle = data['TYPE_VEHICLE']

  def set_model_year(self, data):
    self.model_year = data['MODEL_YEAR']
  
  def set_renavam(self, data):
    self.renavam = data['RENAVAM']
  
  def set_vehicle_plate(self, data):
    self.vehicle_plate = data['VEHICLE_PLATE']
  
  def set_color(self, data):
    self.color = data['COLOR']
  
  def set_uf_plate(self, data):
    self.uf_plate = data['UF_PLATE']
  
  def set_manufacturing_year(self, data):
    self.manufacturing_year = data['MANUFACTURING_YEAR']

  def set_weight(self, data):
    self.weight = data['WEIGHT']

  def set_insurance_maturity(self, data):
    self.insurance_maturity = data['INSURANCE_MATURITY']
  
  def set_fuel(self, data):
    self.fuel = data['FUEL']
  
  def set_load_capacity(self, data):
    self.load_capacity = data['LOAD_CAPACITY']

  def set_license_expiration(self, data):
    self.license_expiration = data['LICENSE_EXPIRATION']

  def set_insurance_expiration_month(self, data):
    self.insurance_expiration_month = data['INSURANCE_EXPIRATION_MONTH']

  def set_chassis_number(self, data):
    self.chassis_number = data['CHASSIS_NUMBER']

  def set_engine_number(self, data):
    self.engine_number = data['ENGINE_NUMBER']

  def set_exchange_forecast(self, data):
    self.exchange_forecast = data['EXCHANGE_FORECAST']

  def set_tank_capacity(self, data):
    self.tank_capacity = data['TANK_CAPACITY']

  def set_people_capacity(self, data):
    self.people_capacity = data['PEOPLE_CAPACITY']

  def set_potency(self, data):
    self.potency = data['POTENCY']

  def set_km_driven(self, data):
    self.km_driven = data['KM_DRIVEN']

def gerar_novo_veículo(type_vehicle = None):
  global vehicle

  config = api_tools.load_settings()

  payload = config["DATA"]["ENDPOINT_VEHICLE"]
  hostname =  config['DATA']['HOSTNAME']
  endpoint = payload.replace('hostname', hostname)

  if type_vehicle:
    endpoint = f'{endpoint}?type={type_vehicle}'

  url = requests.get(endpoint)
  url.encoding='utf-8-sig'
  data = json.loads(url.text)

  vehicle = Vehicle()
  vehicle.set_brand(data)
  vehicle.set_model(data)
  vehicle.set_type_vehicle(data)
  vehicle.set_model_year(data)
  vehicle.set_renavam(data)
  vehicle.set_vehicle_plate(data)
  vehicle.set_color(data)
  vehicle.set_uf_plate(data)
  vehicle.set_manufacturing_year(data)
  vehicle.set_weight(data)
  vehicle.set_insurance_maturity(data)
  vehicle.set_fuel(data)
  vehicle.set_load_capacity(data)
  vehicle.set_license_expiration(data)
  vehicle.set_insurance_expiration_month(data)
  vehicle.set_chassis_number(data)
  vehicle.set_engine_number(data)
  vehicle.set_exchange_forecast(data)
  vehicle.set_tank_capacity(data)
  vehicle.set_people_capacity(data)
  vehicle.set_potency(data)
  vehicle.set_km_driven(data)

def marca():
  return vehicle.brand

def modelo():
  return vehicle.model
 
def tipo_veiculo():
  return vehicle.type_vehicle

def ano_modelo():
  return vehicle.model_year

def renavam():
  return vehicle.renavam

def placa():
  return vehicle.vehicle_plate

def cor():
  return vehicle.color.upper()

def uf_placa():
  return vehicle.uf_plate

def ano_fabricacao():
  return vehicle.manufacturing_year

def peso():
  return vehicle.weight

def vencimento_seguro():
  return vehicle.insurance_maturity

def combustivel():
  return vehicle.fuel

def capacidade_carga():
  return vehicle.load_capacity

def vencimento_licenca_seguro():
  return vehicle.license_expiration

def mes_vencimento_seguro():
  return vehicle.insurance_expiration_month

def numero_chassi():
  return vehicle.chassis_number

def numero_motor():
  return vehicle.engine_number

def previsao_troca():
  return vehicle.exchange_forecast

def capacidade_tanque():
  return vehicle.tank_capacity

def capacidade_pessoas():
  return vehicle.people_capacity

def potencia():
  return vehicle.potency

def custo_km_rodado():
  return vehicle.km_driven
