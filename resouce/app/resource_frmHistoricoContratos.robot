*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Contrato

# SCREEN
Acessar Tela Histórico de Contrato (Edição)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoContratos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Contrato
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Histórico de Contratos (Atualização) 
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Histórico de Contratos (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmHistoricoContratos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Contrato
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Histórico de Contratos (Atualização) 
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END  
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
Clicar No Botão Buscar Dados Externos Para Empresa Terceirizada
  ${ELEMENT}  Set Variable  id=cap_padcodiemprcont

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Código do Colaborador
  ${ELEMENT}  Set Variable  id=cap_idcolab

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Preencher o campo Código Terceiro "${COD}"
  Input Text  xpath=//input[@id="id_sc_field_idcolab"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Preencher o campo Data da Alteração "${DATA}"
  Input Text  xpath=//input[@id="id_sc_field_dataalte"][@type="text"]  ${DATA}

Preencher o campo Empresa Terceirizada "${EMPRESA}"
  Input Text  xpath=//*[@name="padcodiemprcont"][@type="text"]  ${EMPRESA}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[1]/td[1]

Selecionar uma opção no campo Número do Contrato "${NUM}"
  Select From List By Label  xpath=//input[@id="id_sc_field_idcont"]  ${NUM}

Preencher o campo Data Termino "${DATA}"
  Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA}


#VERIFY 

E verificar o campo Código Terceiro    
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcolab']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_idcolab']
	
	Element Should Contain  ${LABEL}  Código Terceiro
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_idcolab

E verificar o campo Empresa   
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumemp']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumemp']
	
	Element Should Contain  ${LABEL}  Empresa
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumemp


E verificar o campo Tipo
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padtipcol']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padtipcol']
	
	Element Should Contain  ${LABEL}  Tipo
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padtipcol

E verificar o campo Matrícula
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnumcad']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnumcad']
	
	Element Should Contain  ${LABEL}  Matrícula
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnumcad

E verificar o campo Nome 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padnome']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padnome']
	
	Element Should Contain  ${LABEL}  Nome
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padnome

E verificar o campo Data da Alteração 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_dataalte']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_dataalte']
	
	Element Should Contain  ${LABEL}  Data da Alteração 
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_dataalte

E verificar o campo Contrato 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcont']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcont']
	
	Element Should Contain  ${LABEL}  Contrato  
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_idcont

E verificar o campo Empresa Terceirizada 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_padcodiemprcont']
	${CAMPO}  Set Variable  xpath=//td[@id='hidden_field_data_padcodiemprcont']
	
	Element Should Contain  ${LABEL}  Empresa Terceirizada 
	Element Attribute Value Should Be  ${CAMPO}  id  hidden_field_data_padcodiemprcont

E verificar o campo Término
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datafina']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datafina']
	
	Element Should Contain  ${LABEL}  Término
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datafina