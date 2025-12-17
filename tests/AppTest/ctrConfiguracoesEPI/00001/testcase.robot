*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Configurações de EPI
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações de EPI
  Então devo visualizar a tela: Configurações de EPI

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações de EPI
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações de EPI

Então devo visualizar a tela: Configurações de EPI
  resource_ctrConfiguracoesEPI.Acessar Tela Configurações de EPI
