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
Acessar Tela Local de Organograma
  #Screen apenas para a versão 172.16.14.246
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Local de Organograma 
  ${APPNAME}     Set Variable  blankorganograma
  ${ELEMENT}     Set Variable  xpath=/html/body/div[1]/div[3]
  
  Sleep  3s
  Mudar Frame Aplicação "mnu_iframe"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


Acessar Tela Organograma
  ${OBJ}         Set Variable  Scn
  ${APPNAME}     Set Variable  blankorganograma
  ${SCREENNAME}  Set Variable  Estrutura de Organograma
  #${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]


  Mudar Frame Aplicação "mnu_iframe"

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  4s

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Estrutura Organograma (Edição)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Estrutura Organograma
  ${APPNAME}     Set Variable  blankorganograma
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  
  Sleep  3s
  Mudar Frame Aplicação "TB_iframeContent"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON

Clicar nos 3 pontinhos
    sleep  2s
    Click Element  xpath=//*[@class="node-menu"]

Clicar na opção Editar
    Click Element  xpath=//*[@id="link_0"]
    sleep  2s

Clicar na opção Adicionar
    Click Element  xpath=//*[@id="link_1"]

Clicar na opção Excluir
    Click Element  xpath=//*[@id="link_2"]