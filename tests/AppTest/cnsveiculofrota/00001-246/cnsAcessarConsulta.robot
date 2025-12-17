*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculofrota.robot
Resource        ../../../../resource/app/resource_cnsveiculofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Veículos Frota (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Veículos Frota (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Veículos
  Então devo visualizar a tela: Veículos Frota (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Veículos
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Veículos

Então devo visualizar a tela: Veículos Frota (Consulta)
  resource_cnsveiculofrota.Acessar Tela Consulta Veículos Frota
