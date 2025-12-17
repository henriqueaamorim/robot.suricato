*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessamentoPlayerBiometria.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Envio individual de comandos (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Envio individual de comandos (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Controle | Comando | Envio Individual de Comandos Player
  Ao visualizar a tela: Envio individual de comandos (Filtro)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Envio individual de comandos (Consulta)
*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Envio Individual de Comandos Player
  resource_mnu.Clicar No Menu Controle | Comando | Envio Individual de Comandos Player

Ao visualizar a tela: Envio individual de comandos (Filtro)
  resource_consReprocessamentoPlayerBiometria.Acessar Tela Envio individual de comandos

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Envio individual de comandos (Consulta)
  resource_consReprocessamentoPlayerBiometria.Acessar Tela Envio individual de comandos (Resultado)
