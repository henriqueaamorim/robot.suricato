*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmservicftv.robot
Resource        ../../../../resource/app/resource_cnsservicftv.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Servidor CFTV - Modo Busca
  [Tags]  PRINT  POPULATED  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | CFTV
  Quando eu visualizar a tela: Servidor CFTV (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Servidor CFTV - Modo Busca

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | CFTV
  resource_mnu.Clicar No Menu Dispositivo | CFTV

Quando eu visualizar a tela: Servidor CFTV (Atualização)
  resource_frmservicftv.Acessar Tela Servidor CFTV (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Servidor CFTV - Modo Busca
  resource_cnsservicftv.Acessar Tela Consulta Servidor CFTV - Modo Busca
