*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCentroCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na tela: Histórico de Centro de Custo (Consulta)
${SCREENNAME}  Histórico de Centro de Custo
${APPNAME}     cnsHistoricoCentroCusto

*** Test Cases ***
Testcase: Verificar todas as labels na tela: Histórico de Centro de Custo (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  Quando visualizar a tela: Histórico de Centro de Custo (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Alteração
  E verificar a label: Centro de Custo
  E verificar se existe o campo Teste na tela  

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Centro de Custo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo

Quando visualizar a tela: Histórico de Centro de Custo (Consulta)
  resource_cnsHistoricoCentroCusto.Acessar Tela Consulta de Histórico de Centro de Custo

Então devo verificar a label: Empresa
    resource_cnsHistoricoCentroCusto.Verificar a label Empresa

E verificar a label: Tipo
    resource_cnsHistoricoCentroCusto.Verificar a label Tipo

E verificar a label: Matrícula
    resource_cnsHistoricoCentroCusto.Verificar a label Matrícula

E verificar a label: Nome
    resource_cnsHistoricoCentroCusto.Verificar a label Nome

E verificar a label: Alteração
    resource_cnsHistoricoCentroCusto.Verificar a label Alteração

E verificar a label: Centro de Custo
    resource_cnsHistoricoCentroCusto.Verificar a label Centro de Custo

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"