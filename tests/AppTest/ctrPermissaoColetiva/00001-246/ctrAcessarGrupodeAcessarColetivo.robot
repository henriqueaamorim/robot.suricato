*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrPermissaoColetiva.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Testcase: Acessar Tela: Grupo de Acesso Coletivo
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Grupo de Acesso Coletivo
  Então devo visualizar a tela: Grupo de Acesso Coletivo

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Grupo de Acesso Coletivo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Grupo de Acesso Coletivo

Então devo visualizar a tela: Grupo de Acesso Coletivo
  resource_ctrPermissaoColetiva.Acessar Tela Grupo de Acesso Coletivo
