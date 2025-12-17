*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitantes com Captura de Fotos

# SCREEN
Acessar Tela Consulta de Crachás de Visitantes (Consulta) (Busca Externa)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta de Crachás de Visitantes (Consulta)
  ${APPNAME}     Set Variable  conscrachavisitante
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${HANDLES}     Get Window Handles

  Switch Window  ${HANDLES}[1]
  Maximize Browser Window
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Selecionar O Primeiro Crachá de Visitante
  Select Radio Button  xpath=//*[@id="apl_conscrachavisitante#?#1"]/tbody/tr[2]/td[1]/font/input



#BUTTON


#resource_btn.
