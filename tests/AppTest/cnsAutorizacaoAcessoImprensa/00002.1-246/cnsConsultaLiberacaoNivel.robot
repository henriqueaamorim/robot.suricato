*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoAcessoImprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Consulta de Histórico de Liberação de Nível

*** Test Cases ***
Testcase: Acessar Tela: Consulta de Histórico de Liberação de Nível
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Liberação de Nível
  Então devo visualizar a tela: Consulta de Histórico de Liberação de Nível

*** Keywords ***
Dado que eu acesse o menu: Registro | Liberação de Nível
  resource_mnu.Clicar No Menu Registro | Liberação de Nível

Então devo visualizar a tela: Consulta de Histórico de Liberação de Nível
  resource_cnsAutorizacaoAcessoImprensa.Acessar Tela: Consulta de Histórico de Liberação de Nível

