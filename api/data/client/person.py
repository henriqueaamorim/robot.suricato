import requests
import json
import re
import api_tools

person = None

class Person():

  def __init__(self):

    self.id = None
    self.type = None
    self.gender = None
    self.firstname = None
    self.fathername = None
    self.mothername = None
    self.surname = None
    self.fullname = None
    self.lastname = None
    self.middlename = None
    self.occupation = None
    self.birth_date = None
    self.major_date = None
    self.contract_date = None
    self.blood = None
    self.weight = None
    self.height = None
    self.cep = None
    self.state = None
    self.city = None
    self.neighborhood = None
    self.address = None
    self.number = None
    self.complement = None    
    self.email_commercial_long = None
    self.email_commercial_short = None
    self.email_particular_long = None
    self.email_particular_short = None
    self.password = None
    self.cellphone = None
    self.telephone = None
    self.CPF = None
    self.PIS = None
    self.RG = None
    self.CNH = None
    self.RCN = None
    self.VOTER_TITLE = None


  def set_id(self, data):
    self.id = data['ID']
  
  def set_type(self, data):
    self.type = data['TYPE_PERSON']

  def set_gender(self, data):
    self.gender = data['GENDER']

  def set_firstname(self, data):
    self.firstname = data['FIRSTNAME']
  
  def set_fathername(self, data):
    self.fathername = data['FATHERNAME']
  
  def set_mothername(self, data):
    self.mothername = data['MOTHERNAME']
  
  def set_surname(self, data):
    self.surname = data['SURNAME']
  
  def set_fullname(self, data):
    self.fullname = data['FULLNAME']
  
  def set_lastname(self, data):
    self.lastname = data['LASTNAME']

  def set_middlename(self, data):
    self.middlename = data['MIDDLENAME']

  def set_occupation(self, data):
    self.occupation = data['OCCUPATION']

  def set_birthdate(self, data):
    self.birth_date = data['BIRTH_DATE']

  def set_majordate(self, data):
    self.major_date = data['MAJOR_DATE']

  def set_contract_date(self, data):
    self.contract_date = data['CONTRACT_DATE']
  
  def set_blood(self, data):
    self.blood = data['BLOOD']

  def set_weight(self, data):
    self.weight = data['WEIGHT']

  def set_height(self, data):
    self.height = data['HEIGHT']

  def set_cep(self, data):
    self.cep = data['CEP']

  def set_state(self, data):
    self.state = data['STATE']

  def set_city(self, data):
    self.city = data['CITY']

  def set_neighborhood(self, data):
    self.neighborhood = data['NEIGHBORHOOD']

  def set_address(self, data):
    self.address = data['ADDRESS']

  def set_number(self, data):
    self.number = data['NUMBER']

  def set_complement(self, data):
    self.complement = data['COMPLEMENT']

  def set_email_commercial_long(self, data):
    self.email_commercial_long = data['EMAIL_COMMERCIAL_LONG']

  def set_email_commercial_short(self, data):
    self.email_commercial_short = data['EMAIL_COMMERCIAL_SHORT']

  def set_email_particular_long(self, data):
    self.email_particular_long = data['EMAIL_PARTICULAR_LONG']

  def set_email_particular_short(self, data):
    self.email_particular_short = data['EMAIL_PARTICULAR_SHORT']

  def set_password(self, data):
    self.password = data['PASSWORD']

  def set_cellphone(self, data):
    self.cellphone = data['CELLPHONE']

  def set_telephone(self, data):
    self.telephone = data['TELEPHONE']

  def set_cpf(self, data):
    self.CPF = data['CPF']

  def set_pis(self, data):
    self.PIS = data['PIS']

  def set_rg(self, data):
    self.RG = data['RG']

  def set_cnh(self, data):
    self.CNH = data['CNH']

  def set_rcn(self, data):
    self.RCN = data['RCN']

  def set_voter_title(self, data):
    self.VOTER_TITLE = data['VOTER_TITLE']


