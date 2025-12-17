*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoAfastamento.robot
Resource        ../../../../resource/app/resource_cnsHistoricoAfastamento.robot
Resource        ../../../../resource/app/resource_cnsSituacoesAfastamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Situações (Busca Externa) através da tela Consulta Histórico de Afastamento (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  Quando eu visualizar a tela: Consulta Histórico de Afastamento
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Histórico de Afastamento (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Situação
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Situações (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Afastamento
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Afastamento

Quando eu visualizar a tela: Consulta Histórico de Afastamento
  resource_cnsHistoricoAfastamento.Acessar Tela Consulta Histórico de Afastamento

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Histórico de Afastamento (Inclusão)
  resource_frmHistoricoAfastamento.Acessar Tela Histórico de Afastamento (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Situação
  resource_frmHistoricoAfastamento.Clicar No Botão Buscar Dados Externos Para Situação

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Situações (Busca Externa)
  resource_cnsSituacoesAfastamento.Acessar Tela Consulta de Situações (Busca Externa)
