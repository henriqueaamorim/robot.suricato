*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu

# SCREEN
Acessar Tela Consulta de Situações 
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Situação
  ${APPNAME}     Set Variable  cnsSituacoesAfastamento
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'Situação')]
  Sleep  3s
  Mudar Frame Aplicação "TB_iframeContent" 
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela de Situação (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Situação
  ${APPNAME}     Set Variable  cnsSituacoesAfastamento
  ${ELEMENT}     Set Variable  xpath=//*[@id="main_table"]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#FIELD

Preencher o campo: Descrição da Situação "${SITUAÇÃO}"
  Input Text  xpath=//input[@id='SC_descricao'][@type="text"]   ${SITUAÇÃO}


