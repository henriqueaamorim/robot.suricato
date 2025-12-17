*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá

# SCREEN
Acessar Tela Crachá Titular (Edição)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Crachá Titular
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Crachá Titular (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmcrachaempregado
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"    
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela Crachá Titular (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmcrachaempregado
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Crachá Titular
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Crachá Titular (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe" 
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
Clicar No Botão Buscar Dados Externos Para Código do Colaborador
  ${ELEMENT}  Set Variable  id=cap_idcolab

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Crachá
  ${ELEMENT}  Set Variable  id=cap_icard

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

#FIELD
Preencher o campo Código do Colaborador "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}
  Click Element  xpath=//a[@id='cap_idcolab']

Preencher o campo Data de Início * "${DATA}"
  Input Text  xpath=//input[@id="id_sc_field_datainic"]  ${DATA}

Preencher o campo Hora de Início * "${HORA}"
  Sleep  2s
  Input Text  xpath=//input[@id="id_sc_field_horainicsc9bugfixed"]  ${HORA}  

Preencher o campo Crachá "${CRACHA}"  
  Input Text  xpath=//input[@id="id_sc_field_icard"]  ${CRACHA}
  
Preencher o campo Data de Término "${DATA_TERM}""
  Wait Until Element Is Visible      //input[@name="datafina"]    timeout=7s
  Input Text  xpath=//input[@name="datafina"][@type="text"]   ${DATA_TERM}

Preencher o campo Hora do Término "${HORA}"
  Input Text  xpath=//input[@id="id_sc_field_horafina"]   ${HORA}


#VERIFY 
Verificar o campo Código do Colaborador 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcolab']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcolab']
	Element Should Contain  ${LABEL}   Código do Colaborador 
	Element Attribute Value Should Be   ${CAMPO}  id  id_sc_field_idcolab

Verificar o campo Empresa
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumemp']
  ${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumemp']
	Element Should Contain  ${LABEL}  Empresa 
  Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumemp

Verificar o campo Tipo
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcol']
  ${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcol']
	Element Should Contain  ${LABEL}  Tipo
  Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padtipcol

Verificar o campo Matrícula
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumcad']
  ${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumcad']
	Element Should Contain  ${LABEL}   Matrícula
  Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumcad

Verificar o campo Nome
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnome']
  ${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnome']
	Element Should Contain  ${LABEL}  Nome
  Element Attribute Value Should Be  ${CAMPO}  id   hidden_field_data_padnome

Verificar o campo Data de Início  
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datainic']
  ${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datainic']
	Element Should Contain  ${LABEL}  Data de Início  
  Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_datainic

Verificar o campo Hora de Início
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horainicsc9bugfixed']
  ${CAMPO}  Set Variable  xpath=//span[@id='id_read_off_horainicsc9bugfixed']
	Element Should Contain  ${LABEL}  Hora de Início
  Element Attribute Value Should Be  ${CAMPO}  id   id_read_off_horainicsc9bugfixed  

Verificar o campo Crachá 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_icard']
  ${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_icard']
	Element Should Contain  ${LABEL}  Crachá
  Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_icard   

Verificar o campo Data de Término
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datafina']
  ${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datafina']
	Element Should Contain  ${LABEL}  Data de Término
  Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_datafina

Verificar o campo Hora de Término
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_horafina']
  ${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_horafina']
	Element Should Contain  ${LABEL}   Hora de Término
  Element Attribute Value Should Be  ${CAMPO}  id   id_sc_field_horafina  
  
  


