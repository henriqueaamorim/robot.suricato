*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesTOTVS.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar a aplicação ctrConfiguracoesTOTVS e verificar se o campo Controle Refeição Mandatorio não existe mais

*** Test Cases ***

Testcase: Acessar Tela Configurações Integração TOTVS
  [Tags]  PRINT  ISSUES
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Integração TOTVS
  Então devo visualizar a tela: Configurações Integração TOTVS
  
*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Integração TOTVS
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Integração TOTVS

Então devo visualizar a tela: Configurações Integração TOTVS
  resource_ctrConfiguracoesTOTVS.Acessar Tela Configurações Integração TOTVS
