*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoLocal.robot
Resource        ../../../../resource/app/resource_cnsHistoricoLocal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Local (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Local (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  Então devo visualizar a tela: Histórico de Local (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

Então devo visualizar a tela: Histórico de Local (Consulta)
  resource_cnsHistoricoLocal.Acessar Tela Consulta de Histórico de Local
