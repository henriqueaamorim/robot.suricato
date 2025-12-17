*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

# SCREEN
Acessar Tela Consulta de Contratos
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Contrato
    ${ELEMENT}     Set Variable    xpath=//*[@id="sc_grid_head"]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]
  ELSE
    ${SCREENNAME}  Set Variable    Consulta de Contratos
    ${ELEMENT}     Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  cnsContratos

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Contrato (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Contrato (Filtro)
  ${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ${APPNAME}  Set Variable  cnsContratos

  Sleep  2s 
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
 
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Número do Contrato "${NUM}"
  Input Text  xpath=//*[@name="numecont"][@type="text"]  ${NUM}

Preencher o campo Empresa Terceira "${EMP_TERC}"
  Click Element  xpath=//*[@id="id_hide_ep_nomeemprcont"]/td/span/span[1]/span
  Input Text     xpath=//*[@id="grid_search"]/span/span/span[1]/input   ${EMP_TERC} 
  Sleep  2s
  Click Element  xpath=//form[@name='F1']
  


