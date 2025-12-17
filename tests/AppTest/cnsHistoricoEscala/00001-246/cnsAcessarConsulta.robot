*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEscala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Escala (Consulta)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Escala (Consulta)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  Então devo visualizar a tela: Histórico de Escala (Consulta)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Escala

Então devo visualizar a tela: Histórico de Escala (Consulta)
  resource_cnsHistoricoEscala.Acessar Tela Consulta de Histórico de Escalas
