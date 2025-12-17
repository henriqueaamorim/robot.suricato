*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoContratos.robot
Resource        ../../../../resource/app/resource_frmHistoricoContratos.robot
Resource    ../../../../resource/app/resource_cnsRelatorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todos os campos na Tela: Histórico de Contrato (Filtro)
${SCREENNAME}   Histórico de Contrato
${APPNAME}      cnsHistoricoContratos

*** Test Cases ***

Testcase: Verificar todos os campos na Tela: Histórico de Contrato (Filtro)
  [Tags]  VERIFY  246  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  Então devo visualizar a tela: Histórico de Contrato (Consulta)
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Histórico de Contrato (Filtro)
  E verificar a label: Pesquisar 
  E verificar o campo: Empresa
  E verificar o campo: Tipo
  E verificar o campo: Matrícula
  E verificar o campo: Nome
  E verificar o campo: Alteração
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Contrato

Então devo visualizar a tela: Histórico de Contrato (Consulta)
  resource_cnsHistoricoContratos.Acessar Tela Consulta de Histórico de Contratos

E clicar no botão: Pesquisar Registros
    resource_btn.Clicar no botão Pesquisar Registros

Então devo visualizar a tela: Histórico de Contrato (Filtro)
    resource_cnsHistoricoContratos.Acessar Tela Filtro de Histórico de Contratos

E verificar a label: Pesquisar 
    resource_cnsHistoricoContratos.Verificar a label Pesquisar

E verificar o campo: Empresa
    resource_cnsHistoricoContratos.Verificar o campo Empresa

E verificar o campo: Tipo
    resource_cnsHistoricoContratos.Verificar o campo Tipo

E verificar o campo: Matrícula
    resource_cnsHistoricoContratos.Verificar o campo Matrícula

E verificar o campo: Nome
    resource_cnsHistoricoContratos.Verificar o campo Nome

E verificar o campo: Alteração
    resource_cnsHistoricoContratos.Verificar o campo Alteração

E verificar se existe o campo Teste na tela    
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"