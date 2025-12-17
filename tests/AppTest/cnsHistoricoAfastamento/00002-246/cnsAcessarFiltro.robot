*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoAfastamento.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}   Acessar Tela: Histórico de Afastamento (Filtro)

*** Test Cases ***
Testcase: Acessar Tela: Histórico de Afastamento (Filtro)
  [Tags]  PRINT  POPULATED  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  Quando visualizar a tela: Histórico de Afastamento (Consulta)
  E clicar no botão: Pesquisar registro
  Então devo visualizar a tela: Histórico de Afastamento (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Afastamento

Quando visualizar a tela: Histórico de Afastamento (Consulta)
  resource_cnsHistoricoAfastamento.Acessar Tela Consulta Histórico de Afastamento

E clicar no botão: Pesquisar registro
  resource_btn.Clicar no botão Pesquisar Registros
  
Então devo visualizar a tela: Histórico de Afastamento (Filtro)
  resource_cnsHistoricoAfastamento.Acessar Tela Filtro Histórico de Afastamento