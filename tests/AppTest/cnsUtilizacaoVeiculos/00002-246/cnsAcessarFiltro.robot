*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsUtilizacaoVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Utilização de Veículos (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Utilização de Veículos (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Consultas | Utilização
  Quando visualizar a tela: Utilização de Veículos (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Pesquisa (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Consultas | Utilização
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Utilização

Quando visualizar a tela: Utilização de Veículos (Consulta)
  resource_cnsUtilizacaoVeiculos.Acessar Tela Utilização de Veículos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Pesquisa (Filtro)
  resource_cnsUtilizacaoVeiculos.Acessar Tela Pesquisa