*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Câmeras de Trânsito

# SCREEN
Acessar Tela Monitoramento de Trânsito - Grupos de Câmeras
#(246)(249)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento de Trânsito - Grupos de Câmeras
  ${APPNAME}  Set Variable  ctrSelecionaGrupoCameras
  ${ELEMENT}  Set Variable    xpath=(//div[@class='col-lg-8 col-md-8 col-sm-8'])[1]
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.
Clicar no Grupo de Monitoramento
# Clica no primeiro grupo 
  Click Element    xpath=/html/body/div/div[2]/div[2]/div[1]/div[1]/div/div[1]/h3/a
