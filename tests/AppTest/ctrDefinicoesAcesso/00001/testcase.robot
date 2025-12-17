*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrDefinicoesAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Definições de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Crachá
  Então devo visualizar a tela: Definições de Acesso

*** Keywords ***
Dado que eu acesse o menu: Configurações | Crachá
  resource_mnu.Clicar No Menu Configurações | Crachá

Então devo visualizar a tela: Definições de Acesso
  resource_ctrDefinicoesAcesso.Acessar Tela Definições de Acesso
