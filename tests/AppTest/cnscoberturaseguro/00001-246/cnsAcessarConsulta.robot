*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcoberturaseguro.robot
Resource        ../../../../resource/app/resource_cnscoberturaseguro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Cobertura de Seguros - Modo Busca (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Cobertura de Seguros - Modo Busca (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Seguros | Cobertura
  Então devo visualizar a tela: Cobertura de Seguros - Modo Busca (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Seguros | Cobertura
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cobertura

Então devo visualizar a tela: Cobertura de Seguros - Modo Busca (Consulta)
  resource_cnscoberturaseguro.Acessar Tela Consulta Cobertura de Seguros - Modo Busca
