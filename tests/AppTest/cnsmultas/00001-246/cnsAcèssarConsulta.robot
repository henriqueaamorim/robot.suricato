*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmultas.robot
Resource        ../../../../resource/app/resource_cnsmultas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Multa (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Multa (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Multas
  Então devo visualizar a tela: Multa (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Infrações | Multas
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas

Então devo visualizar a tela: Multa (Consulta)
  resource_cnsmultas.Acessar Tela Consulta de Multas
