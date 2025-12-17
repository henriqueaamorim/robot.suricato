*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivobloqueio.robot
Resource        ../../../../resource/app/resource_cnsMotivoBloqueioPesquisacad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Motivo de Bloqueio (Consulta)


*** Test Cases ***
Testcase: Acessar Tela: Motivo de Bloqueio (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  Então devo visualizar a tela: Motivo de Bloqueio (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio

Então devo visualizar a tela: Motivo de Bloqueio (Consulta)
  resource_cnsMotivoBloqueioPesquisacad.Acessar Tela: Motivo de Bloqueio (Consulta)
