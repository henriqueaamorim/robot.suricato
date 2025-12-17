*** Settings ***
Library         SeleniumLibrary
Library         ../../api/data/client/person.py
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Candidato | Cadastro de Candidato

# SCREEN
Acessar Tela Candidato (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Candidato (Inclusão)
  ${APPNAME}  Set Variable  frmcadastroimprensas
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Candidato (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Candidato (Inclusão)
  ${APPNAME}  Set Variable  frmcadastroimprensa
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#FIELD
Preencher o campo Nome "${NOME}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="nomepess"][@type="text"]

  IF  '${NOME}' == 'API'
    ${NOME}  Run Keyword  Nome Completo  unidecode=True
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NOME}

Preencher o campo Data de Nascimento "${DATA}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="datanasc"][@type="text"]

  IF  '${DATA}' == 'API'
    ${DATA}  Run Keyword  Data de Nascimento   
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${DATA}

Preencher o campo Número da Carteira de Identidade "${IDENTIDADE}"
  ${ELEMENT}  Set Variable  xpath=//input[@id="id_sc_field_numecartiden"]

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${IDENTIDADE}

Preencher o campo Número do CPF "${CPF}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="numecpf"][@type="text"]

  IF  '${CPF}' == 'API'
    ${CPF}  Run Keyword  CPF  unidecode=True
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CPF}

Preencher o campo Telefone de Contato "${TELEFONE}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="telecon1"][@type="text"]

  IF  '${TELEFONE}' == 'API'
    ${TELEFONE}  Run Keyword  Telefone Fixo  unidecode=True
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${TELEFONE}

Preencher o campo Email "${EMAIL}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="mailcand"][@type="text"]

  IF  '${EMAIL}' == 'API'
    ${EMAIL}  Run Keyword  Email Profissional 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${EMAIL}

Selecionar uma opção no campo Organograma "${ORGA}"
  Wait Until Element Is Visible     xpath=//select[@id="id_sc_field_codiorgaloca"]   timeout= 3 seconds
  Select From List By Label   xpath=//select[@id="id_sc_field_codiorgaloca"]   ${ORGA}
  

Selecionar uma opção no campo Local "${LOCAL}"
  Wait Until Element Is Visible   xpath=//select[@name="locaorga"]     timeout= 3 seconds
  Sleep  2s
  Select From List By Index       xpath=//select[@id="id_sc_field_locaorga"]   ${LOCAL}

Selecionar uma opção no campo Cód. Tipo de Usuário "${COD}"
  Sleep  2s
  Wait Until Element Is Visible   xpath=//select[@id="id_sc_field_idtipousuar"]    timeout= 3 seconds
	Select From List By Label   xpath=//select[@id="id_sc_field_idtipousuar"]   ${COD}

Selecionar uma opção no campo Portador de Necessidades Especiais - PNE? "${OPCAO}"
  Select from list by Label   xpath=//*[@name="portnessespe"]  ${OPCAO}

Preencher o campo CEP "${CEP}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="codicep"][@type="text"]

  IF  '${CEP}' == 'API'
    ${CEP}  Run Keyword  CEP
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CEP}

Preencher o campo Endereço "${ENDERECO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="enderesi"][@type="text"]

  IF  '${ENDERECO}' == 'API'
    ${ENDERECO}  Run Keyword  Endereço
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${ENDERECO}

Preencher o campo Número "${NUMERO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="numeende"][@type="text"]

  IF  '${NUMERO}' == 'API'
    ${NUMERO}  Run Keyword  Número 
  END
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NUMERO}

Preencher o campo Complemento "${COMPLEMENTO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="compende"][@type="text"]

  IF  '${COMPLEMENTO}' == 'API'
    ${COMPLEMENTO}  Run Keyword  Complemento 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${COMPLEMENTO}

Preencher o campo Bairro "${BAIRRO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="nomebair"][@type="text"]

  IF  '${BAIRRO}' == 'API'
    ${BAIRRO}  Run Keyword  Bairro 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${BAIRRO}

Preencher o campo Cidade "${CIDADE}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="nomecida"][@type="text"]

  IF  '${CIDADE}' == 'API'
    ${CIDADE}  Run Keyword  Cidade 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CIDADE}

Preencher o campo Estado "${ESTADO}"
  ${ELEMENT}  Set Variable  xpath=//*[@name="nomeesta"][@type="text"]

  IF  '${ESTADO}' == 'API'
    ${ESTADO}  Run Keyword  Estado 
  END

  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${ESTADO}

Preencher o campo Observações "${OBS}"
	Input Text  xpath=//*[@name="obsecand"]  ${OBS}
	

#VERIFY 

E verificar o campo Nome 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomepess']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_nomepess']
	
	Element Should Contain  ${LABEL}  Nome  
	Element Attribute Value Should Be  ${CAMPO}  name  nomepess

