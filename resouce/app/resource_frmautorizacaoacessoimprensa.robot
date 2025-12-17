*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

# SCREEN
Acessar Tela Autorização de Acesso Candidato (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Autorização de Acesso de Candidato
  ${APPNAME}  Set Variable  frmautorizacaoacessoimprensa
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Autorização de Acesso Candidato (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Autorização de Acesso de Candidato
  ${APPNAME}  Set Variable  frmautorizacaoacessoimprensa
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
Clicar No Botão Buscar Dados Externos Para Candidato
  ${ELEMENT}  Set Variable  id=cap_idcand

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Tabela do Organograma
  ${ELEMENT}  Set Variable  id=cap_codiorgaloca

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}
  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Código do Acesso
  ${ELEMENT}  Set Variable  id=cap_tipoaces

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD

Preencher campo Candidato "${CANDIDATO}"
  Input Text  xpath=//*[@name="idcand"][@type="text"]  ${CANDIDATO}
  # Necessário clicar fora para valdiar o Input acima 
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher campo Código do Acesso "${COD}"
  Input Text  xpath=//*[@name="tipoaces"][@type="text"]  ${COD}
  # Necessário clicar fora para valdiar o Input acima 
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]

Preencher campo Data "${DATA}"
  Input Text  xpath=//*[@name="dataagencand"][@type="text"]  ${DATA}

Preencher campo Hora "${HORA}"
  Input Text  xpath=//input[@id="id_sc_field_horaautoacessc9bugfixed"]   ${HORA}  

Preencher campo Data do Agendamento "${DATA_AGENDA}"
  Input Text  xpath=//*[@name="horaagencand"][@type="text"]  ${DATA_AGENDA}

Selecionar uma opção no campo Motivo * "${MOTIVO}"
  Select From List By Index  xpath=//select[@id="id_sc_field_tipoaces"]   ${MOTIVO}    

Preencher campo Hora do Agendamento "${HORA_AGENDA}"
  Input Text  xpath=//*[@name="horaagencand"][@type="text"]  ${HORA_AGENDA}

Preencher campo Tabela do Organograma "${ORG}" 
  Input Text  xpath=//*[@name="codiorgaloca"][@type="text"]  ${ORG}

Preencher campo Local "${LOCAL}"
  Input Text  xpath=//*[@name="localorgan"][@type="text"]  ${LOCAL}
  # Necessário clicar fora para valdiar o Input acima 
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]
  Sleep  2s


  #VERIFY



E verficar o campo Data
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataauto']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horaautoacessc9bugfixed']
	
	Element Should Contain  ${LABEL}  Data
	Element Attribute Value Should Be  ${CAMPO}  name  horaautoacessc9bugfixed


E verficar o campo Hora
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horaautoacessc9bugfixed']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horaautoacessc9bugfixed']

	Element Should Contain  ${LABEL}  Hora
	Element Attribute Value Should Be  ${CAMPO}  name  horaautoacessc9bugfixed

E veriicar o campo Candidato 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcand']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcand']

	Element Should Contain  ${LABEL}  Candidato 
	Element Attribute Value Should Be  ${CAMPO}  name  idcand

E veriicar o campo Nome 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_nomepess']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_nomepess']

	Element Should Contain  ${LABEL}  Nome 
	Element Attribute Value Should Be  ${CAMPO}  id   hidden_field_data_nomepess  

E veriicar o campo CPF 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numecpf']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_numecpf']

	Element Should Contain  ${LABEL}  CPF 
	Element Attribute Value Should Be  ${CAMPO}  id   hidden_field_data_numecpf    

E veriicar o campo Carteira de Identidade	 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_numecartiden']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_numecartiden']

	Element Should Contain  ${LABEL}  Carteira de Identidade	 
	Element Attribute Value Should Be  ${CAMPO}  id   hidden_field_data_numecartiden  

E veriicar o campo Foto 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_foto']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_foto']

	Element Should Contain  ${LABEL}  Foto 
	Element Attribute Value Should Be  ${CAMPO}  id   hidden_field_data_foto

E veriicar o campo Motivo  
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_tipoaces']
	${CAMPO}  Set Variable  xpath=//span[@id='select2-id_sc_field_tipoaces-container']

	Element Should Contain  ${LABEL}  Motivo  
	Element Attribute Value Should Be  ${CAMPO}  id  select2-id_sc_field_tipoaces-container


E veriicar o campo Código do Acesso 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Código do Acesso 
	Element Attribute Value Should Be  ${CAMPO}  name  tipoaces

E veriicar o campo Data do Agendamento  
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataagencand']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_dataagencand']

	Element Should Contain  ${LABEL}  Data do Agendamento  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_dataagencand 

E veriicar o campo Hora do Agendamento 
	${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horaagencand']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horaagencand']

	Element Should Contain  ${LABEL}  Hora do Agendamento 
	Element Attribute Value Should Be  ${CAMPO}  name  horaagencand

E veriicar o campo Tabela do Organograma  
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Tabela do Organograma 
	Element Attribute Value Should Be  ${CAMPO}  name  codiorgaloca

E veriicar o campo Local
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Local
	Element Attribute Value Should Be  ${CAMPO}  name  localorgan