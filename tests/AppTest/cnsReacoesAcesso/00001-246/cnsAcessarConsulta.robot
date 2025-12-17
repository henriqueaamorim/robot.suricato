*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReacoesAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Reação de Acesso (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Reação de Acesso (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  Então devo ver a tela: Reação de Acesso (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Acesso

Então devo ver a tela: Reação de Acesso (Consulta)
  resource_cnsReacoesAcesso.Acessar Tela Consulta de Reações de Acesso
