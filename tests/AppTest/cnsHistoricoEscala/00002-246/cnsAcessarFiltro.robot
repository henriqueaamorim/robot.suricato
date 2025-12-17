*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEscala.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Escala (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Escala (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  Quando visualizar a tela: Histórico de Escala (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Histórico de Escala (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Escala
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Escala

Quando visualizar a tela: Histórico de Escala (Consulta)
  resource_cnsHistoricoEscala.Acessar Tela Consulta de Histórico de Escalas

E clicar no botão: Pesquisar registro
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Escala (Filtro)
    resource_cnsHistoricoEscala.Acessar Tela Filtro de Histórico de Escalas  