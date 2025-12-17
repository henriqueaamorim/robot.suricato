*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnssaidasemretorno.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Devolução de Veículo (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Devolução de Veículo (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Devolução
  Então devo visualizar a tela: Devolução de Veículo (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Utilização Veículos | Devolução
  resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Devolução

Então devo visualizar a tela: Devolução de Veículo (Consulta)
  resource_cnssaidasemretorno.Acessar Tela Devolução de Veículo
