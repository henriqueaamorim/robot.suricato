*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLocalPrestServi.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Local de Prestação de Serviços (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Local de Prestação de Serviços (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Local de Prestação de Serviço
  Então devo ver a tela: Local de Prestação de Serviço (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Local de Prestação de Serviço
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro De Locais De Prestação De Serviços

Então devo ver a tela: Local de Prestação de Serviço (Consulta)
  resource_cnsLocalPrestServi.Acessar Tela Consulta de Local de Prestação de Serviços
