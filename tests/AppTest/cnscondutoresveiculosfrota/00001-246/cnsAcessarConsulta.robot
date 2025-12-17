*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcondutoresveiculosfrota.robot
Resource        ../../../../resource/app/resource_cnscondutoresveiculosfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Condutores de Veículos de Frota (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Condutores de Veículos de Frota (Consulta)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Empresa | Condutores
  Então devo visualizar a tela: Condutores de Veículos de Frota (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Empresa | Condutores
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Condutores

Então devo visualizar a tela: Condutores de Veículos de Frota (Consulta)
  resource_cnscondutoresveiculosfrota.Acessar Tela Consulta Condutores de Veículos de Frota
