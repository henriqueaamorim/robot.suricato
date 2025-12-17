*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmservicftv.robot
Resource        ../../../../resource/app/resource_cnsservicftv.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Servidor CFTV - Modo Busca

*** Test Cases ***
Testcase: Acessar Tela: Servidor CFTV - Modo Busca
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | CFTV
  Então devo visualizar a tela: Servidor CFTV - Modo Busca (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | CFTV
  resource_mnu.Clicar No Menu Dispositivo | CFTV

Então devo visualizar a tela: Servidor CFTV - Modo Busca (Consulta)
  resource_cnsservicftv.Acessar Tela Consulta Servidor CFTV - Modo Busca