E verificar o campo Data de Nascimento 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datanasc']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datanasc']

	Element Should Contain  ${LABEL}  Data de Nascimento
	Element Attribute Value Should Be  ${CAMPO}  name  datanasc

E verificar o campo Número da Carteira de Identidade 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numecartiden']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numecartiden']

	Element Should Contain  ${LABEL}  Número da Carteira de Identidade 
	Element Attribute Value Should Be  ${CAMPO}  name  numecartiden  

E verificar o campo Número do CPF  
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numecpf']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numecpf']

	Element Should Contain  ${LABEL}  Número do CPF 
	Element Attribute Value Should Be  ${CAMPO}  name  numecpf

E verificar o campo Telefone de Contato 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_telecon1']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_telecon1']

	Element Should Contain  ${LABEL}  Telefone de Contato
	Element Attribute Value Should Be  ${CAMPO}  name  telecon1

E verificar o campo Email     
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_mailcand']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_mailcand']

	Element Should Contain  ${LABEL}  Email 
	Element Attribute Value Should Be  ${CAMPO}  name  mailcand

E verificar o campo Organograma 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codiorgaloca']
	${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codiorgaloca_obj']

	Element Should Contain  ${LABEL}  Organograma 
	Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_codiorgaloca_obj

E verificar o campo Local 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_locaorga']
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_locaorga-container']

	Element Should Contain   ${LABEL}   Local 
	Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_locaorga-container

E verificar o campo Cód. Tipo de Usuário
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idtipousuar']
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_idtipousuar-container']

	Element Should Contain  ${LABEL}  Cód. Tipo de Usuário
	Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_idtipousuar-container    

E verificar o campo Portador de Necessidades Especiais - PNE? 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_portnessespe']
	${CAMPO1}  Set Variable  xpath=//input[@id='id-opt-portnessespe-0']
	${CAMPO2}  Set Variable  xpath=//input[@id='id-opt-portnessespe-1']  

	Element Should Contain  ${LABEL}  Portador de Necessidades Especiais - PNE? 
	Element Attribute Value Should Be  ${CAMPO1}  id  id-opt-portnessespe-0 
  Element Attribute Value Should Be  ${CAMPO2}  id  id-opt-portnessespe-1 

E verificar o campo Cep         
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_codicep']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_codicep']

	Element Should Contain  ${LABEL}  Cep
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_codicep

E verificar o campo Endereço      
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_enderesi']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_enderesi']

	Element Should Contain  ${LABEL}  Endereço
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_enderesi       

E verificar o campo Número     
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numeende']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_numeende']

	Element Should Contain  ${LABEL}  Número 
	Element Attribute Value Should Be  ${CAMPO}  name  numeende

E verificar o campo Complemento   
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_compende']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_compende']

	Element Should Contain  ${LABEL}  Complemento
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_compende

E verificar o campo Bairro   
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomebair']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_nomebair']

	Element Should Contain  ${LABEL}  Bairro
	Element Attribute Value Should Be  ${CAMPO}  name  nomebair

E verificar o campo Cidade   
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomecida']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_nomecida']

	Element Should Contain  ${LABEL}  Cidade 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_nomecida

E verificar o campo Estado   
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomeesta']
	${CAMPO}  Set Variable  xpath=//input[@id="id_sc_field_nomeesta"]

	Element Should Contain  ${LABEL}  Estado 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_nomeesta 

E verificar o campo Observações   
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_obsecand']
	${CAMPO}  Set Variable  xpath=//textarea[@id="id_sc_field_obsecand"]

	Element Should Contain  ${LABEL}  Observações
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_obsecand

Preencher o campo Nome "API" Preencher
  
  Input Text    name= 

Preencher o campo Data de Nascimento "API" Preencher
  
  Input Text    name= 

Preencher o campo Número do CPF "API" Preencher
  
  Input Text    name= 

Preencher o campo Telefone de Contato "API" Preencher
  
  Input Text    name= 

Preencher o campo Email "API" Preencher
  
  Input Text    name= 

Selecionar uma opção no campo Organograma "Presidencia" 
  Select From List By Label    name= 

Selecionar uma opção no campo Local "1" 
  Select From List By Label    name= 

Selecionar uma opção no campo Portador de Necessidades Especiais - PNE? "Não" 
  Select From List By Label    name= 

Preencher o campo CEP "API" Preencher
  
  Input Text    name= 

Preencher o campo Endereço "API" Preencher
  
  Input Text    name= 

Preencher o campo Número "API" Preencher
  
  Input Text    name= 

Preencher o campo Complemento "API" Preencher
  
  Input Text    name= 

Preencher o campo Bairro "API" Preencher
  
  Input Text    name= 

Preencher o campo Cidade "API" Preencher
  
  Input Text    name= 

Preencher o campo Estado "API" Preencher
  
  Input Text    name= 
