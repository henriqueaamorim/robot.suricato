*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento LOG Gerenciador

# SCREEN
Acessar Tela Monitoramento LOG Gerenciador
#(246)(249)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento LOG Gerenciador
  ${APPNAME}  Set Variable  ctr_gerserv_monitor
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.


#VERIFY
Verificar a label Data/Hora
#(246)(249)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Data/Hora')]
  Element Should Contain  ${LABEL}  Data/Hora

Verificar a label Logger
#(246)(249)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Logger')]
  Element Should Contain  ${LABEL}  Logger

Verificar a label Tipo
#(246)(249)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Tipo')]
  Element Should Contain  ${LABEL}  Tipo

Verificar a label Mensagem
#(246)(249)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Mensagem')]
  Element Should Contain  ${LABEL}  Mensagem