*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Filial
# REPORT
resource_report.

# SCREEN
Acessar Tela: Grupo de Cargo - Automação
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Cargo - Automação
  ${APPNAME}     Set Variable  cnsEmpresasCargos
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'Grupo de Cargo - Automação')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.
