*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras

# SCREEN
Acessar Tela Monitoramento de Acesso Cameras
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento de Acesso Cameras
  ${APPNAME}  Set Variable  ctr_monitoramento_camera
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.



#VERIFY
Verificar a label CFTV (Bloco)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'CFTV')]
  Element Should Contain  ${LABEL}  CFTV

Verificar a label Câmera (Bloco)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Câmera')]
  Element Should Contain  ${LABEL}  Câmera

Verificar a label Qualidade (Bloco)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Qualidade')]
  Element Should Contain  ${LABEL}  Qualidade

Verificar a label Imagem (Bloco)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Imagem')]
  Element Should Contain  ${LABEL}  Imagem