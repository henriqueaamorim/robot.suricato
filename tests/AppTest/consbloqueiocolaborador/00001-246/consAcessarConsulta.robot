*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbloqueiocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Bloqueio de Colaborador (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Bloqueio de Colaborador (Consulta)
  [Tags]  PRINT  POPULATED  246  247
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  Então devo visualizar a tela: Bloqueio de Colaborador (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio
  resource_mnu.Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

Então devo visualizar a tela: Bloqueio de Colaborador (Consulta)
  resource_consbloqueiocolaborador.Acessar Tela Consulta de Bloqueio de Colaborador
