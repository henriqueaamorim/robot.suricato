*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoLocal.robot
Resource        ../../../../resource/app/resource_cnsHistoricoLocal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***
${OBJETIVO}    Verificar todas as labels na Tela: Histórico de Local (Consulta)
${SCREENNAME}  Local
${APPNAME}     cnsHistoricoLocal


*** Test Cases ***
Testcase: Verificar todas as labels na Tela: Histórico de Local (Consulta)
  [Tags]  VERIFY  246  247  248  249
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  Quando visualizar a tela: Histórico de Local (Consulta)
  Então devo verificar a label: Empresa
  E verificar a label: Tipo do Colaborador
  E verificar a label: Matrícula
  E verificar a label: Nome
  E verificar a label: Alteração
  E verificar a label: Organograma
  E verificar a label: Local
  E verificar se existe o campo Teste na tela


*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Local
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Local

Quando visualizar a tela: Histórico de Local (Consulta)
  resource_cnsHistoricoLocal.Acessar Tela Consulta de Histórico de Local

Então devo verificar a label: Empresa
  resource_cnsHistoricoLocal.Verificar a label Empresa

E verificar a label: Tipo do Colaborador
  resource_cnsHistoricoLocal.Verificar a label Tipo do Colaborador

E verificar a label: Matrícula
  resource_cnsHistoricoLocal.Verificar a label Matrícula

E verificar a label: Nome
  resource_cnsHistoricoLocal.Verificar a label Nome

E verificar a label: Alteração
  resource_cnsHistoricoLocal.Verificar a label Alteração

E verificar a label: Organograma
  resource_cnsHistoricoLocal.Verificar a label Organograma

E verificar a label: Local
  resource_cnsHistoricoLocal.Verificar a label Local

E verificar se existe o campo Teste na tela  
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"