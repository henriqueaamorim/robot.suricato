*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***
${EMP}   xpath=//span[@id='select2-SC_tipocola-container']


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

# SCREEN
Acessar Tela: Colaborador Responsável (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Colaborador Responsável
  ${APPNAME}     Set Variable  cnsresponsaterceiro
  ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

Acessar Tela: Colaborador Responsável (Consulta)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Colaborador Responsável
  ${APPNAME}     Set Variable  cnsresponsaterceiro
  ${ELEMENT}     Set Variable  xpath= //*[@id="sc_grid_head"]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

#BUTTON
#resource_btn.

#PESQUISAR COLABORADOR RESPONSÁVEL
Preencher o campo: Tipo "${TIP}"
  Click element  xpath=//span[@id='select2-SC_tipocola-container']
  Input text  xpath=//input[@class='select2-search__field']    ${TIP}

Preencher o campo: Nome "${NOME}"
  Input Text     xpath=//input[@id='SC_nomepess']   ${NOME}

