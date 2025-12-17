*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsUtilizacaoVeiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Utilização de Veículos (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Utilização de Veículos (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Consultas | Utilização
  Então devo visualizar a tela: Utilização de Veículos (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Consultas | Utilização
  resource_mnu.Clicar No Menu Veículos | Frota | Consultas | Utilização

Então devo visualizar a tela: Utilização de Veículos (Consulta)
  resource_cnsUtilizacaoVeiculos.Acessar Tela Utilização de Veículos
