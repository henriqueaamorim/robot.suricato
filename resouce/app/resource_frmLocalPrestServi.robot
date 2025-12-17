*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro De Locais De Prestação De Serviços

# SCREEN
Acessar Tela Cadastro de Local de Prestação de Serviços
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Local de Prestação de Serviço
  ELSE
      ${SCREENNAME}  Set Variable  Cadastro de Local de Prestação de Serviços
  END
  ${APPNAME}  Set Variable  frmLocalPrestServi
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Cadastro de Local de Prestação de Serviços (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Local de Prestação de Serviços
  ${APPNAME}  Set Variable  frmLocalPrestServi
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#BUTTON



#FIELD 
Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="desclocapresserv"][@type="text"]  ${NOME}


#VERIFY 

E verifica o campo Nome
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/input
	
	Element Should Contain  ${LABEL}  Nome 
	Element Attribute Value Should Be  ${CAMPO}  name  desclocapresserv