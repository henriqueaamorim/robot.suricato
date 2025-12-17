*** Settings ***
Resource        ../../../../../resource/resource_login.robot
Resource        ../../../../../resource/app/resource_conscolaboradores.robot
Resource        ../../../../../resource/app/resource_ctrConfiguracoesTOTVS.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Empregado (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Empregado (Consulta)
  [Tags]  PRINT  POPULATED  246  247  
  [Documentation]   ${OBJETIVO}
  
  Dado que o usuário acesse o Menu Configurações | Configurações Gerais | Integração TOTVS
  #E acessar Tela Configurações Integração TOTVS
  E Selecionar a opção Integração TOTVS 


*** Keywords ***
Dado que o usuário acesse o Menu Configurações | Configurações Gerais | Integração TOTVS
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Integração TOTVS

#E acessar Tela Configurações Integração TOTVS
  #resource_ctrConfiguracoesTOTVS.Acessar Tela Configurações Integração TOTVS

E Selecionar a opção Integração TOTVS   
  resource_ctrConfiguracoesTOTVS.Selecionar a opção Integração TOTVS 