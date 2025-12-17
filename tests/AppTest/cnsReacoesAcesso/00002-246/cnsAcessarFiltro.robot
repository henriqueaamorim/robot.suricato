*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReacoesAcesso.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Reação de Acesso (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Reação de Acesso (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  Quando ver a tela: Reação de Acesso (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo ver a tela: Reação de Acesso (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Acesso

Quando ver a tela: Reação de Acesso (Consulta)
  resource_cnsReacoesAcesso.Acessar Tela Consulta de Reações de Acesso

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo ver a tela: Reação de Acesso (Filtro)
  resource_cnsReacoesAcesso.Acessar Tela Filtro de Reações de Acesso