*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

# SCREEN
Acessar Tela Consulta de Grupo de Acesso 
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsPermissoesAcessoPesquisa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Grupo de Acesso
    ${ELEMENT}     Set Variable   xpath=(//td[@class='scGridHeaderFont'])[4]
  ELSE 
    ${SCREENNAME}  Set Variable  Consulta de Grupo de Acesso
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END

  Sleep  3s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.
