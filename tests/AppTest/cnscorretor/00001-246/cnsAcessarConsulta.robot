*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcorretor.robot
Resource        ../../../../resource/app/resource_cnscorretor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Corretor (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Corretor (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Seguros | Corretores
  Então devo visualizar a tela: Corretor (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Seguros | Corretores
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Corretores

Então devo visualizar a tela: Corretor (Consulta)
  resource_cnscorretor.Acessar Tela Consulta Corretor
