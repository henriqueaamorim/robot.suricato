*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conssaidavisitantes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Saída de Visitantes(Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Saída de Visitantes (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  Então devo visualizar a tela: Saída de Visitante (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Saída de Visitante

Então devo visualizar a tela: Saída de Visitante (Consulta)
  resource_conssaidavisitantes.Acessar Tela Consulta de Saída de Visitantes
