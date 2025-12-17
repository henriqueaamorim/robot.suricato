*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutua | Empresa | Cargo | Cargo

# SCREEN
Acessar Tela Consulta de Cargo 
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cargo
  ${APPNAME}     Set Variable  conscargos
  ${ELEMENT}     Set Variable  xpath=//*[@id="sc_grid_head"]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.
