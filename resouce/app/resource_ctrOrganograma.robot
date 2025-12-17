*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

# SCREEN
Acessar Tela Organograma - Treeview
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Estrutura Organograma (Inclusão)
  ${APPNAME}     Set Variable  ctrOrganograma
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
      Sleep  3s
      Mudar Frame Aplicação "TB_iframeContent"
  ELSE
      ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
      Switch Window  locator=NEW
      Maximize Browser Window
  END


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Primeiro Registro
  Click Element  xpath=//*[@id="sd2"]

#FIELD 
E verificar o botão Esconder Todos
  Click Element   xpath=//*[@id="id_img_sc_btnnolines_minus_top"]
E verificar o botão Mostrar Todos 
  Click Element   xpath=//*[@id="id_img_sc_btnnolines_plus_top"]
  