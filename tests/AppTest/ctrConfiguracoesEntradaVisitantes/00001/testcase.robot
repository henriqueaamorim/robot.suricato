*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesEntradaVisitantes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Configurações - Entrada de Visitantes
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Entrada de Visitantes
  Então devo visualizar a tela: Configurações - Entrada de Visitantes

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Entrada de Visitantes
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Entrada de Visitantes

Então devo visualizar a tela: Configurações - Entrada de Visitantes
  resource_ctrConfiguracoesEntradaVisitantes.Acessar Tela Configurações - Entrada de Visitantes
