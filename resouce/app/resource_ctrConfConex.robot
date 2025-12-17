*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configuração | Equipamento | Conex

# SCREEN
Acessar Tela: Configuração Conex
  ${OBJ}         Set Variable   SCN
  ${APPNAME}     Set Variable   cnsLocalPrestServi
  ${SCREENNAME}  Set Variable   Configuração Conex
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'Configuração Conex')]
  Sleep  3s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


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