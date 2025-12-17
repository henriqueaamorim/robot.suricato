
*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessaMarcacaoOrfa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}  Acessar Tela: Reprocessamento de Marcações Orfãs REP

*** Test Cases ***
Testcase: Acessar Tela: Reprocessamento de Marcações Orfãs REP
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  Então devo visualizar a tela: Reprocessamento de Marcações Orfãs REP (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP

Então devo visualizar a tela: Reprocessamento de Marcações Orfãs REP (Filtro)
  resource_consReprocessaMarcacaoOrfa.Acessar Tela Reprocessamento de Marcações Orfãs REP
