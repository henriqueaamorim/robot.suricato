*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsModeloColetores.robot
Resource        ../../../../resource/app/resource_frmColetores.robot
Resource        ../../../../resource/app/resource_cnsColetorescad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Modelo de Equipamento (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Modelo de Equipamento (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Codin | Modelo de Equipamento
  Então devo vizualizar a tela: Modelo de Equipamento (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Codin | Modelo de Equipamento
  resource_mnu.Clicar no menu Dispositivo | Codin | Modelo de Equipamento

Então devo vizualizar a tela: Modelo de Equipamento (Consulta)
  resource_cnsModeloColetores.Acessar Tela Consulta de Modelo de Equipamento
