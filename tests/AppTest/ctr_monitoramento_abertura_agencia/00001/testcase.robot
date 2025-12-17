*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_abertura_agencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Solicitações de Abertura de Agência
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Entrada de Agencias
  Então devo visualizar a tela: Solicitações de Abertura de Agência

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Entrada de Agencias
  resource_mnu.Clicar No Menu Controle | Monitoramento | Entrada de Agencias

Então devo visualizar a tela: Solicitações de Abertura de Agência
  resource_ctr_monitoramento_abertura_agencia.Acessar Tela Solicitações de Abertura de Agência
