*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI

# SCREEN
Acessar Tela Cadastro de Grupo de Email - EPI (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Email - EPI
  ${APPNAME}  Set Variable  frmGrupoEmailEPI
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Cadastro de Grupo de Email - EPI (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Email - EPI
  ${APPNAME}  Set Variable  frmGrupoEmailEPI
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  


#BUTTON
#resource_btn.

#FIELD

Preencher o campo Grupo de Envio de E-mail "${GRUPO}"
  Input Text  xpath=//*[@name="codigrupemai"][@type="text"]  ${GRUPO}

Preencher o campo Email dos Colaboradores "${EMAIL}"
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244" 
    Input Text  xpath=//*[@name="emailcolab"]  ${EMAIL}
  ELSE
    Input Text  xpath=//*[@name="emailcolab"][@type="text"]  ${EMAIL}
  END
  
Preencher o campo Período para envio dos Email "${PERIODO}"
  Input Text  xpath=//*[@name="emaienvi"][@type="text"]  ${PERIODO}

Selecionar a opção "Sim" no campo Status (Ativo?)
  Click Element    name=statenvi[]


#VERIFY

Verificar o campo Grupo de Envio de E-mail
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}  Grupo de Envio de E-mail   
	Element Attribute Value Should Be  ${CAMPO}  name  codigrupemai


Verificar o campo Email dos colaboradores 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/textarea
	
	Element Should Contain  ${LABEL}   Email dos colaboradores  
	Element Attribute Value Should Be  ${CAMPO}  name   emailcolab


Verificar o campo Período Para envio dos Email 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}   Período Para envio dos Email 
	Element Attribute Value Should Be  ${CAMPO}  name   emaienvi


Verificar o campo Status (Ativos?)
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Status (Ativo?) 
	Element Attribute Value Should Be  ${CAMPO}  name   statenvi[]
