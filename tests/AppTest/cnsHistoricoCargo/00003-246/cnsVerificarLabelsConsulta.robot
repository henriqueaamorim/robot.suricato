*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verifiar todas as labels na tela: Histórico de Cargo (Consulta)
${SCREENNAME}  Cargo
${APPNAME}     cnsHistoricoCargo

*** Test Cases ***
Testcase: Verifiar todas as labels na tela: Histórico de Cargo (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  Quando visualizar a tela: Histórico de Cargo (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Alteração
  E verificar a label: Grupo de Cargo
  E verificar a label: Cargo
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Cargo

Quando visualizar a tela: Histórico de Cargo (Consulta)
  resource_cnsHistoricoCargo.Acessar Tela Consulta de Histórico de Cargos

Então devo verificar a label: Empresa
    resource_cnsHistoricoCargo.Verificar a label Empresa
  
E verificar a label: Tipo
    resource_cnsHistoricoCargo.Verificar a label Tipo

E verificar a label: Matrícula
    resource_cnsHistoricoCargo.Verificar a label Matrícula

E verificar a label: Nome
    resource_cnsHistoricoCargo.Verificar a label Nome

E verificar a label: Alteração
    resource_cnsHistoricoCargo.Verificar a label Alteração

E verificar a label: Grupo de Cargo
    resource_cnsHistoricoCargo.Verificar a label Grupo de Cargo

E verificar a label: Cargo
    resource_cnsHistoricoCargo.Verificar a label Cargo

E verificar se existe o campo Teste na tela
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"