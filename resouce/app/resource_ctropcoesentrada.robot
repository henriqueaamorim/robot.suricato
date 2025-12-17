*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Visitante

# SCREEN
Acessar Tela Opções de Entrada de Visitante
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctropcoesentrada
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Opções de Entrada de Visitante
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable   Opções de Entrada de Visitante
    ${ELEMENT}  Set Variable      xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be   ${ELEMENT}   ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

#VERIFY DIV: Cadastrar Visitantes


Verificar a Div: Cadastrar Visitantes
  ${DIV}  Set Variable   xpath=//h5[contains(text(),'Cadastrar Visitantes')]
  Element Should Contain  ${DIV}  Cadastrar Visitantes

Verificar o P: Realizar entrada de visitantes
  ${P}   Set Variable   xpath=//p[contains(text(),'Realizar entrada de visitantes')]
  Element Should Contain  ${P}    Realizar entrada de visitantes.

Verificar o BTN: Cadastrar Entrada
  ${BTN}         Set Variable   xpath=//a[contains(text(),'Cadastrar Entrada')]
  Element Should Contain  ${BTN}  Cadastrar Entrada
  
#VERIFY DIV: Últimas Visitas

Verificar a DIV: Últimas Visitas
  ${DIV}         Set Variable   xpath=//h5[contains(text(),'Últimas Visitas')]
  Element Should Contain  ${DIV}  Últimas Visitas

Verificar o P: Últimas visitas realizadas
  ${P}   Set Variable   xpath=//p[contains(text(),'Últimas visitas realizadas')]
  Element Should Contain  ${P}    Últimas visitas realizadas.

Verificar o BTN: Acessar Visitas
  ${BTN}         Set Variable   xpath=//a[contains(text(),'Acessar Visitas')]
  Element Should Contain  ${BTN}  Acessar Visitas



#VERIFY DIV: Agendar Visitas

Verificar a DIV: Agendar Visitas
  ${DIV}         Set Variable   xpath=//h5[contains(text(),'Agendar Visitas')]
  Element Should Contain  ${DIV}  Agendar Visitas

Verificar o P: Agendamento de visitas
  ${P}   Set Variable   xpath=//p[contains(text(),'Agendamento de visitas')]
  Element Should Contain  ${P}    Agendamento de visitas

Verificar o BTN: Cadastrar Agendamento
  ${BTN}         Set Variable   xpath=//a[contains(text(),'Cadastrar Agendamento')]
  Element Should Contain  ${BTN}  Cadastrar Agendamento

  
  


  