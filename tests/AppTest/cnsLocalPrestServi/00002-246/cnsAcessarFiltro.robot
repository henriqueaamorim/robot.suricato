*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLocalPrestServi.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Local de Prestação de Serviços (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Local de Prestação de Serviços (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO} 
  
  Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Local de Prestação de Serviço
  Quando ver a tela: Local de Prestação de Serviços (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Local de Prestação de Serviços (Filtro)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Grupo de REP | Local de Prestação de Serviço
  resource_mnu.Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro De Locais De Prestação De Serviços

Quando ver a tela: Local de Prestação de Serviços (Consulta)
  resource_cnsLocalPrestServi.Acessar Tela Consulta de Local de Prestação de Serviços

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Local de Prestação de Serviços (Filtro)
    resource_cnsLocalPrestServi.Acessar Tela Filtro de Local de Prestação de Serviços