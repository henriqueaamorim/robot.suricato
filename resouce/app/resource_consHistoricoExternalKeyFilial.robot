*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial

# SCREEN
Acessar Tela Consulta de Histórico de Codin por Filial
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Histórico de Codin por Filial
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Histórico de Codin por Filial
  END
  ${APPNAME}  Set Variable  consHistoricoExternalKeyFilial
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta de Histórico de Codin por Filial - Filtro
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consHistoricoExternalKeyFilial
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Histórico de Codin por Filial
    ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Histórico de Codin por Filial
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  



#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Código da Filial "${COD}"
  Select from list by label  xpath=//*[@name="codifili_cond"]  ${COD}
Preencher o campo Código da Filial "${COD}"
  Input Text  xpath=//*[@name="codifili"][@type="text"]  ${COD}
Selecionar uma opção no campo Razão Social "${RZ}"
  Select from list by label  xpath=//*[@name="razasoci_cond"]  ${RZ}
Preencher o campo Razão Social "${RZ}" 
  Input Text  xpath=//*[@name="razasoci"][@type="text"]  ${RZ}
Selecionar uma opção no campo Codin "${CODIN}"
  Select from list by label  xpath=//*[@name="codicole_cond"]  ${CODIN}
Preencher o campo Codin "${CODIN}"  
  Input Text  xpath=//*[@name="codicole"][@type="text"]  ${CODIN}
Selecionar uma opção no campo Descrição "${DESC}"
  Select from list by label  xpath=//*[@name="desccole_cond"]  ${DESC}
  
Preencher o campo Descrição "${DESC}"   
  Input Text  xpath=//*[@name="desccole"][@type="text"]  ${DESC}

Selecionar uma opção no campo Chave Externa "${CHAVE}"
  Select from list by label  xpath=//*[@name="external_key_cond"]  ${CHAVE}

Preencher o campo Chave Externa "${CHAVE}" 
  Input Text  xpath=//*[@name="external_key"][@type="text"]  ${CHAVE}


#VERIFY LABELS

Verificar a label Código da Filial
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código da Filial')]
	Element Should Contain  ${LABEL}   Código da Filial

Verificar a label Razão Social
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Razão Social')]
	Element Should Contain  ${LABEL}   Razão Social  

Verificar a label Codin
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Codin')]
	Element Should Contain  ${LABEL}   Codin

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Chave Externa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Chave Externa')]
	Element Should Contain  ${LABEL}   Chave Externa


#VERIFY CAMPOS

Verificar o campo Código da Filial	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código da Filial')]
	${CAMPO}      Set Variable  xpath=//input[@name='codifili']
  sleep   2s
  Element Should Contain              ${LABEL}    Código da Filial	
  Element Attribute Value Should Be   ${CAMPO}    name    codifili

Verificar o campo Razão Social	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Razão Social')]
	${CAMPO}      Set Variable  xpath=//input[@name='razasoci']
  sleep   2s
  Element Should Contain             ${LABEL}   Razão Social	
  Element Attribute Value Should Be  ${CAMPO}   name   razasoci


Verificar o campo Codin
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Codin')]
	${CAMPO}      Set Variable  xpath=//input[@name='codicole']
  sleep    2s
	Element Should Contain             ${LABEL}   Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   codicole


Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='desccole']
  sleep    2s
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   desccole


Verificar o campo Chave Externa	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Chave Externa')]
	${CAMPO}      Set Variable  xpath=//input[@name='external_key_cond']
  sleep   2s
	Element Should Contain             ${LABEL}   Chave Externa	
 	Element Attribute Value Should Be  ${CAMPO}   name   external_key_cond


 
  
