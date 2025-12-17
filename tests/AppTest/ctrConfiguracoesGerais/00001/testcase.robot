*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesGerais.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Matrícula Automática
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Matrícula Automática
  Então devo visualizar a tela: Matrícula Automática

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Matrícula Automática
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Matrícula Automática

Então devo visualizar a tela: Matrícula Automática
  resource_ctrConfiguracoesGerais.Acessar Tela Matrícula Automática
