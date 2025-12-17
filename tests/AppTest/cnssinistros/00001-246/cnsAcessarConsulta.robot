*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsinistros.robot
Resource        ../../../../resource/app/resource_cnssinistros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Sinistro (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Sinistro (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Sinistros
  Então devo visualizar a tela: Sinistro (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Veículo | Frota | Ocorrências | Sinistros
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Sinistros

Então devo visualizar a tela: Sinistro (Consulta)
  resource_cnssinistros.Acessar Tela Consulta de Sinistros
