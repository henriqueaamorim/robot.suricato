*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfConex.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Configuração Conex


*** Test Cases ***
Testcase:  Acessar Tela: Configuração Conex
  [Tags]  PRINT  POPULATED   246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configuração | Equipamento | Conex
  Então devo ver a tela: Configuração Conex


*** Keywords ***
Dado que eu acesse o menu: Configuração | Equipamento | Conex
  resource_mnu.Clicar No Menu Configuração | Equipamento | Conex

Então devo ver a tela: Configuração Conex
  resource_ctrConfConex.Acessar Tela: Configuração Conex  