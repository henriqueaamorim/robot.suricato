*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCentroCusto.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todos os capos na tela: Histórico de Centro de Custo (Filtro)
${SCREENNAME}  Histórico de Centro de Custo
${APPNAME}     cnsHistoricoCentroCusto
*** Test Cases ***

Testcase: Verificar todos os campos na tela: Histórico de Centro de Custo (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  Quando visualizar a tela: Histórico de Centro de Custo (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Histórico de Centro de Custo (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: Alteração
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo

Quando visualizar a tela: Histórico de Centro de Custo (Consulta)
  resource_cnsHistoricoCentroCusto.Acessar Tela Consulta de Histórico de Centro de Custo

E clicar no botão: Pesquisar registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Centro de Custo (Filtro)
    resource_cnsHistoricoCentroCusto.Acessar Tela Filtro de Histórico de Centro de Custo

E verificar a label: Pesquisa
    resource_cnsHistoricoCentroCusto.Verificar a label Pesquisa

E verificar o campo: Empresa
    resource_cnsHistoricoCentroCusto.Verificar o campo Empresa

E verificar o campo: Tipo
    resource_cnsHistoricoCentroCusto.Verificar o campo Tipo

E verificar o campo: Matrícula
    resource_cnsHistoricoCentroCusto.Verificar o campo Matrícula

E verificar o campo: Nome
    resource_cnsHistoricoCentroCusto.Verificar o campo Nome

E verificar o campo: Alteração
    resource_cnsHistoricoCentroCusto.Verificar o campo Alteração

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"