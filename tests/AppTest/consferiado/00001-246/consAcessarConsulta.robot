*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consferiado.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Feriado (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Feriado (Consulta)
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Feriado
  Então devo ver a tela: Feriado (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Feriado
  resource_mnu.Clicar No Menu Estrutura | Feriado

Então devo ver a tela: Feriado (Consulta)
  resource_consferiado.Acessar Tela Consulta de Feriados
