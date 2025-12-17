*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoCargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verifiar todos os campos na tela: Histórico de Cargo (Filtro)
${SCREENNAME}  Cargo
${APPNAME}     cnsHistoricoCargo

*** Test Cases ***
Testcase: Verifiar todos os campos na tela: Histórico de Cargo (Filtro)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  Quando visualizar a tela: Histórico de Cargo (Consulta)
  E clicar no botão: Pesquisar registros
  Então devo visualizar a tela: Histórico de Cargo (Filtro)
  E verificar a label: Pesquisa
  E verificar o campo: Empresa
  E verificar o campo: Tipo
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: Alteração	
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Cargo
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Cargo

Quando visualizar a tela: Histórico de Cargo (Consulta)
  resource_cnsHistoricoCargo.Acessar Tela Consulta de Histórico de Cargos

E clicar no botão: Pesquisar registros
  resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Cargo (Filtro)
  resource_cnsHistoricoCargo.Acessar Tela Filtro de Histórico de Cargos

E verificar a label: Pesquisa
    resource_cnsHistoricoCargo.Verificar a label Pesquisa
  
E verificar o campo: Empresa
    resource_cnsHistoricoCargo.Verificar o campo Empresa
  
E verificar o campo: Tipo
    resource_cnsHistoricoCargo.Verificar o campo Tipo
  
E verificar o campo: Matrícula
    resource_cnsHistoricoCargo.Verificar o campo Matrícula
  
E verificar o campo: Nome
    resource_cnsHistoricoCargo.Verificar o campo Nome
  
E verificar o campo: Alteração	
    resource_cnsHistoricoCargo.Verificar o campo Alteração
  
E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"