def gerar_nova_pessoa(type_person = None):
  global person

  config = api_tools.load_settings()

  payload = config["DATA"]["ENDPOINT_PERSON"]
  hostname =  config['DATA']['HOSTNAME']
  endpoint = payload.replace('hostname', hostname)

  if type_person:
    endpoint = f'{endpoint}?type={type_person}'

  url = requests.get(endpoint)
  url.encoding='utf-8-sig'
  data = json.loads(url.text)

  person = Person()
  person.set_id(data)
  person.set_type(data)
  person.set_gender(data)
  person.set_fullname(data)
  person.set_firstname(data)
  person.set_middlename(data)
  person.set_lastname(data)
  person.set_fathername(data)
  person.set_mothername(data)
  person.set_occupation(data)
  person.set_birthdate(data)
  person.set_majordate(data)
  person.set_contract_date(data)
  person.set_blood(data)
  person.set_weight(data)
  person.set_height(data)
  person.set_cep(data)
  person.set_state(data)
  person.set_city(data)
  person.set_neighborhood(data)
  person.set_address(data)
  person.set_number(data)
  person.set_complement(data)
  person.set_email_commercial_long(data)
  person.set_email_commercial_short(data)
  person.set_email_particular_long(data)
  person.set_email_particular_short(data)
  person.set_password(data)
  person.set_cellphone(data)
  person.set_telephone(data)
  person.set_cpf(data)
  person.set_pis(data)
  person.set_rg(data)
  person.set_cnh(data)
  person.set_rcn(data)
  person.set_voter_title(data)

def matrícula():
  return person.id

def tipo_pessoa():
  return person.type

def gênero():
  return person.gender

def primeiro_nome():
  return person.firstname

def nome_do_pai():
  return person.fathername

def nome_da_mãe():
  return person.mothername

def sobrenome_completo():
  return person.surname

def nome_completo(unidecode=None, uppercase=False):
  if unidecode:
    fullname = person.fullname
  else:
    fullname = person.fullname
    
  return fullname

def último_nome():
  return person.lastname

def nome_do_meio():
  return person.middlename

def ocupação():
  return person.occupation

def data_de_nascimento():
  return api_tools.convert_date(person.birth_date)

def data_para_maioridade():
  return api_tools.convert_date(person.major_date)

def data_de_contrato():
  return api_tools.convert_date(person.contract_date)

def tipo_sanguíneo():
  return person.blood

def peso():
  return person.weight

def altura():
  return person.height

def cep():
  cep = person.cep
  
  if '-' in cep:
    cep = cep.replace('-','')

  return cep

def estado():
  return person.state

def cidade():
  return person.city

def bairro():
  return person.neighborhood

def endereço():
  return person.address

def número():
  return person.number

def complemento():
  return person.complement

def email_profisional_longo():
  return person.email_commercial_long

def email_profissional():
  return person.email_commercial_short

def email_particular_longo():
  return person.email_particular_long

def email_particular():
  return person.email_particular_short

def senha():
  return person.password

def celular(mask=False):
  cellphone = person.cellphone

  if mask:
    cellphone = re.sub('[^0-9]+', '', cellphone)

  return cellphone

def telefone_fixo(mask=False):
  telephone = person.telephone

  if mask:
    telephone = re.sub('[^0-9]+', '', telephone)

  return telephone

def CPF(mask=False):
  cpf = person.CPF

  if mask:
    cpf = re.sub('[^0-9]+', '', cpf)

  return cpf

def PIS(mask=False):

  pis = person.PIS

  if mask:
    pis = re.sub('[^0-9]+', '', pis)

  return pis

def RG(mask=False):

  rg = person.RG

  if mask:
    rg = re.sub('[^0-9]+', '', rg)

  return rg

def CNH():
  return person.CNH

def RCN():
  return person.RCN

def título_de_eleitor():
  return person.VOTER_TITLE