*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Visitante | Cadastro de Visitante

# SCREEN
Acessar Tela Consulta de Empresas Terceiras (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Empresa Terceira
  ${APPNAME}     Set Variable  consoutraempresa
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela de Empresa Terceira (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Empresa Terceira
  ${APPNAME}     Set Variable  consoutraempresa
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

# FIELD
Preencher o campo Nome da Empresa Terceira "${EMP_TERC}"
  Input Text  xpath=//input[@id='SC_nomeemprcont']   ${EMP_TERC}