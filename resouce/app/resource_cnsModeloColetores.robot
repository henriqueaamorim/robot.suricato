*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Codin | Cadastro de Codin

# SCREEN
Acessar Tela Consulta de Modelos de Codins (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Modelos de Codins
  ${APPNAME}     Set Variable  cnsModeloColetores
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta de Modelo de Equipamento
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Equipamento
  ${APPNAME}     Set Variable  cnsColetorescad
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta de Modelo de Equipamento (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Modelo de Equipamento
  ${APPNAME}     Set Variable  cnsColetorescad
  ${ELEMENT}     Set Variable  xpath=(//td[@class='scFilterHeaderFont'])[4]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#VERIFY LABELS

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}    Código 

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}    Descrição

Verificar a label Tipo de Comunicação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo de Comunicação')]
	Element Should Contain  ${LABEL}    Tipo de Comunicação


#VERIFY CAMPOS

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descmodecole']

  sleep  2s
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   descmodecole


