*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoRefei.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Tipo de Refeição (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Tipo de Refeição (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Tipo de Refeição
  Então devo visualizar a tela: Tipo de Refeição (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Configuração | Tipo de Refeição
  resource_mnu.Clicar No Menu Configurações | Cadastro de Tipo de Refeição

Então devo visualizar a tela: Tipo de Refeição (Consulta)
  resource_cnsTipoRefei.Acessar Tela Consulta de Tipo de Refeição
