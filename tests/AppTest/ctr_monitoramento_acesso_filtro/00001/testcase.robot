*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_acesso.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_acesso_filtro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Monitoramento Acesso - Grid - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  Ao visualizar a tela: Monitoramento Acesso - Grid
  E clicar no botão: Filtro
  Então devo visualizar a tela: Monitoramento Acesso - Grid - Filtro

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Acesso - Grid
  resource_mnu.Clicar No Menu Controle | Monitoramento | Acesso - Grid

Ao visualizar a tela: Monitoramento Acesso - Grid
  resource_ctr_monitoramento_acesso.Acessar Tela Monitoramento Acesso - Grid

E clicar no botão: Filtro
  resource_btn.Clicar No Botão Filtro

Então devo visualizar a tela: Monitoramento Acesso - Grid - Filtro
  resource_ctr_monitoramento_acesso_filtro.Acessar Tela Monitoramento Acesso - Grid - Filtro
