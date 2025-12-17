*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsHistoricoContratos.robot
Resource        ../../../../resource/app/resource_frmHistoricoContratos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}     Verificar todas as labels na Tela: Histórico de Contrato (Consulta)
${SCREENNAME}   Histórico de Contrato
${APPNAME}     cnsHistoricoContratos

*** Test Cases ***

Testcase: Verificar todas as labels na Tela: Histórico de Contrato (Consulta)
  [Tags]   VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  Quando visualizar a tela: Histórico de Contrato (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Alteração
  E verificar a label: Término
  E verificar a label: Contrato
  E verificar a label: Empresa Terceira
  E verificar se existe o campo Teste na tela

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Contrato
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Contrato

Quando visualizar a tela: Histórico de Contrato (Consulta)
  resource_cnsHistoricoContratos.Acessar Tela Consulta de Histórico de Contratos

Então devo verificar a label: Empresa
    resource_cnsHistoricoContratos.Verificar a label Empresa

E verificar a label: Tipo
    resource_cnsHistoricoContratos.Verificar a label Tipo

E verificar a label: Matrícula
    resource_cnsHistoricoContratos.Verificar a label Matrícula

E verificar a label: Nome
    resource_cnsHistoricoContratos.Verificar a label Nome

E verificar a label: Alteração
    resource_cnsHistoricoContratos.Verificar a label Alteração

E verificar a label: Término
    resource_cnsHistoricoContratos.Verificar a label Término

E verificar a label: Contrato
    resource_cnsHistoricoContratos.Verificar a label Contrato

E verificar a label: Empresa Terceira
    resource_cnsHistoricoContratos.Verificar a label Empresa Terceira

E verificar se existe o campo Teste na tela  
    resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"