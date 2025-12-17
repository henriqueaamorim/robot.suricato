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
Acessar Tela Consulta de Local de Prestação de Serviços
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Local de Prestação de Serviço
  ELSE
      ${SCREENNAME}  Set Variable  Consulta de Local de Prestação de Serviços
  END
  ${APPNAME}  Set Variable  cnsLocalPrestServi
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Filtro de Local de Prestação de Serviços
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Local de Prestação de Serviço
  ${APPNAME}  Set Variable  cnsLocalPrestServi
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="desclocapresserv"][@type="text"]  ${NOME}


#VERIFY LABELS

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]

  sleep  2s
  Element Should Contain  ${LABEL}    Pesquisa


Verificar o campo Nome
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Nome')]
	${CAMPO}      Set Variable  xpath=//input[@name='desclocapresserv']

  sleep  2s
  Element Should Contain             ${LABEL}   Nome
  Element Attribute Value Should Be  ${CAMPO}   name   desclocapresserv