*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Ponte

# SCREEN
Acessar Tela Pontes (Atualização)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmPontes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Programação - Troca de Ponte
    ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE 
    ${SCREENNAME}  Set Variable  Pontes (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Pontes (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmPontes
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Programação - Troca de Ponte
    ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE 
    ${SCREENNAME}  Set Variable  Pontes (Inclusão)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  


#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Colaborador "${CODIGO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CODIGO}
  # Necessário clicar fora para validar  
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[1]

Preencher o campo Data 1 "${DATA}"
  Input Text  xpath=//*[@name="datahoraum"][@type="text"]  ${DATA}

Preencher o campo Data 2 "${DATA}"
  Input Text  xpath=//*[@name="datahoradois"][@type="text"]  ${DATA}

#VERIFY 

E verificar o campo Código do Colaborador 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_idcolab']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_idcolab']
	
	Element Should Contain  ${LABEL}  Código do Colaborador 
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_idcolab


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

E verificar o campo Data 1 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datahoraum']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datahoraum']
	
	Element Should Contain  ${LABEL}  Data 1    
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datahoraum  

E verificar o campo Data 2 
  ${LABEL}  Set Variable  xpath=//td[@id='hidden_field_label_datahoradois']
	${CAMPO}  Set Variable  xpath=//input[@id='id_sc_field_datahoradois']
	
	Element Should Contain  ${LABEL}  Data 2   
	Element Attribute Value Should Be  ${CAMPO}  id  id_sc_field_datahoradois  
