*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesTOTVS.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Acessar a aplicação ctrConfiguracoesTOTVS e verificar se o campo Tipo Controle Refeição está guardando as informações setadas

*** Test Cases ***

Testcase: Acessar Tela Configurações Integração TOTVS
  [Tags]  PRINT  ISSUES  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Integração TOTVS
  Então devo visualizar a tela: Configurações Integração TOTVS
  E Selecionar o Campo Tipo de Controle de Refeição "Por Faixa"
  E Clicar No Botão: Salvar (Inferior)
  Então devo visualizar a tela: Configurações Integração TOTVS Com O Tipo de Controle de Refeição Salvo
  
*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Integração TOTVS
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Integração TOTVS

Então devo visualizar a tela: Configurações Integração TOTVS
  resource_ctrConfiguracoesTOTVS.Acessar Tela Configurações Integração TOTVS

E Selecionar o Campo Tipo de Controle de Refeição "${REFEICAO}"
  resource_ctrConfiguracoesTOTVS.Selecionar o Campo Tipo de Controle de Refeição "${REFEICAO}"

E Clicar No Botão: Salvar (Inferior)
  resource_btn.Clicar No Botão Salvar (Inferior)

Então devo visualizar a tela: Configurações Integração TOTVS Com O Tipo de Controle de Refeição Salvo
  resource_ctrConfiguracoesTOTVS.Acessar Tela Configurações Integração TOTVS