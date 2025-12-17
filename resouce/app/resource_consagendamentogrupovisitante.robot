*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento de Grupo

# SCREEN
Acessar Tela Consulta de Agendamento de Grupo de Visitantes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Agendamento de Grupo de Visitantes
  ${APPNAME}  Set Variable  consagendamentogrupovisitante
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  




#BUTTON
#resource_btn.


#FIELD
Preencher o campo Grupo Visitante "${NUM}"
  Input Text  name=grupvisi   ${NUM}